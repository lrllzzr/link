package kr.co.link.service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import kr.co.link.vo.BlogSubCategory;

@Transactional
public interface BlogSubCategoryService{
	public List<BlogSubCategory> getSubCategoryByBlogNo(int blogNo);
	List<BlogSubCategory> getBlogSubCategoriesByuserId(String userId);
	List<BlogSubCategory> isMyBlog(Integer blogNo, String userId);
	void addNewSubCategory(BlogSubCategory blogSubCategory);
	void updateSubCategory(BlogSubCategory blogSubCategory);
	BlogSubCategory getSubCategoryBySubCatNo(Integer subCatNo);
}
