package com.domain;

import java.util.HashSet;
import java.util.Set;

public class Category {
	private int id;
	private String categoryName;
	private Set<New> news=new HashSet<New>();

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCategoryName() {
		return categoryName;
	}

	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}

	public Set<New> getNews() {
		return news;
	}

	public void setNews(Set<New> news) {
		this.news = news;
	}
}
