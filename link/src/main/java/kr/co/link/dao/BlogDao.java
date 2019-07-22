package kr.co.link.dao;

import org.springframework.stereotype.Repository;

import kr.co.link.vo.Blog;

@Repository
public interface BlogDao {
	public Blog getBlogByUserId(String userId);
}
