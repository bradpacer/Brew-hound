package com.techelevator.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ReviewController {
	
	@RequestMapping(path = "/reviews", method = RequestMethod.GET)
	public String displayReviewsPage() {
		return "reviews";
	}
	

}
