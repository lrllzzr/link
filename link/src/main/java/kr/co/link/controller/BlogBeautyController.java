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
import org.springframework.web.multipart.MultipartFile;

import kr.co.link.form.BlogBoardForm;
import kr.co.link.service.BlogBoardService;
import kr.co.link.service.BlogCategoryService;
import kr.co.link.service.BlogService;
import kr.co.link.service.BlogSubCategoryService;
import kr.co.link.vo.Blog;
import kr.co.link.vo.BlogBoard;
import kr.co.link.vo.BlogCategory;
import kr.co.link.vo.BlogSubCategory;
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
	
	
	
	@RequestMapping("/start.do")
	public String start(){
		return "blog/detail/start";
	}
	
	@RequestMapping("/beauty.do")
	public String beauty(Model model, Integer blogNo) {
		Blog blog = blogservice.getBlogByBlogNo(blogNo);
		model.addAttribute("blog",blog);
		// 기본 설정을 파랗게
		model.addAttribute("column","updateProfile");
		// 블로그정보를 파랗게
		model.addAttribute("left","blogmain");
		return "blog/beautify/beautymain";
	}
	@RequestMapping("/updateProfile.do")
	public String updateProfile(Model model) {
		// 기본 설정을 파랗게
		model.addAttribute("column","updateProfile");
		// 프로필정보를 파랗게
		model.addAttribute("left","updateProfile");
		return "blog/beautify/beautyUpdateProfile";
	}
	@RequestMapping(value = "/beautifyblog.do", method = RequestMethod.GET)
	public String beautifyBlog(Model model){
		model.addAttribute("selected","first");
		// 꾸미기 설정을 파랗게
		model.addAttribute("column","beautifyblog");
		// 레이아웃 & 위젯 설정 파랗게
		model.addAttribute("left2","layout");
		return "blog/beautify/beautifyblog";
	}
	
	@RequestMapping(value = "/beautifyblog2.do", method = RequestMethod.GET)
	public String beautifyBlog2(Model model){
		model.addAttribute("selected","second");
		// 꾸미기 설정을 파랗게
		model.addAttribute("column","beautifyblog");
		// 레이아웃 & 위젯 설정 파랗게
		model.addAttribute("left2","layout");
		return "blog/beautify/beautifyblog2";
	}
	
	@RequestMapping(value = "/beautifyblog.do", method = RequestMethod.POST)
	public String beautifyBlogApply(Model model, String firstCol, String secondCol, String thirdCol){
		return "redirect:blog/beautify/beautifyblog";
	}

	
	
}
