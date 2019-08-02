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

	/***** 가계부:주요 기능:지출 수입 내역 추가, 삭제,수정 (update, insert, delete) *****/

	@RequestMapping(value = "/expense.do", method = RequestMethod.POST) /* 지출 내역 추가 */
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

	@RequestMapping(value = "/expense.do", method = RequestMethod.GET) /* 지출 리스트 */
	public String expenseList(Model model, HttpSession session, String userId) {

		User user = (User) session.getAttribute("LOGIN_USER");
		userId = user.getId();

		//지출내역
		List<AccountBookTerm> expenseList = accountbookService.getExpenseByuserId(userId);
		model.addAttribute("expenseList", expenseList);
		
		//지출카테고리
		List<AccountBookCategory> expenseCategory = accountbookService.getExpenseCategory();
		model.addAttribute("expenseCategory", expenseCategory);

		//지출 cash,card 합계
		long totalCash = 0;
		long totalCard = 0;
		
		for(AccountBookTerm term:expenseList) {
			totalCard += term.getCard();
			totalCash += term.getCash();
		}
		model.addAttribute("totalCash",totalCash);
		model.addAttribute("totalCard",totalCard);
		
		//카테고리별 지출&수입총금액 조회
		List<HashMap<String, Object>> totalExpense=accountbookService.getCategoryAndExpenseByCategoryNo(userId);
		model.addAttribute("totalExpense", totalExpense);
		
		return "accountbook/a/main_expense";
	}

	@RequestMapping(value = "/income.do", method = RequestMethod.POST) /* 수입 내역 추가 */
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

	@RequestMapping(value = "/income.do") /* 수입 내역 조회 */
	public String incomeList(Model model, HttpSession session, String userId) {

		User user = (User) session.getAttribute("LOGIN_USER");
		userId = user.getId();

		//수입 내역
		List<AccountBookTerm> incomeList = accountbookService.getIncomeByuserId(userId);
		model.addAttribute("incomeList", incomeList);

		//수입 카테고리
		List<AccountBookCategory> incomeCategory = accountbookService.getIncomeCategory();
		model.addAttribute("incomeCategory", incomeCategory);

		//수입 합계
		int totalCash = 0;
		for(AccountBookTerm term:incomeList) {
			totalCash += term.getCash();
		}
		model.addAttribute("totalCash", totalCash);

		List<HashMap<String, Object>> totalIncome=accountbookService.getCategoryAndIncomeByCategoryNo(userId);
		model.addAttribute("totalIncome", totalIncome);

		return "accountbook/a/main_income";
	}

	@RequestMapping(value = "/calendar.do") /* 달력 */
	public String calendar() {
		return "accountbook/a/main_calendar";
	}

	/***** 보고서:주요 기능:조회(select) *****/

	@RequestMapping(value = "/monthly.do") /* 월보고서 */
	public String monthlyReport() {
		return "accountbook/b/report_monthly";
	}

	@RequestMapping(value = "/annual.do") /* 연보고서 */
	public String annualReport() {
		return "accountbook/b/report_annual";
	}

	@RequestMapping(value = "/analysis.do") /* 지출분석 */
	public String analysis() {
		return "accountbook/b/report_analysis";
	}

	/***** 월결산:주요 기능:글저장,삭제,수정,조회(update, insert, delete,select) *****/

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
	@RequestMapping(value = "/budget.do") /* 예산 조회*/
	public String listbudget() {
		
		return "accountbook/budget_form";
	}
	@RequestMapping(value="", method = RequestMethod.POST)
	public String addbudget() {
		
		return "redirect:budget.do";
	}
	

	
	
	/*날짜 변환*/
	@InitBinder
	public void initBinder(WebDataBinder binder) {
		binder.registerCustomEditor(Date.class, new CustomDateEditor(new SimpleDateFormat("yyyy-MM-dd"), false));
	}
}
