package kr.co.link.vo;

import java.util.Date;
import java.util.List;


public class Jisikin {

	private Integer no;
	private String title;
	private String contents;
	private JisikinCategory category;
	private String deadLineYn;
	private String secretYn;
	private Date createDate;
	private Integer mentalPoint;
	private Integer recommend;
	private String userId;
	
	private Integer countAnswer;
	
	
	public Jisikin() {}

	
	
	public Integer getCountAnswer() {
		return countAnswer;
	}



	public void setCountAnswer(Integer countAnswer) {
		this.countAnswer = countAnswer;
	}



	public Integer getNo() {
		return no;
	}

	public void setNo(Integer no) {
		this.no = no;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public JisikinCategory getCategory() {
		return category;
	}

	public void setCategory(JisikinCategory category) {
		this.category = category;
	}

	public String getDeadLineYn() {
		return deadLineYn;
	}

	public void setDeadLineYn(String deadLineYn) {
		this.deadLineYn = deadLineYn;
	}

	public String getSecretYn() {
		return secretYn;
	}

	public void setSecretYn(String secretYn) {
		this.secretYn = secretYn;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public Integer getMentalPoint() {
		return mentalPoint;
	}

	public void setMentalPoint(Integer mentalPoint) {
		this.mentalPoint = mentalPoint;
	}

	public Integer getRecommend() {
		return recommend;
	}

	public void setRecommend(Integer recommend) {
		this.recommend = recommend;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	
	// timeago
	public long getCreateTime() { return createDate.getTime(); }
}
