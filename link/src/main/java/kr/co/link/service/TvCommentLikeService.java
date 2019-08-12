package kr.co.link.service;

import java.util.Map;


public interface TvCommentLikeService {
	
	public void addCommentStatus(Map<String, Object> info);
	public void updateCommentStatus(Map<String, Object>status);
	public void deleteCommentStatus(int cno);
}
