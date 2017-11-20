package com.techelevator.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.techelevator.capstone.dao.UserDao;

@Controller
@SessionAttributes("currentUser")
public class AuthenticationController {
	
	private UserDao userDao;
	
	@Autowired
	public AuthenticationController(UserDao userDao) {
		this.userDao = userDao;
	}
	
	@RequestMapping(path = "/login", method = RequestMethod.GET)
	public String displayLoginPage() {
		return "login";
	}
	
	@RequestMapping(path = "/login", method = RequestMethod.POST)
	public String loginUser(@RequestParam String username,
							@RequestParam String password, 
							@RequestParam(required = false) String destination, 
							ModelMap model, HttpSession session) {
		
		if(userDao.checkUsernameAndPassword(username, password)) {
			session.invalidate();
			model.put("currentUser", username);
			if(destination != null) {
				return "redirect:/" + destination;
			} else {
				return "redirect:/users/" + username;
			}
		} else {		
			return "redirect:/login";
		}
		
	}

}
