package kr.co.link.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import kr.co.link.vo.BlogSubCategory;

@Repository
public interface BlogSubCategoryDao {
	public List<BlogSubCategory> getSubCategoryByBlogNo(int blogNo);
	void addNewSubCategory(BlogSubCategory blogSubCategory);
	void updateSubCategory(BlogSubCategory blogSubCategory);
	BlogSubCategory getSubCategoryBySubCatNo(Integer subCatNo);
}
