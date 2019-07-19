package kr.co.link.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/blog")
public class BlogController {
	
	@RequestMapping("/main.do")
	public String main(){
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
	@RequestMapping("/beautifyblog.do")
	public String beautifyBlog(Model model){
		// 꾸미기 설정을 파랗게
		model.addAttribute("column","beautifyblog");
		// 레이아웃 & 위젯 설정 파랗게
		model.addAttribute("left2","layout");
		return "blog/beautify/beautifyblog";
	}
	
}
