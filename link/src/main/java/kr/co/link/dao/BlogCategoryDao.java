package kr.co.link.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import kr.co.link.vo.BlogCategory;

@Repository
public interface BlogCategoryDao {
	public List<BlogCategory> getCategoryBySubCategory(int subCategoryNo);
}
