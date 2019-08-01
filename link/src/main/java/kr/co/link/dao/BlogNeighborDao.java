package kr.co.link.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import kr.co.link.vo.Blog;
import kr.co.link.vo.BlogBoard;

@Repository
public interface BlogNeighborDao {
	List<Blog> getNeighborByBlogNo(Map<String, Object> neighborMap);
	
}
