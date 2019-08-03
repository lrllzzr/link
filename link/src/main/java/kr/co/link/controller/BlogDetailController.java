package kr.co.link.controller;

import java.awt.Color;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.codec.language.bm.Rule.RPattern;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Required;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import kr.co.link.form.BlogBoardForm;
import kr.co.link.form.BlogForm;
import kr.co.link.service.BlogBoardService;
import kr.co.link.service.BlogCategoryService;
import kr.co.link.service.BlogService;
import kr.co.link.service.BlogSubCategoryService;
import kr.co.link.service.UserService;
import kr.co.link.vo.Blog;
import kr.co.link.vo.BlogBoard;
import kr.co.link.vo.BlogCategory;
import kr.co.link.vo.BlogSubCategory;
import kr.co.link.vo.User;

@Controller
@RequestMapping("/blog")
public class BlogDetailController {
	@Autowired
	private BlogService blogService;
	@Autowired
	private BlogSubCategoryService blogSubCategoryService;
	@Autowired
	private BlogCategoryService blogCategoryService;
	@Autowired
	private BlogBoardService blogBoardService;
	@Autowired
	private UserService userService;

	public List<BlogSubCategory> getBlogSubCategories(HttpSession session, Integer blogNo, Model model, Integer categoryNo) {
		Blog blog = blogService.getBlogByBlogNo(blogNo);
		// 배경색상 투명도 바꾸기
		String blogColor = blog.getBackgroundColor();
		Color color = Color.decode(blogColor);
		
		String r = Integer.toString(color.getRed());
		String g = Integer.toString(color.getGreen());
		String b = Integer.toString(color.getBlue());
		String rgb = r + "," + g + "," + b;
		blog.setBackgroundColor(rgb);

		// 블로그 주인 아이디
		String userId = blog.getUserId();
		// 블로그 주인 유저 찾기
		User user = userService.getUserById(userId);
		User loginUser = (User) session.getAttribute("LOGIN_USER");

		List<BlogSubCategory> blogSubCategories = blogSubCategoryService.getBlogSubCategoriesByuserId(userId);
		model.addAttribute("user", user);
		model.addAttribute("blog", blog);
		if (categoryNo == null) {
			
			BlogSubCategory blogSubCategory = blogSubCategoryService.getOneSubCategoryByBlogNo(blogNo);
			int subCatNo = blogSubCategory.getNo();
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("subCatNo", subCatNo);
			map.put("blogNo", blogNo);
			BlogCategory blogCategory = blogCategoryService.getOneCategoryByOrder(map);
			
			model.addAttribute("category", blogCategory);
			if(blogCategory !=null) {
				List<BlogBoard> blogBoards = blogBoardService.getBoardByCategory(blogCategory.getNo());
				model.addAttribute("blogBoards", blogBoards);
				int blogCount = blogBoardService.countBoardsByCategoryId(blogCategory.getNo());
				model.addAttribute("blogCount", blogCount);
			}
		} else {
			BlogCategory blogCategory = blogCategoryService.getCategoryByCategoryNo(categoryNo);
			model.addAttribute("category", blogCategory);
			List<BlogBoard> blogBoards = blogBoardService.getBoardByCategory(blogCategory.getNo());
			model.addAttribute("blogBoards", blogBoards);
			int blogCount = blogBoardService.countBoardsByCategoryId(categoryNo);
			model.addAttribute("blogCount", blogCount);
		}
		if (loginUser != null && blog.getUserId().equals(loginUser.getId())) {
			model.addAttribute("isMyBlog", "mine");
		} else {
			model.addAttribute("isMyBlog", "others");
		}
		return blogSubCategories;
	}

	@RequestMapping("/main.do")
	public String main(Model model, HttpSession session) {
		User user = (User) session.getAttribute("LOGIN_USER");
		List<Blog> blogs = blogService.get3BlogByVisits();
		if (user != null) {
			Blog blog = blogService.getBlogByUserId(user.getId());
			if (blog == null) {
				model.addAttribute("isHaveBlog", "no");
			} else {
				model.addAttribute("isHaveBlog", "yes");
			}
		}
		model.addAttribute("blogs", blogs);
		return "blog/main";
	}

	@RequestMapping("/detail.do")
	public String detail(Model model, HttpSession session, Integer blogNo, Integer categoryNo) {

		List<BlogSubCategory> blogSubCategories = getBlogSubCategories(session, blogNo, model, categoryNo);
		Blog blog = blogService.getBlogByBlogNo(blogNo);

		model.addAttribute("subCategories", blogSubCategories);
		if (blog.getLayout() == 1) {
			return "blog/detail/detail";
		}
		if (blog.getLayout() == 2) {
			return "blog/detail/detail2";
		}
		if (blog.getLayout() == 3) {
			return "blog/detail/detail3";
		} else {
			return "blog/detail/detail4";
		}
	}

