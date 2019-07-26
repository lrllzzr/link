package kr.co.link.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.link.service.BandService;
import kr.co.link.vo.Band;
import kr.co.link.vo.BandLogoImg;

@Controller
@RequestMapping("/band")
public class BandController {

	@Autowired
	private BandService bandService;
	
	@RequestMapping("/main")
	public String main(Model medel, HttpSession session) {
		return "band/bandMain";
	}
	
	@RequestMapping(value="/addBand", method=RequestMethod.GET)
	public String addBand(Model model, @RequestParam(value="begin", required = false, defaultValue = "1")int begin,
							@RequestParam(value="end", required= false, defaultValue = "8")int end) {

		List<BandLogoImg> logoimgs = bandService.getAllLogoImg(begin, end);
		model.addAttribute("logoImgs",logoimgs);
		return "band/bandAdd";
	}
	
	@RequestMapping(value="/addBand", method=RequestMethod.POST)
	public String addBand(Band band) {
		
		System.out.println(band.getName());
		System.out.println(band.getPhoto());
		System.out.println(band.getUser().getName());
		
		bandService.addBand(band);
		
		return "redirect:main.do";
	}
	
	@RequestMapping(value = "/changeLogo", method=RequestMethod.GET)
	@ResponseBody
	public List<BandLogoImg> changeLogo(int begin, int end){
		List<BandLogoImg> logoimgs = bandService.getAllLogoImg(begin, end);
		return logoimgs;
	}
	
}
