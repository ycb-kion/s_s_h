package com.action;

import javax.annotation.Resource;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.domain.User;
import com.service.UserService;

public class UserAction extends ActionSupport implements ModelDriven<User>{
	 
	private User user=new User();
	
	@Override
	public User getModel() {
		// TODO Auto-generated method stub
		return user;
	}


	//注入Service
	@Resource
	private UserService userService;

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	//登陆
	public String login(){
//		System.out.println("月初白");
		User existUser=userService.login(user);
		if (existUser == null) {
			this.addActionError("用户名或密码错误");
			return "relogin";
		}else {
			ActionContext.getContext().getSession().put("existUser", existUser);
			return "login";
		}
		
	}


	
}
