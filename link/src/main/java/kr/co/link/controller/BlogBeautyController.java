package kr.co.link.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import kr.co.link.form.BlogBoardForm;
import kr.co.link.form.BlogForm;
import kr.co.link.form.BlogUpdateForm;
import kr.co.link.form.ColorForm;
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
import kr.co.link.vo.BlogTheme;
import kr.co.link.vo.User;

@Controller
@RequestMapping("/blog")
public class BlogBeautyController {
	
	@Autowired
	private BlogService blogservice;
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
	
	// 기본 설정 시작
	@RequestMapping("/start.do")
	public String start(){
		return "blog/detail/start";
	}
	
	@RequestMapping(value="/beauty.do", method = RequestMethod.GET)
	public String beauty(Model model, Integer blogNo, HttpSession session) throws IOException {
		User user = (User) session.getAttribute("LOGIN_USER");
		Blog blog = blogservice.getBlogByUserId(user.getId());
		model.addAttribute("blog",blog);
		// 기본 설정을 파랗게
		model.addAttribute("column","updateProfile");
		// 블로그정보를 파랗게
		model.addAttribute("left","blogmain");
		return "blog/beautify/beautymain";
	}
	
	@RequestMapping(value="/beauty.do", method = RequestMethod.POST)
	public String beautyApply(Model model, Integer blogNo, BlogUpdateForm blogUpdateForm, HttpSession session) throws IOException {
		User user = (User) session.getAttribute("LOGIN_USER");
		Blog blog = blogservice.getBlogByUserId(user.getId());
		BeanUtils.copyProperties(blogUpdateForm, blog);
		user.setNickName(blogUpdateForm.getNickName());
		MultipartFile mf = blogUpdateForm.getMainImg();
		String profileImageSaveDirectory = "C:/Users/BM/git/link/link/src/main/webapp/resources/images/userblogimgs";
		if (!mf.isEmpty()) {
			String filename = mf.getOriginalFilename();
			FileCopyUtils.copy(mf.getBytes(), new File(profileImageSaveDirectory, filename));
			blog.setMainImg(filename);
		}
		userService.updateUser(user);
		blogservice.updateBlogByBlogNo(blog);
		return "redirect:mydetail.do";
	}
	
	@RequestMapping(value="/beautyCategory.do", method = RequestMethod.GET)
	public String beautyCategory(Model model, Integer blogNo, HttpSession session) throws IOException {
		User user = (User) session.getAttribute("LOGIN_USER");
		Blog blog = blogservice.getBlogByUserId(user.getId());
		model.addAttribute("blog",blog);
		// 기본 설정을 파랗게
		model.addAttribute("column","updateProfile");
		// 블로그정보를 파랗게
		model.addAttribute("left","blogmain");
		return "blog/beautify/beautyCategory";
	}
	
	@RequestMapping("/updateProfile.do")
	public String updateProfile(Model model, HttpSession session) {
		// 기본 설정을 파랗게
		model.addAttribute("column","updateProfile");
		// 프로필정보를 파랗게
		model.addAttribute("left","updateProfile");
		return "blog/beautify/beautyUpdateProfile";
	}
	// 기본 설정(left) 끝
	
	//꾸미기 설정 시작 (left2)
	@RequestMapping(value = "/beautifyblog.do", method = RequestMethod.GET)
	public String beautifyBlog(Model model, HttpSession session){
		User user = (User) session.getAttribute("LOGIN_USER");
		Blog blog = blogservice.getBlogByUserId(user.getId());
		model.addAttribute("blog",blog);
		
		model.addAttribute("selected","first");
		// 꾸미기 설정을 파랗게
		model.addAttribute("column","beautifyblog");
		// 레이아웃 & 위젯 설정 파랗게
		model.addAttribute("left2","layout");
		return "blog/beautify/beautifyblog";
	}
	
	// 박스 옮길때 ajax로 적용
	@RequestMapping(value = "/beautifyblogApply.do", method = RequestMethod.GET)
	public @ResponseBody void beautifyBlogApply(Model model,HttpSession session, String firstCol, String secondCol, String thirdCol,Integer layNum){
		session.setAttribute("layNum", layNum);
		session.setAttribute("firstCol", firstCol);
		session.setAttribute("secondCol", secondCol);
		session.setAttribute("thirdCol", thirdCol);
	}
	
	@RequestMapping(value = "/beautifyblog2.do", method = RequestMethod.GET)
	public String beautifyBlog2(Model model, HttpSession session){
		User user = (User) session.getAttribute("LOGIN_USER");
		Blog blog = blogservice.getBlogByUserId(user.getId());
		model.addAttribute("blog",blog);
		
		model.addAttribute("selected","second");
		// 꾸미기 설정을 파랗게
		model.addAttribute("column","beautifyblog");
		// 레이아웃 & 위젯 설정 파랗게
		model.addAttribute("left2","layout");
		return "blog/beautify/beautifyblog2";
	}
	
