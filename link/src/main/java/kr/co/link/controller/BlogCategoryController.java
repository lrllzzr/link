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
import org.springframework.web.bind.annotation.ResponseBody;

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
public class BlogCategoryController {
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

	@RequestMapping(value = "/alterCategory.do", method = RequestMethod.GET)
	public String alterCategory(Model model, HttpSession session, Integer categoryNo) {
		User user = (User) session.getAttribute("LOGIN_USER");
		Blog blog = blogService.getBlogByUserId(user.getId());
		Integer blogNo = blog.getNo();
		model.addAttribute("blog", blog);
		List<BlogSubCategory> blogSubCategories = getBlogSubCategories(session, blogNo, model, categoryNo);
		int categorySize = blogSubCategories.size();
		model.addAttribute("categorySize", categorySize);
		model.addAttribute("subCategories", blogSubCategories);
		model.addAttribute("selected", "first");
		// 꾸미기 설정을 파랗게
		model.addAttribute("column", "menu");
		// 레이아웃 & 위젯 설정 파랗게
		model.addAttribute("left3", "category");
		return "blog/category/category";
	}
	
	@RequestMapping(value = "/alterCategory.do", method = RequestMethod.POST)
	public String alterCategoryApply(Model model, HttpSession session, Integer categoryNo, String subCatNo, String subCatTitle,
			String catSubCatNo, String catNo, String catTitle, String show) {

		System.out.println("subCatNo: " + subCatNo);
		System.out.println("subCatTitle: " + subCatTitle);
		System.out.println("catSubCatNo: " + catSubCatNo);
		System.out.println("catNo: " + catNo);
		System.out.println("catTitle: " + catTitle);
		System.out.println("---------");
		User user = (User) session.getAttribute("LOGIN_USER");
		Blog blog = blogService.getBlogByUserId(user.getId());
		Integer blogNo = blog.getNo();

		// 서브카테고리 수정 or 추가
		String[] subCatNoArray = subCatNo.split(",");
		String[] subCatTitleArray = subCatTitle.split(",");
		for (int i = 0; i < subCatNoArray.length; i++) {
			Integer newSubCatNo = Integer.parseInt(subCatNoArray[i]);
			if (newSubCatNo > 0) {
				BlogSubCategory blogSubCategory = blogSubCategoryService.getSubCategoryBySubCatNo(newSubCatNo);
				blogSubCategory.setTitle(subCatTitleArray[i]);
				blogSubCategoryService.updateSubCategory(blogSubCategory);
			} else if (newSubCatNo < 0) {
				BlogSubCategory blogSubCategory = new BlogSubCategory();
				blogSubCategory.setBlogNo(blogNo);
				blogSubCategory.setTitle(subCatTitleArray[i]);
				blogSubCategoryService.addNewSubCategory(blogSubCategory);

			}
		}
		// 카테고리 수정 or 추가
		String[] catSubCatNoArray = catSubCatNo.split(",");
		String[] catNoArray = catNo.split(",");
		String[] catTitleArray = catTitle.split(",");

		for (int i = 0; i < catSubCatNoArray.length; i++) {
			Integer newCatSubCatNo = Integer.parseInt(catSubCatNoArray[i]);
			Integer newCatNo = Integer.parseInt(catNoArray[i]);
			if (newCatSubCatNo > 0) {
				BlogCategory blogCategory = blogCategoryService.getCategoryByCategoryNo(newCatNo);
				blogCategory.setTitle(catTitleArray[i]);
				blogCategoryService.updateCategory(blogCategory);
			} else if (newCatSubCatNo < 0) {
				BlogCategory blogCategory = new BlogCategory();
				blogCategory.setTitle(catTitleArray[i]);
				blogCategory.setSubCategoryNo(newCatSubCatNo);
				blogCategoryService.addNewCategory(blogCategory);
			}
		}

		return "redirect:alterCategory.do";
	}
	
	@RequestMapping("/changeCatPublic.do")
	public @ResponseBody void changeCatPublic(HttpSession session, String categoryNo,String subCatNo) {
		System.out.println(categoryNo);
		System.out.println(subCatNo);
		if(categoryNo != "undefined") {
			Integer categoryNo2 = Integer.parseInt(categoryNo);
			BlogCategory blogCategory = blogCategoryService.getCategoryByCategoryNo(categoryNo2);
			blogCategory.setVisibility("Y");
			blogCategoryService.updateCategory(blogCategory);
		}
		if(subCatNo != "undefined") {
			Integer subCatNo2 = Integer.parseInt(subCatNo);
			BlogSubCategory blogSubCategory = blogSubCategoryService.getSubCategoryBySubCatNo(subCatNo2);
			blogSubCategory.setVisibility("Y");
			blogSubCategoryService.updateSubCategory(blogSubCategory);
		}
	}
	
	@RequestMapping("/changeCatPrivate.do")
	public @ResponseBody void changeCatPrivate(HttpSession session, String categoryNo,String subCatNo) {
		if(categoryNo != "undefined") {
			Integer categoryNo2 = Integer.parseInt(categoryNo);
			BlogCategory blogCategory = blogCategoryService.getCategoryByCategoryNo(categoryNo2);
			blogCategory.setVisibility("N");
			blogCategoryService.updateCategory(blogCategory);
		}
		if(subCatNo != "undefined") {
			Integer subCatNo2 = Integer.parseInt(subCatNo);
			BlogSubCategory blogSubCategory = blogSubCategoryService.getSubCategoryBySubCatNo(subCatNo2);
			blogSubCategory.setVisibility("N");
			blogSubCategoryService.updateSubCategory(blogSubCategory);
		}
	}
	
	
}
