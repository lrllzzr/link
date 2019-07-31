package kr.co.link.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.link.form.AccountBookExpenseForm;
import kr.co.link.service.AccountBookTermService;
import kr.co.link.vo.AccountBookTerm;
import kr.co.link.vo.User;

@Controller
@RequestMapping(value = "/accountbook")
public class AccountBookController {
	@Autowired
	private AccountBookTermService accountbookService;

	/***** 가계부:주요 기능:지출 수입 내역 추가, 삭제,수정 (update, insert, delete) *****/

	@RequestMapping(value = "/expense.do", method = RequestMethod.POST) /* 지출 내역 추가 */
	public String addTerm(AccountBookExpenseForm form, Model model) {
		
		return "accountbook/a/main_expense";
	}

	@RequestMapping(value = "/expense.do") /* 지출 리스트 */
	public String expenseList(Model model, HttpSession session, String userId) {
		 User user=(User)session.getAttribute("LOGIN_USER"); 
		 userId=user.getId();
		
		 List<AccountBookTerm> expenseList=accountbookService.getExpenseByuserId(userId);
		 model.addAttribute("expenseList",expenseList);
		 
		
		return "accountbook/a/main_expense";
	}

	@RequestMapping(value = "/income.do", method = RequestMethod.POST) /* 수입 내역 추가 */
	public String income() {
		return "accountbook/a/main_income";
	}

	@RequestMapping(value = "/income.do") /* 수입 내역 조회 */
	public String incomeList(Model model, HttpSession session, String userId) {
		User user=(User)session.getAttribute("LOGIN_USER"); 
		 userId=user.getId();
		
		 List<AccountBookTerm> incomeList=accountbookService.getIncomeByuserId(userId);
		 model.addAttribute("incomeList",incomeList);
		
		
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
	@RequestMapping(value = "/budget.do") /* 예산 */
	public String budget() {
		return "accountbook/budget_form";
	}

}
