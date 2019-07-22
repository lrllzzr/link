package kr.co.link.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.link.dao.BlogSubCategoryDao;
import kr.co.link.vo.BlogSubCategory;

@Service
public class BlogSubCategoryServiceImpl implements BlogSubCategoryService{

	@Autowired
	BlogSubCategoryDao blogSubCategoryDao;
	
	@Override
	public List<BlogSubCategory> getSubCategoryByBlogNo(int blogNo) {
		List<BlogSubCategory> blogSubCategories = blogSubCategoryDao.getSubCategoryByBlogNo(blogNo);
		return blogSubCategories;
	}
}
