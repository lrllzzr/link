package kr.co.link.vo;

import java.util.Date;

public class BlogBoard {
	private Integer no;
	private String title;
	private String contents;
	private Date createDate;
	private Integer categoryNo;
	private String mainImg;
	
	
	public String getMainImg() {
		return mainImg;
	}
	public void setMainImg(String mainImg) {
		this.mainImg = mainImg;
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
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	public Integer getCategoryNo() {
		return categoryNo;
	}
	public void setCategoryNo(Integer categoryNo) {
		this.categoryNo = categoryNo;
	}
	
	
}
