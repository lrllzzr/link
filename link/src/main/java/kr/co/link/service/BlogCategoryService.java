package kr.co.link.service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import kr.co.link.vo.BlogCategory;

@Transactional
public interface BlogCategoryService {
	public List<BlogCategory> getCategoryBySubCategory(int subCategoryId);
	public BlogCategory getOneCategoryByOrder(Integer blogNo);
	public BlogCategory getCategoryByCategoryNo(Integer categoryNo);
	void addNewCategory(BlogCategory blogCategory);
}
