package kr.co.link.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.link.dao.BlogDao;
import kr.co.link.vo.Blog;

@Service
public class BlogServiceImpl implements BlogService{
	
	@Autowired
	private BlogDao blogDao;
	
	public Blog getBlogByUserId(String userId) {
		Blog blog = blogDao.getBlogByUserId(userId);
		return blog;
	}

	@Override
	public Blog getBlogByBlogNo(Integer blogNo) {
		Blog blog = blogDao.getBlogByBlogNo(blogNo);
		return blog;
	}

	@Override
	public List<Blog> get3BlogByVisits() {
		List<Blog> blogs = blogDao.get3BlogByVisits();
		return blogs;
	}
}
