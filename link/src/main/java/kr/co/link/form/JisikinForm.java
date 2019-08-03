package kr.co.link.form;

import java.util.List;

public class JisikinForm {

	private String title;
	private String contents;
	private Integer categoryNo;
	private String secretYn;
	private Integer mentalPoint;
	private List<String> tags;
	
	private String tagName;
	
	public JisikinForm() {}

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

	public Integer getCategoryNo() {
		return categoryNo;
	}

	public void setCategoryNo(Integer categoryNo) {
		this.categoryNo = categoryNo;
	}

	public String getSecretYn() {
		return secretYn;
	}

	public void setSecretYn(String secretYn) {
		this.secretYn = secretYn;
	}

	public Integer getMentalPoint() {
		return mentalPoint;
	}

	public void setMentalPoint(Integer mentalPoint) {
		this.mentalPoint = mentalPoint;
	}

	public List<String> getTags() {
		return tags;
	}

	public void setTags(List<String> tags) {
		this.tags = tags;
	}

	public String getTagName() {
		return tagName;
	}

	public void setTagName(String tagName) {
		this.tagName = tagName;
	}

	
}
