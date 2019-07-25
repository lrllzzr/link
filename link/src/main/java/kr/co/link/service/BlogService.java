package kr.co.link.service;

import java.util.List;

import kr.co.link.vo.Blog;

public interface BlogService {
	public Blog getBlogByUserId(String id);
	public Blog getBlogByBlogNo(Integer blogNo);
	public List<Blog> get3BlogByVisits();
	public void updateBlogByBlogNo(Blog blog);
}
