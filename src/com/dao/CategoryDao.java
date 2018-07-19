package com.dao;

import java.util.List;

import com.domain.Category;


public interface CategoryDao {
	public void deleteCategory(Category category);
	public void addOrUpdateCategory(Category category);
	public List<Category> findAllCategory();
	public Category getCategoryById(Integer cid);
}
