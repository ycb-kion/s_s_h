package com.service;

import java.util.List;

import com.domain.Category;

public interface CategoryService {
	   public void deleteCategory(Integer id);
	   public void addOrUpdateCategory(Category category);
	   public List<Category> findAllCategory();
	   public Category getCategoryById(Integer id);
}
