package com.action;

import java.util.List;

import javax.annotation.Resource;

import com.domain.Category;
import com.domain.New;
import com.opensymphony.xwork2.ActionSupport;
import com.service.CategoryService;
import com.serviceimpl.CategoryServiceImpl;

public class CategoryAction extends ActionSupport {
	@Resource private CategoryService categoryService;
	private int cid;
	private String message;
	private Category category;
	private List<Category> categorys;
	public CategoryAction()
	{
		categoryService=new CategoryServiceImpl();
	}	
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public Category getCategory() {
		return category;
	}
	public void setCategory(Category category) {
		this.category = category;
	}
	public List<Category> getCategorys() {
		return categorys;
	}
	public void setCategorys(List<Category> categorys) {
		this.categorys = categorys;
	}	
	// 删除一个类型
	public String deleteCategory() {
		categoryService.deleteCategory(cid);
		return "deletecategory";
	}
	// 增加或更新一个类型
	public String addOrUpdateCategory() {
//		if (category.getCategoryName().equals("")) {
//			return "forward:/categoryAdd.jsp";
//		}
		categoryService.addOrUpdateCategory(category);
		return "addorupdatecategory";

	}
	// 查看所有类型
	public String listCategory() {
		categorys = categoryService.findAllCategory();
		return "listcategory";
	}
    //通过类型id显示新闻
	public String getCategoryById(){
		category=categoryService.getCategoryById(cid);
		return "getcategorybyid";
	}
	
}
