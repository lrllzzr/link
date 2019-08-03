package kr.co.link.vo;

import java.util.Date;

public class JisikinAnswer {

	private Integer no;
	private String writer;
	private Date createDate;
	private String selectedYn;
	private String secretYn;
	private Integer jisikinNo;
	private Integer recommend;
	private String userId;
	
	public JisikinAnswer() {}

	public Integer getNo() {
		return no;
	}

	public void setNo(Integer no) {
		this.no = no;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public String getSelectedYn() {
		return selectedYn;
	}

	public void setSelectedYn(String selectedYn) {
		this.selectedYn = selectedYn;
	}

	public String getSecretYn() {
		return secretYn;
	}

	public void setSecretYn(String secretYn) {
		this.secretYn = secretYn;
	}

	public Integer getJisikinNo() {
		return jisikinNo;
	}

	public void setJisikinNo(Integer jisikinNo) {
		this.jisikinNo = jisikinNo;
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
	
	
}
