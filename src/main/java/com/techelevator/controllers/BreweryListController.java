package com.techelevator.controllers;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.techelevator.capstone.dao.BreweryDao;
import com.techelevator.capstone.model.Brewery;

@Controller
public class BreweryListController {
	private BreweryDao breweryDao;
	
	@Autowired
	public BreweryListController(BreweryDao breweryDao) {
		this.breweryDao = breweryDao;
	}
	
	
	@RequestMapping(path = "/breweryList", method = RequestMethod.GET)
	public String displayBreweryList(HttpServletRequest request) {
		List<Brewery> breweryList = breweryDao.getAllBreweries();
		request.setAttribute("breweries", breweryList);
		
		return "breweryList";
	}
	

}
