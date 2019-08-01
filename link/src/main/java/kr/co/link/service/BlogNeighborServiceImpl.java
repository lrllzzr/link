package kr.co.link.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.link.dao.BlogDao;
import kr.co.link.dao.BlogNeighborDao;
import kr.co.link.vo.Blog;
import kr.co.link.vo.User;

@Service
public class BlogNeighborServiceImpl implements BlogNeighborService{

	@Autowired
	private BlogNeighborDao blogNeighborDao;
	
	@Override
	public List<Blog> getNeighborByBlogNo(Map<String, Object> neighborMap) {
		return blogNeighborDao.getNeighborByBlogNo(neighborMap);
	}
	
}
