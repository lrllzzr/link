package kr.co.link.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.link.service.SeriesNoticeService;
import kr.co.link.vo.SeriesNotice;

@Controller
@RequestMapping("/series")
public class SeriesController {
	
	@Autowired
	private SeriesNoticeService seriesNoticeService;

	@RequestMapping("/mypage/cart.do") 
	public String cart(Model model) {
		return "series/mypage/cart";
	}
	
	@RequestMapping("/mypage/favorite.do")
	public String favorite(Model model) {
		return "series/mypage/favorite";
	}
	
	@RequestMapping("/mypage/orderlist.do")
	public String orderList(Model model) {
		return "series/mypage/orderlist";
	}
	
	@RequestMapping("/category.do")
	public String category(Model model) {
		return "series/category";
	}
	
	@RequestMapping("/detail.do")
	public String detail(Model model) {
		return "series/detail";
	}
	
	@RequestMapping("/home.do")
	public String home(Model model) {
		List<SeriesNotice> notices = seriesNoticeService.get3Notices();
		model.addAttribute("notices", notices);
		return "series/home";
	}
	
	@RequestMapping("/noticelist.do")
	public String noticeList(Model model) {
		List<SeriesNotice> noticeList = seriesNoticeService.getAllNotices();
		model.addAttribute("notices", noticeList);
		return "series/noticelist";
	}
	
	@RequestMapping("/noticedetail.do")
	public String noticeDetail(Model model, int no) {
		SeriesNotice notice = seriesNoticeService.getNotice(no);
		model.addAttribute("notice", notice);
		return "series/noticedetail";
	}
	
	@RequestMapping("/noticeform.do")
	public String noticeForm(Model model) {
		return "series/noticeform";
	}
	
	@RequestMapping("/addnotice.do")
	public String add(Model model, String title, String contents) {
		SeriesNotice notice = new SeriesNotice();
		notice.setTitle(title);
		notice.setContents(contents);
		seriesNoticeService.addNotice(notice);
		return "redirect:noticelist.do";
	}
	
	@RequestMapping("/toprank.do")
	public String topRank(Model model) {
		return "series/toprank";
	}
}
