package kr.co.link.service;

import java.util.List;
import java.util.Map;

import org.springframework.transaction.annotation.Transactional;

import kr.co.link.vo.BlogBoard;

@Transactional
public interface BlogBoardService {
	public List<BlogBoard> getBoardByCategory(int categoryNo);
	public BlogBoard getBoardByboardNo(int boardNo); 
	public void addBoard(BlogBoard blogBoard);
	public Integer countBoardsByCategoryId(Integer categoryNo);
	List<BlogBoard> getBoardsByRange(Map<String, Object> rangeMap);
	Integer getBoardsCountByCategoryNo(Integer catNo);
}
