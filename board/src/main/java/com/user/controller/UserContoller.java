package com.user.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.user.domain.UserVO;
import com.user.service.UserService;

@Controller
@RequestMapping("/user/*")
public class UserContoller {
	
	@Inject
	UserService service;
	
	@RequestMapping(value="/login", method =RequestMethod.GET)
	public String getLoginpage( Model model) throws Exception{
		return "/user/login";
	}
	
	@RequestMapping(value="/login.do", method =RequestMethod.POST)
	public String getLogin(UserVO uservo, Model model) throws Exception{
		UserVO result = service.login(uservo);
		model.addAttribute("result" , result.getUse_yn());
		
		return "home";
	}

}
