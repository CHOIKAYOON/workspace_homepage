package com.user.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.user.dao.UserDAO;
import com.user.domain.UserVO;

@Service
public class UserService{
	
	@Inject
	private UserDAO dao;
	
	public UserVO login(UserVO uservo) throws Exception{
		return dao.login(uservo);
	};
	
	public UserVO userinfo(UserVO uservo) throws Exception{
		System.out.println(">>> service String ///");
		return dao.userinfo(uservo);
	};
}
