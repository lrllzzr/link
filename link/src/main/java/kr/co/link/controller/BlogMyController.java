package kr.co.link.controller;

import java.awt.Color;
import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import kr.co.link.form.BlogBoardForm;
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
public class BlogMyController {
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
	
	public List<BlogSubCategory> getBlogSubCategories(HttpSession session,Integer blogNo, Model model, Integer categoryNo) {
		Blog blog = blogService.getBlogByBlogNo(blogNo);
		String blogColor = blog.getBackgroundColor();
		Color color = Color.decode(blogColor);
		String r = Integer.toString(color.getRed());
		String g = Integer.toString(color.getGreen());
		String b = Integer.toString(color.getBlue());
		String rgb = r+","+g+","+b;
		blog.setBackgroundColor(rgb);
		// 블로그 주인 아이디
		String userId = blog.getUserId();
		// 블로그 주인 유저 찾기
		User user = userService.getUserById(userId);
		User loginUser = (User) session.getAttribute("LOGIN_USER");
		int blogCount = blogBoardService.countBoardsByCategoryId(categoryNo);
		model.addAttribute("blogCount",blogCount);
		
		List<BlogSubCategory> blogSubCategories = blogSubCategoryService.getBlogSubCategoriesByuserId(userId);
		model.addAttribute("user",user);
		
		model.addAttribute("blog",blog);
		if(categoryNo == 0) {
			BlogCategory blogCategory = blogCategoryService.getOneCategoryByOrder(blog.getNo());
			List<BlogBoard> blogBoards = blogBoardService.getBoardByCategory(blogCategory.getNo());
			model.addAttribute("category",blogCategory);
			model.addAttribute("blogBoards",blogBoards);
		} else {
			BlogCategory blogCategory = blogCategoryService.getCategoryByCategoryNo(categoryNo);
			model.addAttribute("category",blogCategory);
			List<BlogBoard> blogBoards = blogBoardService.getBoardByCategory(blogCategory.getNo());
			model.addAttribute("blogBoards",blogBoards);
		}
		if(blog.getUserId().equals(loginUser.getId())) {
			model.addAttribute("isMyBlog","mine");
		}
		else {
			model.addAttribute("isMyBlog","others");
		}
		return blogSubCategories;
	}
	
	@RequestMapping("/mydetail.do")
	public String detail(Model model, HttpSession session){
		User user = (User) session.getAttribute("LOGIN_USER");
		Blog blog = blogService.getBlogByUserId(user.getId());
		BlogCategory blogCategory = blogCategoryService.getOneCategoryByOrder(blog.getNo());
		
		Integer categoryNo = blogCategory.getNo();
		Integer blogNo = blog.getNo();
		List<BlogSubCategory> blogSubCategories = getBlogSubCategories(session, blogNo, model, categoryNo);
		model.addAttribute("subCategories",blogSubCategories);
		if(blog.getLayout() == 1) {
			return "blog/detail/detail";
		}
		if(blog.getLayout() ==2) {
			return "blog/detail/detail2";
		}
		if(blog.getLayout() ==3) {
			return "blog/detail/detail3";
		} else {
			return "blog/detail/detail4";
		}
	}
	
	@RequestMapping("/mydetail2.do")
	public String detail2(Model model, HttpSession session){
		User user = (User) session.getAttribute("LOGIN_USER");
		Blog blog = blogService.getBlogByUserId(user.getId());
		BlogCategory blogCategory = blogCategoryService.getOneCategoryByOrder(blog.getNo());
		Integer blogNo = blog.getNo();
		Integer categoryNo = blogCategory.getNo();
		List<BlogSubCategory> blogSubCategories = getBlogSubCategories(session, blogNo, model, categoryNo);
		model.addAttribute("subCategories",blogSubCategories);
		return "blog/detail/detail2";
	}
	
	@RequestMapping("/layoutDetail.do")
	public String layoutDetail1(Model model, HttpSession session, Integer layOutNo){
		User user = (User) session.getAttribute("LOGIN_USER");
		Blog blog = blogService.getBlogByUserId(user.getId());
		BlogCategory blogCategory = blogCategoryService.getOneCategoryByOrder(blog.getNo());
		Integer blogNo = blog.getNo();
		Integer categoryNo = blogCategory.getNo();
		List<BlogSubCategory> blogSubCategories = getBlogSubCategories(session, blogNo, model, categoryNo);
		model.addAttribute("subCategories",blogSubCategories);
		
//	레이아웃 초기 화면 미리보기 설정	
		if(session.getAttribute("firstCol") == null) {
			session.setAttribute("firstCol", blog.getFirstCol());
		}
		
		if(session.getAttribute("secondCol") == null) {
			session.setAttribute("secondCol", blog.getSecondCol());
		}
		
		if(session.getAttribute("thirdCol") == null) {
			session.setAttribute("thirdCol", blog.getThirdCol());
		}
//		레이아웃 초기 화면 미리보기 설정 끝
		
		String firstCol = (String) session.getAttribute("firstCol");
		String secondCol = (String) session.getAttribute("secondCol");
		String thirdCol = (String) session.getAttribute("thirdCol");
		
		model.addAttribute("firstCol",firstCol);
		model.addAttribute("secondCol",secondCol);
		model.addAttribute("thirdCol",thirdCol);
		
		session.removeAttribute("firstCol");
		session.removeAttribute("secondCol");
		session.removeAttribute("thirdCol");

		if(layOutNo == 1) {
			model.addAttribute("layout",1);
			return "blog/beautify/layoutDetail";
		}
		if(layOutNo == 2) {
			model.addAttribute("layout",2);
			return "blog/beautify/layoutDetail2";
		}
		if(layOutNo == 3) {
			model.addAttribute("layout",3);
			return "blog/beautify/layoutDetail3";
		} else {
			model.addAttribute("layout",4);
			return "blog/beautify/layoutDetail4";
		}
		
	}
	
	@RequestMapping("/colordetail.do")
	public String colordetail1(Model model, HttpSession session){
		User user = (User) session.getAttribute("LOGIN_USER");
		Blog blog = blogService.getBlogByUserId(user.getId());
		BlogCategory blogCategory = blogCategoryService.getOneCategoryByOrder(blog.getNo());
		Integer blogNo = blog.getNo();
		Integer categoryNo = blogCategory.getNo();
		List<BlogSubCategory> blogSubCategories = getBlogSubCategories(session, blogNo, model, categoryNo);
		
		model.addAttribute("subCategories",blogSubCategories);
		if(blog.getLayout() == 1) {
			return "blog/beautify/colordetail1";
		}
		if(blog.getLayout() == 2) {
			return "blog/beautify/colordetail2";
		}
		if(blog.getLayout() == 3) {
			return "blog/beautify/colordetail3";
		} else {
			return "blog/beautify/colordetail4";
		}
	}
	
	@RequestMapping(value="/mywrite.do", method = RequestMethod.GET)
	public String writePage(Model model, HttpSession session){
		User user = (User) session.getAttribute("LOGIN_USER");
		Blog blog = blogService.getBlogByUserId(user.getId());
		BlogCategory blogCategory = blogCategoryService.getOneCategoryByOrder(blog.getNo());
		Integer blogNo = blog.getNo();
		Integer categoryNo = blogCategory.getNo();
		List<BlogSubCategory> blogSubCategories = getBlogSubCategories(session, blogNo, model, categoryNo);
		model.addAttribute("subCategories",blogSubCategories);
		return "blog/detail/write";
	}
	
}
