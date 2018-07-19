package com.dao;

import java.util.List;

import com.domain.New;
public interface NewDao {
	public void deleteNew(New new_);
	public void addOrUpdateNew(New new_);
	public List<New> findAllNew();
	public New getNewById(Integer nid);
	public List<New> findNewsByCategoryName(String categoryName);
}
