package kr.co.link.controller;

import java.awt.Color;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.link.service.BlogBoardService;
import kr.co.link.service.BlogCategoryService;
import kr.co.link.service.BlogService;
import kr.co.link.service.BlogSubCategoryService;
import kr.co.link.service.BlogThemeService;
import kr.co.link.service.UserService;
import kr.co.link.vo.Blog;
import kr.co.link.vo.BlogBoard;
import kr.co.link.vo.BlogCategory;
import kr.co.link.vo.BlogSubCategory;
import kr.co.link.vo.User;

@Controller
@RequestMapping("/blog")
public class BlogMenuController {
	@Autowired
	private BlogService blogService;
	@Autowired
	private BlogSubCategoryService blogSubCategoryService;
	@Autowired
	private BlogCategoryService blogCategoryService;
	@Autowired
	private BlogBoardService blogBoardService;
	@Autowired
	private BlogThemeService blogThemeService;
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
			BlogCategory blogCategory = blogCategoryService.getOneCategoryByOrder(blog.getNo());
			List<BlogBoard> blogBoards = blogBoardService.getBoardByCategory(blogCategory.getNo());
			model.addAttribute("category", blogCategory);
			model.addAttribute("blogBoards", blogBoards);
			int blogCount = blogBoardService.countBoardsByCategoryId(blogCategory.getNo());
			model.addAttribute("blogCount", blogCount);
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
	
	@RequestMapping(value="/alterCategory.do", method = RequestMethod.GET)
	public String alterCategory(Model model, HttpSession session, Integer categoryNo){
		User user = (User) session.getAttribute("LOGIN_USER");
		Blog blog = blogService.getBlogByUserId(user.getId());
		Integer blogNo = blog.getNo();
		model.addAttribute("blog",blog);
		
		List<BlogSubCategory> blogSubCategories = getBlogSubCategories(session, blogNo, model, categoryNo);
		int categorySize = blogSubCategories.size();
		model.addAttribute("categorySize", categorySize);
		model.addAttribute("subCategories", blogSubCategories);
		model.addAttribute("selected","first");
		// 꾸미기 설정을 파랗게
		model.addAttribute("column","menu");
		// 레이아웃 & 위젯 설정 파랗게
		model.addAttribute("left3","category");
		return "blog/category/category";
	}
	
}
