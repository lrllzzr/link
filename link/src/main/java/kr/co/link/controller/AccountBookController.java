package kr.co.link.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.link.form.AccountBookExpenseForm;
import kr.co.link.form.AccountBookIncomeForm;
import kr.co.link.service.AccountBookTermService;
import kr.co.link.vo.AccountBookCategory;
import kr.co.link.vo.AccountBookTag;
import kr.co.link.vo.AccountBookTerm;
import kr.co.link.vo.User;

@Controller
@RequestMapping(value = "/accountbook")
public class AccountBookController {
	@Autowired
	private AccountBookTermService accountbookService;

	/***** 가계부 *****/

	
		/*** 지출 내역 추가 ***/
		@RequestMapping(value = "/expense.do", method = RequestMethod.POST) 				
		public String addTerm(HttpSession session, Model model, AccountBookExpenseForm form) {
	
			User user = (User) session.getAttribute("LOGIN_USER");
	
			AccountBookTerm term = new AccountBookTerm(); /* 지출.수입 vo */
	
			term.setCard(form.getCard());
			term.setCash(form.getCash());
	
			AccountBookCategory accountBookCategory = new AccountBookCategory();
			accountBookCategory.setCategoryNo(form.getCategory());
			term.setCategory(accountBookCategory);
	
			AccountBookTag accountBookTag = new AccountBookTag();
			accountBookTag.setTagName(form.getTag());
	
			term.setDate(form.getDate());
			term.setDetail(form.getDetail());
			term.setGubun("지출");
	
			term.setId(user.getId());
	
			accountbookService.addexpense(term, accountBookTag);
	
			return "redirect:expense.do";
		}
	
		/*** 수입 내역 추가 ***/
		@RequestMapping(value = "/income.do", method = RequestMethod.POST)
		public String income(Model model, HttpSession session, AccountBookIncomeForm form) {
	
			User user = (User) session.getAttribute("LOGIN_USER");
	
			AccountBookTerm term = new AccountBookTerm();
			term.setCash(form.getCash());
	
			AccountBookCategory category = new AccountBookCategory();
			category.setCategoryNo(form.getCategory());
			term.setCategory(category);
	
			term.setDate(form.getDate());
			term.setDetail(form.getDetail());
			term.setGubun("수입");
	
			AccountBookTag tag = new AccountBookTag();
			tag.setTagName(form.getTag());
			term.setTag(tag);
	
			term.setId(user.getId());
	
			accountbookService.addIncome(term, tag);
	
			return "redirect:income.do";
		}
		
		/*** 지출 내역 선택 삭제***/
		@RequestMapping(value = "/delexpense.do",method =RequestMethod.POST)
		public String deleteExpense(HttpSession session, int[] termNos) {
			User user = (User)session.getAttribute("LOGIN_USER");
			
			accountbookService.deleteTerm(termNos);
			
			return "redirect:expense.do";
		}
		/*** 지출 내역 전체 삭제***/
		@RequestMapping(value = "/delAllexpense.do",method =RequestMethod.POST)
		public String deleteAllExpense(HttpSession session, int[] termNos) {
			User user = (User)session.getAttribute("LOGIN_USER");
			
			accountbookService.deleteAllExpense();
			
			return "redirect:expense.do";
		}
		
		
		/*** 수입 내역 선택 삭제***/ 
		@RequestMapping(value = "/delincome.do",method =RequestMethod.POST )
		public String deleteAllIncome(HttpSession session, int[] termNos) {
			User user = (User)session.getAttribute("LOGIN_USER");
			
			
			accountbookService.deleteTerm(termNos);
		
			return "redirect:income.do";
		}
		/*** 수입 내역 전체 삭제***/
		@RequestMapping(value = "/delAllincome.do",method =RequestMethod.POST )
		public String deleteIncome(HttpSession session, int[] termNos) {
			User user = (User)session.getAttribute("LOGIN_USER");
			
			
		accountbookService.deleteAllIncome();
			
			return "redirect:income.do";
		}
		
		/*** 지출 내역 조회 ***/
		@RequestMapping(value = "/expense.do", method = RequestMethod.GET)
		public String expenseList(Model model, HttpSession session, String userId) {
			
			User user = (User) session.getAttribute("LOGIN_USER");
			userId = user.getId();
			
			// 지출내역
			List<AccountBookTerm> expenseList = accountbookService.getExpenseByuserId(userId);
			model.addAttribute("expenseList", expenseList);
			
			// 지출카테고리
			List<AccountBookCategory> expenseCategory = accountbookService.getExpenseCategory();
			model.addAttribute("expenseCategory", expenseCategory);
			
			// 지출 cash,card 합계
			long totalCash = 0;
			long totalCard = 0;
			
			for (AccountBookTerm term : expenseList) {
				totalCard += term.getCard();
				totalCash += term.getCash();
			}
			model.addAttribute("totalCash", totalCash);
			model.addAttribute("totalCard", totalCard);
			
			// 카테고리별 지출&수입총금액 조회
			List<HashMap<String, Object>> totalExpense = accountbookService.getCategoryAndExpenseByCategoryNo(userId);
			model.addAttribute("totalExpense", totalExpense);
			
			return "accountbook/a/main_expense";
		}
	
