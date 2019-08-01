package kr.co.link.service;

import java.util.List;
import java.util.Map;

import org.springframework.transaction.annotation.Transactional;

import kr.co.link.vo.Blog;
import kr.co.link.vo.User;

@Transactional
public interface BlogNeighborService {
	List<Blog> getNeighborByBlogNo(Map<String, Object> neighborMap);
	List<Map<String, Object>> getNeighborBlogMap(Integer blogNo);
	Integer isNeighbor(Map<String, Object> isNeighborMap);
	List<Map<String, Object>> getNeighborRequest(Integer blogNo);
	
}
