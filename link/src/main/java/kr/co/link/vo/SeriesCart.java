package kr.co.link.vo;

public class SeriesCart {

	private Integer no;
	private SeriesEpisode episode;
	private User user;

	public SeriesCart() {
	}

	public Integer getNo() {
		return no;
	}

	public void setNo(Integer no) {
		this.no = no;
	}

	public SeriesEpisode getEpisode() {
		return episode;
	}

	public void setEpisode(SeriesEpisode episode) {
		this.episode = episode;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	
	
}