		/*** 수입 내역 조회 ***/
		@RequestMapping(value = "/income.do")
		public String incomeList(Model model, HttpSession session, String userId) {
	
			User user = (User) session.getAttribute("LOGIN_USER");
			userId = user.getId();
	
			// 수입 내역
			List<AccountBookTerm> incomeList = accountbookService.getIncomeByuserId(userId);
			model.addAttribute("incomeList", incomeList);
	
			// 수입 카테고리
			List<AccountBookCategory> incomeCategory = accountbookService.getIncomeCategory();
			model.addAttribute("incomeCategory", incomeCategory);
	
			// 수입 합계
			int totalCash = 0;
			for (AccountBookTerm term : incomeList) {
				totalCash += term.getCash();
			}
			model.addAttribute("totalCash", totalCash);
	
			List<HashMap<String, Object>> totalIncome = accountbookService.getCategoryAndIncomeByCategoryNo(userId);
			model.addAttribute("totalIncome", totalIncome);
	
			return "accountbook/a/main_income";
		}
   
	
	
	
	
	/***** 보고서 *****/
	
		@RequestMapping(value = "/monthly.do") /* 월보고서 */
		public String monthlyReport(@RequestParam(value="month", required = false, defaultValue="")String userId, String month, Model model, HttpSession session) {
			User user = (User) session.getAttribute("LOGIN_USER");
			userId = user.getId();
			
			Map<String, Object> param = new HashMap<String, Object>();
			if (!month.isEmpty()) {
				param.put("date", month);
				param.put("userId",userId);
			}
			
			AccountBookTerm monthlyTerm=accountbookService.getMonthlyTotalTermByDate(param);
			model.addAttribute("monthlyTerm", monthlyTerm);
			
			return "accountbook/b/report_monthly";
		}
	
		@RequestMapping(value = "/annual.do") /* 연보고서 */
		public String annualReport(@RequestParam(value="year",required =false, defaultValue="")String userId, String year, Model model, HttpSession session) {
			User user = (User) session.getAttribute("LOGIN_USER");
			userId = user.getId();

			Map<String, Object> param= new HashMap<String, Object>();
			if (!year.isEmpty()) {
				param.put("date",year);
				param.put("userId",userId);
			}
			
			AccountBookTerm annualTerm=accountbookService.getAnnualTotalTermByDate(param);
			model.addAttribute("annualTerm",annualTerm);
			
			return "accountbook/b/report_annual";
		}
	
		@RequestMapping(value = "/analysis.do") /* 지출분석 */
		public String analysis(String userId, Model model, HttpSession session) {
			User user = (User) session.getAttribute("LOGIN_USER");
			userId = user.getId();
			AccountBookTerm totalTerm=accountbookService.getTotalTerm();
			
			model.addAttribute("totalTerm",totalTerm);
			return "accountbook/b/report_analysis";
		}

	/***** 월결산 *****/

		@RequestMapping(value = "/form.do") /* 폼 */
		public String form() {
			return "accountbook/c/monthlyAccount_form";
		}
	
		@RequestMapping(value = "/mylist.do") /* 목록(개인) */
		public String myList() {
			return "accountbook/c/monthlyAccount_myList";
		}
	
		@RequestMapping(value = "/list.do") /* 목록(전체) */
		public String allList() {
			return "accountbook/c/monthlyAccount_allList";
		}
	
		@RequestMapping(value = "/detail.do") /* 디테일 */
		public String detail() {
			return "accountbook/c/monthlyAccount_detail";
		}
	
		/***** 예산:주요기능:글저장, 수정, 삭제 *****/
		@RequestMapping(value = "/budget.do") /* 예산 조회 */
		public String listbudget() {
	
			return "accountbook/budget_form";
		}
	
		@RequestMapping(value = "", method = RequestMethod.POST)
		public String addbudget() {
	
			return "redirect:budget.do";
		}

	/* 날짜 변환 */
	@InitBinder
	public void initBinder(WebDataBinder binder) {
		binder.registerCustomEditor(Date.class, new CustomDateEditor(new SimpleDateFormat("yyyy-MM-dd"), false));
	}
	
	
}
