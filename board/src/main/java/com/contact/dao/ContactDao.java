package com.contact.dao;
import java.util.List;

import com.board.domain.BoardVO;
import com.contact.domain.ContactVo;

public interface ContactDao {
	
	//게시물 가져오기
	public List<ContactVo> list (int displayPost, int postNum) throws Exception;
	
	public int count() throws Exception;
}
