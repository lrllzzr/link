package kr.co.link.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.link.service.UserService;
import kr.co.link.vo.User;

@Controller
public class UserController {

	@Autowired
	private UserService userService;
	
	@RequestMapping("/loginform.do")
	public String loginform() {
		return "user/loginform";
	}
	
	@RequestMapping(value="/loginform.do", method = RequestMethod.POST)
	public String login(String userId, String password, HttpSession session) {
		User user = userService.login(userId, password);
		
		session.setAttribute("LOGIN_USER", user);
		
		return ("redirect:home.do");
	}
}
