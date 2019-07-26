package kr.co.link.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/accountbook")
public class AccountBookController {
	
	/***** 가계부:주요 기능:지출 수입 내역 저장, 삭제,수정 (update, insert, delete) *****/
	
	@RequestMapping(value="/expense.do") 						/*지출*/
	public String expense() {
		return "accountbook/a/main_expense";
	}
	
	@RequestMapping(value = "/income.do")						/*수입*/
	public String income() {
		return "accountbook/a/main_income";
	}
	
	@RequestMapping(value = "/calendar.do")						/*달력*/
	public String calendar() {
		return "accountbook/a/main_calendar";
	}
	
	
	
	
	
	
	/***** 보고서:주요 기능:조회(select) *****/
	
	@RequestMapping(value = "/monthly.do")						/*월보고서*/
	public String monthlyReport() {
		return "accountbook/b/report_monthly";
	}
	@RequestMapping(value = "/annual.do")						/*연보고서*/
	public String annualReport() {
		return "accountbook/b/report_annual";
	}
	@RequestMapping(value = "/analysis.do")						/*지출분석*/
	public String analysis() {
		return "accountbook/b/report_analysis";
	}

	
	
	
	
	
	/***** 월결산:주요 기능:글저장,삭제,수정,조회(update, insert, delete,select) *****/
	
	@RequestMapping(value = "/form.do")							/*폼*/
	public String form() {
		return "accountbook/c/monthlyAccount_form";
	}
	
	@RequestMapping(value = "/mylist.do")						/*목록(개인)*/
	public String myList() {
		return "accountbook/c/monthlyAccount_myList";
	}
	
	@RequestMapping(value = "/list.do")							/*목록(전체)*/
	public String allList() {
		return "accountbook/c/monthlyAccount_allList";
	}
	
	@RequestMapping(value = "/detail.do")						/*디테일*/
	public String detail() {	
		return "accountbook/c/monthlyAccount_detail";
	}
	
	/***** 예산:주요기능:글저장, 수정, 삭제 *****/
	@RequestMapping(value = "/budget.do")						/*예산*/
	public String budget() {
		return "accountbook/budget_form";
	}
	              
	
}
