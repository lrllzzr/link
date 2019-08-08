package kr.co.link.vo;

public class TvCommentLikes {

	private Integer no;
	private String stasus;
	private TvComments tvComments;
	private User user;
	
	
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public TvCommentLikes() {
		super();
	}
	public Integer getNo() {
		return no;
	}
	public void setNo(Integer no) {
		this.no = no;
	}
	public String getStasus() {
		return stasus;
	}
	public void setStasus(String stasus) {
		this.stasus = stasus;
	}
	public TvComments getTvComments() {
		return tvComments;
	}
	public void setTvComments(TvComments tvComments) {
		this.tvComments = tvComments;
	}
	
	
}
