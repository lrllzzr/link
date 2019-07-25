package kr.co.link.service;

import java.util.List;

import kr.co.link.vo.BlogSubCategory;

public interface BlogSubCategoryService{
	public List<BlogSubCategory> getSubCategoryByBlogNo(int blogNo);
	List<BlogSubCategory> getBlogSubCategoriesByuserId(String userId);
	List<BlogSubCategory> isMyBlog(Integer blogNo, String userId);
}
