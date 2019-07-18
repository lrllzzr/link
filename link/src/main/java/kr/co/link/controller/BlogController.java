package kr.co.link.controller;

import org.springframework.stereotype.Controller;
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
	
}
