package kr.co.link.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.link.form.JisikinForm;
import kr.co.link.service.JisikinCategoryService;
import kr.co.link.vo.Jisikin;
import kr.co.link.vo.JisikinCategory;
import kr.co.link.vo.JisikinTag;

@Controller
@RequestMapping("/jisikin")
public class JisikinController {

	@Autowired
	private JisikinCategoryService categoryService;
	
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
	
	// 질문폼
	@RequestMapping(value= "/questionform.do", method = RequestMethod.GET)
	public String form(Model model) {
		model.addAttribute("jisikinForm", new JisikinForm());
		List<JisikinCategory> categories = categoryService.getParentCategory();
		model.addAttribute("categories", categories);
		
		return "jisikin/jisikinQuestionForm";
	}
	
	
	// 질문폼 기입
	@RequestMapping(value= "/questionform.do", method = RequestMethod.POST)
	public String addform(JisikinForm jisikinForm) {
		Jisikin jisikin = new Jisikin();
		JisikinTag tag = new JisikinTag();
		JisikinCategory category = new JisikinCategory();
		
		return "jisikin/jisikinQuestion";
	}
	
	@RequestMapping("subCategory.do")
	public @ResponseBody List<JisikinCategory> subCategory(int parentNo){
		
		
		return categoryService.getSubCategoryByParent(parentNo);
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
