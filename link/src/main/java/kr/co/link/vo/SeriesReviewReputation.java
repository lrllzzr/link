package kr.co.link.vo;

public class SeriesReviewReputation {

	private Integer no;
	private SeriesReview review;
	private Integer like;
	private Integer dislike;
	private User user;

	public SeriesReviewReputation() {
	}

	public Integer getNo() {
		return no;
	}

	public void setNo(Integer no) {
		this.no = no;
	}

	public SeriesReview getReview() {
		return review;
	}

	public void setReview(SeriesReview review) {
		this.review = review;
	}

	public Integer getLike() {
		return like;
	}

	public void setLike(Integer like) {
		this.like = like;
	}

	public Integer getDislike() {
		return dislike;
	}

	public void setDislike(Integer dislike) {
		this.dislike = dislike;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	
	
}
