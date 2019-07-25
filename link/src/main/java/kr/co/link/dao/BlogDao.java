package kr.co.link.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import kr.co.link.vo.Blog;

@Repository
public interface BlogDao {
	public Blog getBlogByUserId(String userId);
	public Blog getBlogByBlogNo(Integer blogNo);
	public List<Blog> get3BlogByVisits();
	public void updateBlogByBlogNo(Blog blog);
}
