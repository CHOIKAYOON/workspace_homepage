package com.contact.service;


import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.contact.dao.ContactDao;
import com.contact.domain.ContactVo;

@Service
public class ContactService {

	@Inject
	private ContactDao dao;
	
	public List<ContactVo> list(int displayPost, int postNum) throws Exception{
		return dao.list(displayPost,postNum);				
	}
	
	public int count() throws Exception{
		return dao.count();
	}
}
