package com.techelevator.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.techelevator.capstone.dao.BeerDao;
import com.techelevator.capstone.dao.UserDao;

@Controller
public class UserController {
	
	private UserDao userDao;
	private BeerDao beerDao;
	
	
	@Autowired
	public UserController(BeerDao beerDao, UserDao userDao) {
		this.userDao = userDao;
		this.beerDao = beerDao;
	}
	
	@RequestMapping(path = "/user/{username}", method = RequestMethod.GET)
	public String showUserDashboard(ModelMap model, @PathVariable String username) {
		return "userDashboard";
	}
	
	@RequestMapping(path = "/user/{username}/changePassword", method = RequestMethod.GET)
	public String displayChangePasswordPage(ModelMap model, @PathVariable String username) {
		return "changePassword";
	}
	
	@RequestMapping(path="/user/{userName}/changePassword", method = RequestMethod.POST)
	public String changePassword(@PathVariable String userName, @RequestParam String password) {
		userDao.updatePassword(userName, password);
		return "userDashboard";
	}
	
	@RequestMapping(path = "/user/{username}/addBeer", method = RequestMethod.GET)
	public String displayAddBeerPage(ModelMap model, @PathVariable String username) {
		return "addBeer";
	}
	
	@RequestMapping(path="/user/{userName}/addBeer", method = RequestMethod.POST)
	public String addBeer(@RequestParam String brewery, @RequestParam String name, 
			@RequestParam String beerType, @RequestParam String description, 
			@RequestParam double abv, @RequestParam int ibu, @RequestParam String glassType) {
		beerDao.addBeer(brewery, name, beerType, description, abv, ibu, glassType);
		return "userDashboard";
	}
}

	
	










