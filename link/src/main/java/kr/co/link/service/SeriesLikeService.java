package kr.co.link.service;

import kr.co.link.vo.SeriesLike;

public interface SeriesLikeService {

	int getCountLikesByVodNo(int no);
	void addLike(SeriesLike seriesLike);
	void deleteLike(SeriesLike seriesLike);
	int getCountabc(SeriesLike seriesLike);
}
