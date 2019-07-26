package kr.co.link.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.link.dao.BlogDao;
import kr.co.link.dao.BlogSubCategoryDao;
import kr.co.link.vo.Blog;
import kr.co.link.vo.BlogBoard;
import kr.co.link.vo.BlogCategory;
import kr.co.link.vo.BlogSubCategory;

@Service
public class BlogSubCategoryServiceImpl implements BlogSubCategoryService{

	@Autowired
	private BlogSubCategoryDao blogSubCategoryDao;
	@Autowired
	private BlogService blogService;
	@Autowired
	private BlogSubCategoryService blogSubCategoryService;
	@Autowired
	private BlogCategoryService blogCategoryService;
	@Autowired
	private BlogBoardService blogBoardService;
	
	@Override
	public List<BlogSubCategory> getSubCategoryByBlogNo(int blogNo) {
		List<BlogSubCategory> blogSubCategories = blogSubCategoryDao.getSubCategoryByBlogNo(blogNo);
		return blogSubCategories;
	}

	@Override
	public List<BlogSubCategory> getBlogSubCategoriesByuserId(String userId) {
		Blog blog = blogService.getBlogByUserId(userId);
		List<BlogSubCategory> blogSubCategories = blogSubCategoryService.getSubCategoryByBlogNo(blog.getNo());
		for(BlogSubCategory blogSubCategory : blogSubCategories) {
			
			List<BlogCategory> blogCategories = blogCategoryService.getCategoryBySubCategory(blogSubCategory.getNo());
			blogSubCategory.setBlogCategory(blogCategories);
			
			for(BlogCategory blogCategory : blogCategories) {
				List<BlogBoard> blogBoards = blogBoardService.getBoardByCategory(blogCategory.getNo());
				blogCategory.setBoards(blogBoards);
			}
		}
		return blogSubCategories;
	}


	@Override
	public List<BlogSubCategory> isMyBlog(Integer blogNo, String userId) {
		Blog blog = blogService.getBlogByUserId(userId);
		if(blog.getNo() == blogNo) {
			List<BlogSubCategory> blogSubCategories = blogSubCategoryService.getSubCategoryByBlogNo(blogNo);
			return blogSubCategories;
		} else {
			List<BlogSubCategory> blogSubCategories = blogSubCategoryService.getBlogSubCategoriesByuserId(userId);
			return blogSubCategories;
		}
	}

	@Override
	public void addNewSubCategory(BlogSubCategory blogSubCategory) {
		blogSubCategoryDao.addNewSubCategory(blogSubCategory);
	}

}
