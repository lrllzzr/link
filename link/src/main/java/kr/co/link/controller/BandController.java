package kr.co.link.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/band")
public class BandController {

	@RequestMapping("/main")
	public String main(Model medel, HttpSession session) {
		
		return "band/bandMain";
	}
	
	@RequestMapping("/addBand")
	public String addBand() {
		return "band/bandAdd";
	}
	
}
