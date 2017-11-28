package com.techelevator.controllers;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.techelevator.capstone.dao.BeerDao;
import com.techelevator.capstone.dao.BreweryDao;
import com.techelevator.capstone.dao.UserDao;
import com.techelevator.capstone.model.Beer;
import com.techelevator.capstone.model.Brewery;

@Controller
public class UserController {
	
	private UserDao userDao;
	private BeerDao beerDao;
	private BreweryDao breweryDao;
	
	
	@Autowired
	public UserController(BeerDao beerDao, BreweryDao breweryDao, UserDao userDao) {
		this.userDao = userDao;
		this.beerDao = beerDao;
		this.breweryDao = breweryDao;
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
	
	@RequestMapping(path="/user/{username}/addBeer", method=RequestMethod.GET)
	public String displayAddBeerPage(HttpServletRequest request, ModelMap model, @PathVariable String username) {
		List<Brewery> breweryList = breweryDao.getAllBreweries();
		request.setAttribute("breweries", breweryList);
		return "addBeer";
	}
	
	@RequestMapping(path="/user/{username}/addBeer", method = RequestMethod.POST)
	public String addBeer(@RequestParam int breweryId, @RequestParam String name, 
			@RequestParam String beerType, @RequestParam String description, 
			@RequestParam double abv, @RequestParam int ibu, @RequestParam String glassType) {
		beerDao.addBeer(breweryId, name, beerType, description, abv, ibu, glassType);
		return "userDashboard";
	}
	
	@RequestMapping(path="/user/{username}/deleteBeer", method=RequestMethod.GET)
	public String displayDeleteBeerPage(HttpServletRequest request, ModelMap model, @PathVariable String username) {
		List<Brewery> breweryList = breweryDao.getAllBreweries();
		request.setAttribute("breweries", breweryList);
	
		return "deleteBeer";
	}
	
}

	
	










