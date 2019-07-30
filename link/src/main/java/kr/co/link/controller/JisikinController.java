package kr.co.link.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/jisikin")
public class JisikinController {

	
	
	@RequestMapping("/main.do")
	public String main() {
		
		return "jisikin/jisikinMain";
	}
	
	@RequestMapping("/qna.do")
	public String qna() {
		
		return "jisikin/jisikinQna";
	}
	
	@RequestMapping("/question.do")
	public String question() {
		
		return "jisikin/jisikinQuestion";
	}
	
	@RequestMapping("/questionform.do")
	public String form() {
		
		return "jisikin/jisikinQuestionForm";
	}
	
	@RequestMapping("/answer.do")
	public String answer() {
		
		return "jisikin/jisikinAnswer";
	}
	
	@RequestMapping("/profile.do")
	public String profile() {
		
		return "jisikin/jisikinProfile";
	}
	
	@RequestMapping("/rank.do")
	public String rank() {
		
		return "jisikin/jisikinRank";
	}
}
