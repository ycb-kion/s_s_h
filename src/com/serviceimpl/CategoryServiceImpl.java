package com.serviceimpl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.transaction.annotation.Transactional;

import com.dao.CategoryDao;
import com.domain.Category;
import com.service.CategoryService;

@Transactional(readOnly = false)
public class CategoryServiceImpl implements CategoryService {
	@Resource
	private CategoryDao categoryDao;

	public void setCategoryDao(CategoryDao categoryDao) {
		this.categoryDao = categoryDao;
	}

	@Override
	public void deleteCategory(Integer id) {
		Category category = categoryDao.getCategoryById(id);
		categoryDao.deleteCategory(category);
	}

	@Override
	public List<Category> findAllCategory() {
		// TODO Auto-generated method stub
		return categoryDao.findAllCategory();
	}

	@Override
	public Category getCategoryById(Integer id) {
		// TODO Auto-generated method stub
		return categoryDao.getCategoryById(id);
	}

	@Override
	public void addOrUpdateCategory(Category category) {
		// TODO Auto-generated method stub
		categoryDao.addOrUpdateCategory(category);
	}

}
