package com.user.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.user.domain.UserVO;

@Repository
public class userDAOImpl implements UserDAO {
	@Inject
	private SqlSession sql;

	private static String namespace = "com.user.mappers.user";

	public UserVO login(UserVO uservo) throws Exception {
		return sql.selectOne(namespace + ".login", uservo);
	}

	public UserVO userinfo(UserVO uservo) throws Exception {
		 sql.insert(namespace + ".userinfo" , uservo);
		 return uservo;
	}

}
