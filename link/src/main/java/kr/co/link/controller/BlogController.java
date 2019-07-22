package kr.co.link.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/blog")
public class BlogController {
	
	@RequestMapping("/main.do")
	public String main(Model model, HttpSession session){
		return "blog/main";
	}
	
	@RequestMapping("/board.do")
	public String board(){
		return "blog/detail/board";
	}
	
	@RequestMapping("/detail.do")
	public String detail(){
		return "blog/detail/detail";
	}
	
	@RequestMapping("/start.do")
	public String start(){
		return "blog/detail/start";
	}
	@RequestMapping("/beauty.do")
	public String beauty(Model model) {
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
	@RequestMapping(value="/write.do", method = RequestMethod.GET)
	public String writePage(Model model, HttpSession session){
		return "blog/detail/write";
	}
	@RequestMapping(value="/write.do", method = RequestMethod.POST)
	public String writeMethod(Model model, HttpSession session, HttpServletRequest request){
	    String ctx = request.getContextPath();    //콘텍스트명 얻어오기.
	    
	    model.addAttribute("ctx",ctx);
		return "blog/detail/write";
	}
	
	
}
