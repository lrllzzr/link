package kr.co.link.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.link.dao.BlogBoardDao;
import kr.co.link.vo.BlogBoard;

@Service
public class BlogBoardServiceImpl implements BlogBoardService{

	@Autowired
	private BlogBoardDao blogBoardDao;
	
	@Override
	public List<BlogBoard> getBoardByCategory(int categoryNo) {
		List<BlogBoard> blogBoards = blogBoardDao.getBoardByCategory(categoryNo); 
		return blogBoards;
	}

	@Override
	public BlogBoard getBoardByboardNo(int boardNo) {
		BlogBoard blogBoard = blogBoardDao.getBoardByboardNo(boardNo);
		return blogBoard;
	}

	@Override
	public void addBoard(BlogBoard blogBoard) {
		blogBoardDao.addBoard(blogBoard);
	}

	@Override
	public Integer countBoardsByCategoryId(Integer categoryNo) {
		Integer boardCount = blogBoardDao.countBoardsByCategoryId(categoryNo);
		return boardCount;
	}
}
