package kr.co.link.vo;

import java.util.Date;

public class Band {

	private Integer no;
	private String name;
	private String photo;
	private String secretYn;
	private String nameOpenYn;
	private String joinApplyYn;
	private String openYn;
	private Date createDate;
	private User user;
	
	public Integer getNo() {
		return no;
	}
	public void setNo(Integer no) {
		this.no = no;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	public String getSecretYn() {
		return secretYn;
	}
	public void setSecretYn(String secretYn) {
		this.secretYn = secretYn;
	}
	public String getNameOpenYn() {
		return nameOpenYn;
	}
	public void setNameOpenYn(String nameOpenYn) {
		this.nameOpenYn = nameOpenYn;
	}
	public String getJoinApplyYn() {
		return joinApplyYn;
	}
	public void setJoinApplyYn(String joinApplyYn) {
		this.joinApplyYn = joinApplyYn;
	}
	public String getOpenYn() {
		return openYn;
	}
	public void setOpenYn(String openYn) {
		this.openYn = openYn;
	}
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	
	

}
