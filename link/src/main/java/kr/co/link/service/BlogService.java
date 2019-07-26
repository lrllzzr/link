package kr.co.link.service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import kr.co.link.vo.Blog;
import kr.co.link.vo.User;

@Transactional
public interface BlogService {
	public Blog getBlogByUserId(String id);
	public Blog getBlogByBlogNo(Integer blogNo);
	public List<Blog> get3BlogByVisits();
	public void updateBlogByBlogNo(Blog blog);
	public void addNewBlog(Blog blog);
	void setBasicBlog(Blog blog, User user, String filename);
}
