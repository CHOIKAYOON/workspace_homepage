package com.user.dao;

import com.user.domain.UserVO;

public interface UserDAO {
	
	//로그인
	public UserVO login(UserVO uservo) throws Exception;
	
	//회원가입
	public UserVO userinfo(UserVO uservo) throws Exception;

}
