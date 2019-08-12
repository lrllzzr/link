package kr.co.link.service;


import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.link.dao.TvCommentLikeDao;
@Service
public class TvCommentLikeServiceImpl implements TvCommentLikeService {

	@Autowired
	private TvCommentLikeDao tvCommentLikeDao;
	
	@Override
	public void addCommentStatus(Map<String, Object> info) {
		tvCommentLikeDao.addCommentStatus(info);
	}
	
	@Override
	public void deleteCommentStatus(int cno) {
		tvCommentLikeDao.deleteCommentStatus(cno);
	}
	
	
	@Override
	public void updateCommentStatus(Map<String, Object> status) {
		tvCommentLikeDao.updateCommentStatus(status);
	}
	
	
}

