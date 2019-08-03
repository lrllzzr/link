package kr.co.link.vo;

import java.util.Date;

public class JisikinAnswer {

	private Integer no;
	private Date createDate;
	private String contents;
	private String selectedYn;
	private String secretYn;
	private Integer jisikinNo;
	private Integer recommend;
	private String userId;
	
	public JisikinAnswer() {}

	
	
	public String getContents() {
		return contents;
	}



	public void setContents(String contents) {
		this.contents = contents;
	}



	public Integer getNo() {
		return no;
	}

	public void setNo(Integer no) {
		this.no = no;
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
	
	
	// timeago
	public long getCreateTime() { return createDate.getTime(); }
	
}
