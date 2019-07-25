package kr.co.link.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/accountbook")
public class AccountBookController {

	@RequestMapping(value="/home.do")
	public String expense() {
		return "accountbook/a/main_expense";
	}
	
}
