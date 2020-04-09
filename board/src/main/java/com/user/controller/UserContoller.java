package com.user.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/user/*")
public class UserContoller {
	
	@RequestMapping(value="/login", method =RequestMethod.GET)
	public String getLogin(Model model) throws Exception{
		return "/user/login";
	}
	

}
