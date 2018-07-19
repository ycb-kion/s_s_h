package com.serviceimpl;


import javax.annotation.Resource;

import com.dao.UserDao;
import com.domain.User;
import com.service.UserService;


public class UserServiceImpl implements UserService{
	//×¢ÈëDao
	@Resource
	private UserDao userDao;

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	@Override
	public User login(User user) {
		User existUser = userDao.findByUsernameAndPassword(user);
		return existUser;
	}


	
}
