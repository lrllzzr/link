package kr.co.link.service;

import java.util.List;

import kr.co.link.vo.BlogCategory;

public interface BlogCategoryService {
	public List<BlogCategory> getCategoryBySubCategory(int subCategoryId);
	public BlogCategory getOneCategoryByOrder(Integer blogNo);
	public BlogCategory getCategoryByCategoryNo(Integer categoryNo);
}
