package kr.co.link.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import kr.co.link.vo.BlogBoard;

@Repository
public interface BlogBoardDao {
	public List<BlogBoard> getBoardByCategory(int categoryNo);
	public BlogBoard getBoardByboardNo(int boardNo);
	public void addBoard(BlogBoard blogBoard);
}
