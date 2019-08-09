package kr.co.link.service;

import java.util.Map;

import kr.co.link.vo.Tv;
import kr.co.link.vo.TvLikes;

public interface TvLikeService {

	public void addLike(TvLikes tvLike);
	public int getCountLikeById(Map<String, Object> info);
	public int getCountByLike(int vno);
	
}
