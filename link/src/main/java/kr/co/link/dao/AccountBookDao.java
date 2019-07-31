package kr.co.link.dao;

import java.util.List;
import java.util.Map;

import kr.co.link.vo.AccountBookTerm;

public interface AccountBookDao {

	void addAccountTerm(AccountBookTerm term); 					/*지출내역추가*/
	List<AccountBookTerm> getExpenseByuserId(String userId);	/*지출내역조회*/
	List<AccountBookTerm> getIncomeByuserId(String userId );	/*수입내역조회*/
}
