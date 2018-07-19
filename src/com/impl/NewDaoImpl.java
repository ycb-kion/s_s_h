package com.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.dao.NewDao;
import com.domain.New;
import com.util.HibernateUtil;

import org.hibernate.Query;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;

public class NewDaoImpl extends HibernateDaoSupport implements NewDao{

	@Override
	public void deleteNew(New new_) {
		// TODO Auto-generated method stub
		getHibernateTemplate().delete(new_);
	}

	@Override
	public void addOrUpdateNew(New new_) {
		// TODO Auto-generated method stub
		getHibernateTemplate().saveOrUpdate(new_);
	}

	@Override
	public List<New> findAllNew() {
		// TODO Auto-generated method stub
		@SuppressWarnings("unchecked")
		List<New> news=(List<New>) getHibernateTemplate().find("from New");
		return news;
	}

	@Override
	public New getNewById(Integer nid) {
		// TODO Auto-generated method stub
		return getHibernateTemplate().get(New.class, nid);
	}

	@Override
	public List<New> findNewsByCategoryName(String categoryName) {
		// TODO Auto-generated method stub
		List<New> news = (List<New>)getHibernateTemplate().find("from New as n where n.category.categoryName=?", categoryName);
		return news;
	}



      
}
