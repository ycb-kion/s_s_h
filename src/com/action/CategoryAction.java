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
	// ɾ��һ������
	public String deleteCategory() {
		categoryService.deleteCategory(cid);
		return "deletecategory";
	}
	// ���ӻ����һ������
	public String addOrUpdateCategory() {
//		if (category.getCategoryName().equals("")) {
//			return "forward:/categoryAdd.jsp";
//		}
		categoryService.addOrUpdateCategory(category);
		return "addorupdatecategory";

	}
	// �鿴��������
	public String listCategory() {
		categorys = categoryService.findAllCategory();
		return "listcategory";
	}
    //ͨ������id��ʾ����
	public String getCategoryById(){
		category=categoryService.getCategoryById(cid);
		return "getcategorybyid";
	}
	
}
