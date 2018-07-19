package com.impl;

import java.util.List;

import org.springframework.orm.hibernate5.support.HibernateDaoSupport;

import com.dao.CategoryDao;
import com.domain.Category;

public class CategoryDaoImpl extends HibernateDaoSupport implements CategoryDao {

	@Override
	public void deleteCategory(Category category) {
		getHibernateTemplate().delete(category);
	}

	@Override
	public void addOrUpdateCategory(Category category) {
		getHibernateTemplate().saveOrUpdate(category);
	}

	@Override
	public Category getCategoryById(Integer cid) {
		return getHibernateTemplate().get(Category.class, cid);

	}


	@Override
	public List<Category> findAllCategory() {
		// TODO Auto-generated method stub
		 @SuppressWarnings("unchecked")
		List<Category> categorys=(List<Category>)getHibernateTemplate().find("from Category");
		 return categorys;
	}

	//
	// public List<Category> findAllCategory() {
	// Session session = HibernateUtil.getSession();
	// Transaction tx = session.beginTransaction();
	// Query query = session.createQuery("from Category");
	// List<Category> categorys = query.list();
	// tx.commit();
	// return categorys;
	// }
	//
	//
	//
	// @Override
	// public Category getCategoryById(Integer id) {
	// Session session = HibernateUtil.getSession();
	// Transaction tx = session.beginTransaction();
	// Category category = (Category) session.get(Category.class, id);
	// tx.commit();
	// return category;
	// }
	//
	// @Override
	// public void deleteCategory(Category category) {
	// // TODO Auto-generated method stub
	// Session session = HibernateUtil.getSession();
	// Transaction tx = session.beginTransaction();
	// try {
	// // 定义事务
	// session.delete(category);
	// tx.commit();
	// } catch (Exception e) {
	// if (tx != null) {
	// tx.rollback();
	// }
	// e.printStackTrace();
	// }
	// }
	//
	//
	//
	//
	//
	// @Override
	// public void addOrUpdateCategory(Category category) {
	// // TODO Auto-generated method stub
	//
	// }

}