	@RequestMapping(value = "/beautifyblog3.do", method = RequestMethod.GET)
	public String beautifyBlog3(Model model, HttpSession session){
		User user = (User) session.getAttribute("LOGIN_USER");
		Blog blog = blogservice.getBlogByUserId(user.getId());
		model.addAttribute("blog",blog);
		
		model.addAttribute("selected","third");
		// 꾸미기 설정을 파랗게
		model.addAttribute("column","beautifyblog");
		// 레이아웃 & 위젯 설정 파랗게
		model.addAttribute("left2","layout");
		return "blog/beautify/beautifyblog3";
	}
	
	@RequestMapping(value = "/beautifyblog4.do", method = RequestMethod.GET)
	public String beautifyBlog4(Model model, HttpSession session){
		User user = (User) session.getAttribute("LOGIN_USER");
		Blog blog = blogservice.getBlogByUserId(user.getId());
		model.addAttribute("blog",blog);
		
		model.addAttribute("selected","fourth");
		// 꾸미기 설정을 파랗게
		model.addAttribute("column","beautifyblog");
		// 레이아웃 & 위젯 설정 파랗게
		model.addAttribute("left2","layout");
		return "blog/beautify/beautifyblog4";
	}
	
	@RequestMapping(value = "/beautyLayoutApply.do", method = RequestMethod.GET)
	public String layoutApply(Model model, HttpSession session, Integer layNum, String firstCol, String secondCol, String thirdCol){
		User user = (User) session.getAttribute("LOGIN_USER");
		Blog blog = blogservice.getBlogByUserId(user.getId());
		blog.setFirstCol(firstCol);
		blog.setSecondCol(secondCol);
		blog.setThirdCol(thirdCol);
		blog.setLayout(layNum);
		
		blogservice.updateBlogByBlogNo(blog);
		if(layNum ==1) {
			return "redirect:beautifyblog.do";
		}
		if(layNum ==2) {
			return "redirect:beautifyblog2.do";
		}
		if(layNum ==3) {
			return "redirect:beautifyblog3.do";
		} else{
			return "redirect:beautifyblog4.do";
		}
	}
	
	// 테마
	@RequestMapping(value = "/blogtheme.do", method = RequestMethod.GET)
	public String blogTheme(Model model, HttpSession session){
		User user = (User) session.getAttribute("LOGIN_USER");
		// 블로그 얻어오기
		Blog blog = blogservice.getBlogByUserId(user.getId());
		
		// 테마 얻어오기
		List<BlogTheme> blogThemes = blogThemeService.getAllThemes();
		String blogTheme = blog.getTheme();
		model.addAttribute("blogTheme",blogTheme);
		
		model.addAttribute("blogThemes",blogThemes);
		// 테마 얻어오기 끝
		
		model.addAttribute("selected","second");
		// 꾸미기 설정을 파랗게
		model.addAttribute("column","beautifyblog");
		// 테마 설정 파랗게
		model.addAttribute("left2","theme");
		return "blog/beautify/blogtheme";
	}
	
	// 블로그 색상
	@RequestMapping(value = "/blogcolor.do", method = RequestMethod.GET)
	public String blogColor(Model model, HttpSession session){
		User user = (User) session.getAttribute("LOGIN_USER");
		// 블로그 얻어오기
		Blog blog = blogservice.getBlogByUserId(user.getId());
		
		model.addAttribute("blog",blog);
		model.addAttribute("selected","second");
		// 꾸미기 설정을 파랗게
		model.addAttribute("column","beautifyblog");
		// 컬러 설정 파랗게
		model.addAttribute("left2","color");
		return "blog/beautify/blogcolor";
	}
	
	@RequestMapping(value = "/blogcolor.do", method = RequestMethod.POST)
	public String blogColorApply(HttpSession session, ColorForm colorForm){
		User user = (User) session.getAttribute("LOGIN_USER");
		// 블로그 얻어오기
		Blog blog = blogservice.getBlogByUserId(user.getId());
	    BeanUtils.copyProperties(colorForm, blog);
	    blogservice.updateBlogByBlogNo(blog);
		return "redirect:blogcolor.do";
	}
	
	@RequestMapping(value="/blogthemeapply.do", method = RequestMethod.GET)
	public String applyTheme(String theme, HttpSession session) {
		User user = (User) session.getAttribute("LOGIN_USER");
		// 블로그 얻어오기
		Blog blog = blogservice.getBlogByUserId(user.getId());
		blog.setTheme(theme);
		blogservice.updateBlogByBlogNo(blog);
		return "redirect:blogtheme.do";
	}
	
	
	
}
