package kr.co.link.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.link.dao.BlogCategoryDao;
import kr.co.link.vo.BlogCategory;

@Service
public class BlogCategoryServiceImpl implements BlogCategoryService{
	
	@Autowired
	private BlogCategoryDao blogCategoryDao;
	
	@Override
	public List<BlogCategory> getCategoryBySubCategory(int subCategoryNo) {
		List<BlogCategory> blogCategories = blogCategoryDao.getCategoryBySubCategory(subCategoryNo);
		return blogCategories;
	}

	@Override
	public BlogCategory getOneCategoryByOrder(Integer blogNo) {
		BlogCategory blogCategory = blogCategoryDao.getOneCategoryByOrder(blogNo);
		return blogCategory;
	}

	@Override
	public BlogCategory getCategoryByCategoryNo(Integer categoryNo) {
		BlogCategory blogCategory = blogCategoryDao.getCategoryByCategoryNo(categoryNo);
		return blogCategory;
	}

	@Override
	public void addNewCategory(BlogCategory blogCategory) {
		blogCategoryDao.addNewCategory(blogCategory);
	}

}
