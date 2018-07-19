package com.serviceimpl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.transaction.annotation.Transactional;

import com.dao.NewDao;
import com.domain.New;
import com.service.NewService;

@Transactional(readOnly = false)
public class NewServiceImpl implements NewService {
	@Resource
	private NewDao newdao;

	public void setNewdao(NewDao newdao) {
		this.newdao = newdao;
	}

	@Override
	public void deleteNew(Integer id) {
		// TODO Auto-generated method stub
		New new_ = newdao.getNewById(id);
		newdao.deleteNew(new_);
	}

	@Override
	public void addOrUpdateNew(New new_) {
		// TODO Auto-generated method stub
		newdao.addOrUpdateNew(new_);
	}

	@Override
	public List<New> findAllNew() {
		// TODO Auto-generated method stub
		return newdao.findAllNew();
	}

	@Override
	public New getNewById(Integer id) {
		// TODO Auto-generated method stub
		return newdao.getNewById(id);
	}

	@Override
	public List<New> findNewsByCategoryName(String categoryName) {
		
		List<New> list11=newdao.findNewsByCategoryName(categoryName);
		return list11;
	}

}
