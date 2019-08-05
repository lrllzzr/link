package kr.co.link.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.link.form.JisikinForm;
import kr.co.link.service.JisikinAnswerService;
import kr.co.link.service.JisikinCategoryService;
import kr.co.link.service.JisikinService;
import kr.co.link.service.JisikinTagService;
import kr.co.link.vo.Jisikin;
import kr.co.link.vo.JisikinAnswer;
import kr.co.link.vo.JisikinCategory;
import kr.co.link.vo.JisikinTag;
import kr.co.link.vo.User;

@Controller
@RequestMapping("/jisikin")
public class JisikinController {

	@Autowired
	private JisikinCategoryService categoryService;
	
	@Autowired
	private JisikinService jisikinService;
	
	@Autowired
	private JisikinTagService tagService;
	
	@Autowired
	private JisikinAnswerService answerService;
	
	
	// 지식인 메인
	@RequestMapping("/main.do")
	public String main(Model model) {
		
		// 오늘의 질문
		int countToday = jisikinService.countTodayJisikin();
		model.addAttribute("countToday", countToday);
		
		// 인기 태그
		List<JisikinTag> toptag = tagService.getPopularTagTop10();
		model.addAttribute("toptag", toptag);
		
		
		return "jisikin/jisikinMain";
	}
	
	// Q&A							값이 없어도되는      변수명과 값일치      required=false일때 기본값
	@RequestMapping("/qna.do")
	public String qna(@RequestParam(required = false, value = "categoryNo", defaultValue = "0")int categoryNo, Model model) {
		// 지식인 카테고리
		if (categoryNo == 0) {
			List<Jisikin> allJisikin = jisikinService.getAllJisikin();
			model.addAttribute("allJisikin", allJisikin);
		} else {
			List<Jisikin> allJisikin = jisikinService.getJisikinByCategory(categoryNo);
			model.addAttribute("allJisikin", allJisikin);
		}
		
		List<JisikinCategory> categoriesParent = categoryService.getParentCategory();
		model.addAttribute("categoriesParent", categoriesParent);
		
		// 인기 태그
		List<JisikinTag> toptag = tagService.getPopularTagTop10();
		model.addAttribute("toptag", toptag);
		
		int countToday = jisikinService.countTodayJisikin();
		model.addAttribute("countToday", countToday);
		
		return "jisikin/jisikinQna";
	}
	
	
	// 질문 상세
	@RequestMapping(value= "/questionDetail.do", method = RequestMethod.GET)
	public String questionDetail(@RequestParam(value= "jisikinNo")int jisikinNo, Model model) {
		Jisikin jisikin = jisikinService.getJisikinByNo(jisikinNo);
		
		// 태그들 지식인에 담기
		List<JisikinTag> tags = tagService.getTagByJisikin(jisikinNo);
		jisikin.setTags(tags);
		
		model.addAttribute("jisikin", jisikin);
		
		
		// 답변 뿌리기
		List<JisikinAnswer> answers = answerService.getAnswersByJisikinNo(jisikinNo);
		model.addAttribute("answers", answers);
		
		return "jisikin/jisikinQuestion";
	}
	
	@RequestMapping(value= "/questionDetail.do", method = RequestMethod.POST)
	public String questionDetail(JisikinAnswer jisikinAnswer, HttpSession session) {
		JisikinAnswer answer = new JisikinAnswer();
		
		User user = (User) session.getAttribute("LOGIN_USER");
		BeanUtils.copyProperties(jisikinAnswer, answer);
		// 작성자 아이디 넣기
		answer.setUserId(user.getId());
		
		System.out.println(answer.getUserId()+"이 답변을 등록하였습니다!");
		
		answerService.addAnswer(answer);
		
		return "redirect:/jisikin/questionDetail.do?jisikinNo="+jisikinAnswer.getJisikinNo()+"";
	}
	
	// 카테고리별 질문
	@RequestMapping(value="/byCategory.do")
	public @ResponseBody List<Jisikin> byCategory(int categoryNo){
		return jisikinService.getJisikinByCategory(categoryNo);
	}
	
	// 카테고리별 검색
	@RequestMapping(value="/byKeywordCategory.do")
	public @ResponseBody List<Jisikin> byKeywordCategory(int categoryNo, String keyword){
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("no", categoryNo);
		map.put("keyword", keyword);
		
		return jisikinService.searchJisikinsByCategory(map);
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
	public String addform(JisikinForm jisikinForm, HttpSession session) {
		User user = (User) session.getAttribute("LOGIN_USER");
		
		Jisikin jisikin = new Jisikin();
		// 폼객체를 지식인과 태그에 복사
		BeanUtils.copyProperties(jisikinForm, jisikin);
		
		// 카테고리 객체화 해서 담기
		JisikinCategory category = new JisikinCategory();
		category.setNo(jisikinForm.getCategoryNo());
		jisikin.setCategory(category);
		
		// 만들어질 지식인 번호
		int jisikinNo = jisikinService.getJisikinSeq();
		
		// 폼객체에 없는 지식인 필드 추가
		jisikin.setNo(jisikinNo);
		jisikin.setUserId(user.getId());
		jisikinService.addJisikin(jisikin);

		
		// 여러 태그들 추가하기
		List<String> tags = jisikinForm.getTags();
		for (String tagName : tags ) {
			JisikinTag tag = new JisikinTag();
			
			tag.setTagName(tagName);
			tag.setJisikinNo(jisikinNo);
			tagService.addTag(tag);
		}
		
		return "redirect:/jisikin/questionDetail.do?jisikinNo="+jisikinNo+"";
	}
	
	// 자녀 카테고리 띄우기
	@RequestMapping("subCategory.do")
	public @ResponseBody List<JisikinCategory> subCategory(int parentNo){
		return categoryService.getSubCategoryByParent(parentNo);
	}
	
	
	// 답변하기 메뉴
	@RequestMapping("/answer.do")
	public String answer(@RequestParam(required = false, value = "categoryNo", defaultValue = "0")int categoryNo, Model model) {
		// 카테고리별 질문글 뿌리기
		if (categoryNo == 0) {
			List<Jisikin> allJisikin = jisikinService.getAllJisikin();
			model.addAttribute("allJisikin", allJisikin);
		} else {
			List<Jisikin> allJisikin = jisikinService.getJisikinByCategory(categoryNo);
			model.addAttribute("allJisikin", allJisikin);
		}
		
		// 인기 태그
		List<JisikinTag> toptag = tagService.getPopularTagTop10();
		model.addAttribute("toptag", toptag);
		
		// 오늘의 질문
		int countToday = jisikinService.countTodayJisikin();
		model.addAttribute("countToday", countToday);
		
		
		return "jisikin/jisikinAnswer";
	}
	

	
	@RequestMapping("/profile.do")
	public String profile() {
		
		return "jisikin/jisikinProfile";
	}
	
	
	// 명예의 전당
	@RequestMapping("/rank.do")
	public String rank(Model model) {
		// 인기 태그
		List<JisikinTag> toptag = tagService.getPopularTagTop10();
		model.addAttribute("toptag", toptag);
		
		return "jisikin/jisikinRank";
	}
}
