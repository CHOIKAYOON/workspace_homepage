package com.contact.controller;


import java.text.DateFormat;
import java.util.Date;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.contact.service.ContactService;


@Controller
@RequestMapping("/contact/*")
public class ContactController {

	@Inject
	ContactService service;

	@RequestMapping(value="/list", method=RequestMethod.GET)
	public String getlist(Model model, @RequestParam("num") int num) throws Exception {
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG);		
		String formattedDate = dateFormat.format(date);	
		
		int count = service.count();
		//한 페이지에 출력할 게시물 갯수
		int postNum = 10;
		//하단 페이징 번호 ( [게시물 총 갯수 / 한 페이지에 출력할 갯수]의 올림)
		int pageNum =(int)Math.ceil((double)count/postNum);
		//출력할 게시물
		int displayPost =(num - 1) * postNum;
		
		//한번에 표시할 페이징 번호의 갯수
		int pageNum_cnt = 5;
		
		//표시되는 페이ㅣ 번호 중 마지막 번호
		int endPageNum = (int)(Math.ceil((double)num / (double)pageNum_cnt) * pageNum_cnt);
		
		//표시되는 페이지 번호 중 첫번째 번호
		int startPageNum = endPageNum - (pageNum_cnt - 1);
		
		//마지막 번호 재계산
		int endpageNum_tmp = (int)(Math.ceil((double)count / (double)pageNum_cnt));
		
		if(endPageNum > endpageNum_tmp){
			endPageNum = endpageNum_tmp;
		}
		
		boolean prev = startPageNum == 1 ? false : true;
		boolean next = endPageNum * pageNum_cnt >= count ? false : true;		
		
		List list = null;
		list = service.list(displayPost,pageNum);
		
		model.addAttribute("serverTime", formattedDate );
		model.addAttribute("list", list ); 
		model.addAttribute("pageNum", pageNum);
	
		//시작 및 끝 번호
		model.addAttribute("startPageNum" , startPageNum);
		model.addAttribute("endPageNum", endPageNum);
		
		//이전 및 다음
		model.addAttribute("prev", prev);
		model.addAttribute("next", next);
		
		//현재 페이지
		model.addAttribute("select", num); 
		return "/contact/list";
	}
	
}
