package kr.co.link.vo;

import java.util.Date;

import kr.co.link.util.DateUtils;



public class AccountBookTerm {

	private Integer cash;
	private Integer card;
	private Integer no;
	private String detail;
	private Date date;
	private Integer remainAmount;
	private AccountBookCategory category;
	private String memo;
	private String id;
	private String gubun;
	private Date createDate;
	private AccountBookTag tag;
	private Integer totalAmount;
	
	
	public Integer getTotalAmount() {
		return totalAmount;
	}
	public void setTotalAmount(Integer totalAmount) {
		this.totalAmount = totalAmount;
	}
	public AccountBookTag getTag() {
		return tag;
	}
	public void setTag(AccountBookTag tag) {
		this.tag = tag;
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
	public String getDateString() {
		return DateUtils.dateToString(date);
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
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getGubun() {
		return gubun;
	}
	public void setGubun(String gubun) {
		this.gubun = gubun;
	}
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	
	
	
	
}
