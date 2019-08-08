package kr.co.link.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.link.dao.BlogDao;
import kr.co.link.vo.Blog;
import kr.co.link.vo.User;

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

	@Override
	public void updateBlogByBlogNo(Blog blog) {
		blogDao.updateBlogByBlogNo(blog);
	}

	@Override
	public void addNewBlog(Blog blog) {
		blogDao.addNewBlog(blog);
	}

	@Override
	public void setBasicBlog(Blog blog, User user, String filename) {
		blog.setMainImg(filename);
		blog.setTheme("theme11.jpg");
		blog.setUserId(user.getId());
		blog.setBackgroundColor("#ffffff");
		blog.setFontColor("#7a706d");
		blog.setOpacity(0.9);
		blog.setAtagColor("#000000");
		blog.setHrColor("#666666");
		blog.setBodyColor("#f8dfcf");
		blog.setPageNumBackgroundColor("#e9f3f0");
		blog.setPageNumColor("#b0b0b0");
		blog.setFirstCol("profile");
		blog.setSecondCol("category");
		blog.setThirdCol("bloginfo");
		blog.setLayout(1);
		blog.setPageNumBorderColor("#f2f2f2");
	}
	@Override
	public List<Blog> getAllblogs() {
		return blogDao.getAllblogs();
	}
	@Override
	public List<Map<String, Object>> getAllBlogsByType(Map<String, Object> map) {
		return blogDao.getAllBlogsByType(map);
	}
	@Override
	public Integer getBlogsCountByType(Map<String, Object> map) {
		return blogDao.getBlogsCountByType(map);
	}

}
