package kr.co.link.vo;

import java.util.Date;
import java.util.List;

public class Blog {
	private Integer no;
	private String title;
	private String mainImg;
	private String theme;
	private String description;
	private Date createDate;
	private String userId;
	private List<BlogCategory> categories;
	
	public List<BlogCategory> getCategories() {
		return categories;
	}
	public void setCategories(List<BlogCategory> categories) {
		this.categories = categories;
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
	public String getMainImg() {
		return mainImg;
	}
	public void setMainImg(String mainImg) {
		this.mainImg = mainImg;
	}
	public String getTheme() {
		return theme;
	}
	public void setTheme(String theme) {
		this.theme = theme;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	
	
}
