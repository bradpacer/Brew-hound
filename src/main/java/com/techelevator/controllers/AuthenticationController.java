package com.techelevator.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class AuthenticationController {
	
	@RequestMapping(path = "/login", method = RequestMethod.GET)
	public String displayLoginPage() {
		return "login";
	}
	
	@RequestMapping(path = "/login", method = RequestMethod.POST)
	public String loginUser(@RequestParam String userName,
							@RequestParam String password, 
							@RequestParam(required = false) String destination, 
							ModelMap model, HttpSession session) {
		
		// NEED TO CREATE USERDAO TO CHECK DB FOR CREDENTIALS
		
		return "redirect:/";
		
	}

}
