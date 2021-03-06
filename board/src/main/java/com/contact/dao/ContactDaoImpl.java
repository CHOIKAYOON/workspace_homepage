package com.contact.dao;


import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.board.domain.BoardVO;
import com.contact.domain.ContactVo;

@Repository
public class ContactDaoImpl implements ContactDao {
	
	@Inject
	private SqlSession sql;
	
	private static String namespace = "com.board.mappers.board";

	public int count() throws Exception {		
		return sql.selectOne(namespace + ".count");
	}

	public List<ContactVo> list(int displayPost, int postNum) throws Exception {
		HashMap<String, Integer> data = new HashMap<String, Integer>();
		
		data.put("displayPost", displayPost);
		data.put("postNum", postNum);
		
		return sql.selectList(namespace + ".listPage" , data);
	}
}
