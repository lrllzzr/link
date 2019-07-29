package kr.co.link.vo;

import java.sql.Date;

public class AccountBookExpense {

	private Integer cash;
	private Integer card;
	private Integer no;
	private String detail;
	private Date date;
	private Integer remainAmount;
	private AccountBookCategory category;
	private String memo;
	private User user;
	private AccountBookTag tag;
	
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	
	public Integer getCash() {
		return cash;
	}
	public void setCash(Integer cash) {
		this.cash = cash;
	}
	public Integer getCard() {
		return card;
	}
	public void setCard(Integer card) {
		this.card = card;
	}
	public Integer getNo() {
		return no;
	}
	public void setNo(Integer no) {
		this.no = no;
	}
	public String getDetail() {
		return detail;
	}
	public void setDetail(String detail) {
		this.detail = detail;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public Integer getRemainAmount() {
		return remainAmount;
	}
	public void setRemainAmount(Integer remainAmount) {
		this.remainAmount = remainAmount;
	}
	public AccountBookCategory getCategory() {
		return category;
	}
	public void setCategory(AccountBookCategory category) {
		this.category = category;
	}
	public String getMemo() {
		return memo;
	}
	public void setMemo(String memo) {
		this.memo = memo;
	}
	public AccountBookTag getTag() {
		return tag;
	}
	public void setTag(AccountBookTag tag) {
		this.tag = tag;
	}
	
	
	
}
