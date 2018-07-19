package com.action;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import com.domain.Category;
import com.domain.New;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.service.CategoryService;
import com.service.NewService;
import com.serviceimpl.CategoryServiceImpl;
import com.serviceimpl.NewServiceImpl;

public class NewAction extends ActionSupport implements ModelDriven{
	/**
	 * 新闻的动作类
	 */
	//使用模型驱动
	private New new_=new New();
	@Override
	public Object getModel() {
		// TODO Auto-generated method stub
		return new_;
	}
	@Resource
	private NewService newService;
	@Resource
	private CategoryService categoryService;
	private List<Category> categorys;
	private int categoryId;
	private List<New> news;
	private int nid;
	private Category category;
	public Category getCategory() {
		return category;
	}
	public void setCategory(Category category) {
		this.category = category;
	}
	public int getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}
	public NewAction() {
		newService = new NewServiceImpl();
		categoryService = new CategoryServiceImpl();
	}
	public List<Category> getCategorys() {
		return categorys;
	}
	public void setCategorys(List<Category> categorys) {
		this.categorys = categorys;
	}
	public int getNid() {
		return nid;
	}
	public void setNid(int nid) {
		this.nid = nid;
	}
	public New getNew_() {
		return new_;
	}
	public void setNew_(New new_) {
		this.new_ = new_;
	}
	public List<New> getNews() {
		return news;
	}
	public void setNews(List<New> news) {
		this.news = news;
	}
	public String deleteNew() {
		newService.deleteNew(nid);
		return "deletenew";
	}
	//添加日期
	public String addOrUpdateNew() {
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		new_.setIssueTime(df.format(new Date()));
		newService.addOrUpdateNew(new_);
		return "addorupdatenew";
	}
	//显示所有新闻
	public String listNew() {
		news = newService.findAllNew();
		return "listnew";
	}	
	//更新新闻操作
	public String updateNew() {
		categorys = categoryService.findAllCategory();
		new_ = newService.getNewById(nid);
		return "updatenew";
	}	
	//通过类型查找新闻
	public String getAllCategoryForAdd() {
		categorys = categoryService.findAllCategory();
		return "getallcategoryforadd";
	}	
	//显示所选新闻
	public String showNew() {
		new_ = newService.getNewById(nid);
		return "shownew";

	}	
	//客户端显示新闻
	public String showNew1() {
		news = newService.findAllNew();
		return "shownew1";
	}
	
	//查找所有用户
	public String findNewByCategoryNameNews(){
		categorys = categoryService.findAllCategory();
		category = categoryService.getCategoryById(categoryId);
		
		news = newService.findNewsByCategoryName(category.getCategoryName());
		System.out.println(category.getCategoryName());
		return "listNews";
	}
	


}
