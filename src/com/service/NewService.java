package com.service;

import java.util.List;



import com.domain.New;

public interface NewService {
	public void deleteNew(Integer id);
	   public void addOrUpdateNew(New new_);
	   public List<New> findAllNew();
	   public New getNewById(Integer id);
	public List<New> findNewsByCategoryName(String categoryName);
}
