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


	//ע��Service
	@Resource
	private UserService userService;

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	//��½
	public String login(){
//		System.out.println("�³���");
		User existUser=userService.login(user);
		if (existUser == null) {
			this.addActionError("�û������������");
			return "relogin";
		}else {
			ActionContext.getContext().getSession().put("existUser", existUser);
			return "login";
		}
		
	}


	
}
