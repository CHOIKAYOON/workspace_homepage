package com.phone.controller;

import java.text.DateFormat;
import java.util.Date;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.user.domain.UserVO;

@Controller
@RequestMapping("/phone/*")
public class PhoneController {
	
	@RequestMapping(value="/list", method =RequestMethod.GET)
	public String getphone(Model model) throws Exception{
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG);		
		String formattedDate = dateFormat.format(date);	
		model.addAttribute("serverTime", formattedDate );
		return "/phone/list";
	}
	
	@RequestMapping(value ="/view/eight",  method =RequestMethod.GET)
	public String getvieweight(Model model) throws Exception{
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG);		
		String formattedDate = dateFormat.format(date);	
		model.addAttribute("serverTime", formattedDate );
		return "/phone/view/eight";
	}

}