	@RequestMapping("/board.do")
	public String board(Model model, HttpSession session, Integer boardNo, Integer blogNo, Integer categoryNo) {

		List<BlogSubCategory> blogSubCategories = getBlogSubCategories(session, blogNo, model, categoryNo);
		model.addAttribute("subCategories", blogSubCategories);
		Blog blog = blogService.getBlogByBlogNo(blogNo);
		BlogBoard board = blogBoardService.getBoardByboardNo(boardNo);
		model.addAttribute("board", board);

		if (blog.getLayout() == 1) {
			return "blog/detail/board";
		}
		if (blog.getLayout() == 2) {
			return "blog/detail/board2";
		}
		if (blog.getLayout() == 3) {
			return "blog/detail/board3";
		} else {
			return "blog/detail/board4";
		}

	}

	@RequestMapping(value = "/write.do", method = RequestMethod.GET)
	public String writePage(Model model, HttpSession session, Integer blogNo, Integer categoryNo) {

		List<BlogSubCategory> blogSubCategories = getBlogSubCategories(session, blogNo, model, categoryNo);
		model.addAttribute("subCategories", blogSubCategories);
		Blog blog = blogService.getBlogByBlogNo(blogNo);
		if (blog.getLayout() == 1) {
			return "blog/detail/write";
		}
		if (blog.getLayout() == 2) {
			return "blog/detail/write2";
		}
		if (blog.getLayout() == 3) {
			return "blog/detail/write3";
		} else {
			return "blog/detail/write4";
		}
	}

	@RequestMapping(value = "/write.do", method = RequestMethod.POST)
	public String writeMethod(Model model, HttpSession session, HttpServletRequest request, BlogBoardForm blogBoardForm, Integer blogNo, Integer categoryNo) throws IOException {

		BlogBoard blogBoard = new BlogBoard();
		BeanUtils.copyProperties(blogBoardForm, blogBoard);
		MultipartFile mf = blogBoardForm.getUpfile();
		String profileImageSaveDirectory = "C:/Users/BM/git/link/link/src/main/webapp/resources/images/userblogimgs";
		profileImageSaveDirectory = "C:/Users/BMAHN/git/link2/link/src/main/webapp/resources/images/userblogimgs";
		if (!mf.isEmpty()) {
			String filename = mf.getOriginalFilename();
			FileCopyUtils.copy(mf.getBytes(), new File(profileImageSaveDirectory, filename));
			blogBoard.setMainImg(filename);
		}
		blogBoardService.addBoard(blogBoard);
		return "redirect:detail.do?blogNo=" + blogNo + "&categoryNo=" + categoryNo;
	}

	@RequestMapping(value = "/makeblog.do", method = RequestMethod.GET)
	public String makeBlog() throws IOException {
		return "/blog/detail/makeblog";
	}

	@RequestMapping(value = "/makeblog.do", method = RequestMethod.POST)
	public String makeBlog(Model model, HttpSession session, BlogForm blogForm, String nickName) throws IOException {
		Blog blog = new Blog();
		User user = (User) session.getAttribute("LOGIN_USER");
		BeanUtils.copyProperties(blogForm, blog);
		MultipartFile mf = blogForm.getMainImg();
		String profileImageSaveDirectory = "C:/Users/BM/git/link/link/src/main/webapp/resources/images";
		String filename = "profile.jpg";

		if (!mf.isEmpty()) {
			filename = mf.getOriginalFilename();
			FileCopyUtils.copy(mf.getBytes(), new File(profileImageSaveDirectory, filename));
		}
		blogService.setBasicBlog(blog, user, filename);
		blogService.addNewBlog(blog);
		
		return "redirect:makeblog2.do";
	}
	
	@RequestMapping(value = "/makeblog2.do", method = RequestMethod.GET)
	public String makeBlog2(Model model, HttpSession session) throws IOException {
		User user = (User) session.getAttribute("LOGIN_USER");
		Blog blog = blogService.getBlogByUserId(user.getId());
		
		BlogSubCategory blogSubCategory = new BlogSubCategory();
		blogSubCategory.setBlogNo(blog.getNo());
		blogSubCategory.setTitle("상위 카테고리");
		blogSubCategoryService.addNewSubCategory(blogSubCategory);
		return "redirect:makeblog3.do";
	}
	
	@RequestMapping(value = "/makeblog3.do", method = RequestMethod.GET)
	public String makeBlog3(Model model, HttpSession session) throws IOException {
		User user = (User) session.getAttribute("LOGIN_USER");
		List<BlogSubCategory> blogSubCategories = blogSubCategoryService.getBlogSubCategoriesByuserId(user.getId());
		BlogSubCategory blogSubCategory = blogSubCategories.get(0);
		BlogCategory blogCategory = new BlogCategory();
		blogCategory.setSubCategoryNo(blogSubCategory.getNo());
		blogCategory.setTitle("카테고리");
		blogCategoryService.addNewCategory(blogCategory);
		user.setIsHaveBlog("Y");
		userService.updateUser(user);
		return "redirect:mydetail.do";
	}
}
