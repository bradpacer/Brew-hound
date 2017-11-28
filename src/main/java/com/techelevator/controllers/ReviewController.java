package com.techelevator.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.techelevator.capstone.dao.BeerDao;
import com.techelevator.capstone.dao.ReviewDao;
import com.techelevator.capstone.model.Beer;
import com.techelevator.capstone.model.BeerReview;
import com.techelevator.capstone.model.Review;

import java.util.List;

import javax.servlet.http.HttpServletRequest;


@Controller
public class ReviewController {
	
	private ReviewDao reviewDao;
	private BeerDao beerDao;
	
	@Autowired
	public ReviewController(BeerDao beerDao, ReviewDao reviewDao) {
		this.beerDao = beerDao;
		this.reviewDao = reviewDao;
	}
	
	@RequestMapping(path = "/reviews", method = RequestMethod.GET)
	public String displayReviewsPage(HttpServletRequest request) {
		List<Review> reviewsList = reviewDao.getAllReviews();
		request.setAttribute("reviews", reviewsList);
		List<BeerReview> beerReviewsList = reviewDao.getBeerReviews();
		request.setAttribute("beerReviews", beerReviewsList);
		return "breweryReviews";
	}
	
	@RequestMapping(path = "/reviews/{beerName}", method = RequestMethod.GET)
	public String displayBeerReviewPage(@PathVariable String beerName, @RequestParam int beerId, HttpServletRequest request) {
		Beer thisBeer = beerDao.getBeerByBeerId(beerId);
		request.setAttribute("beer", thisBeer);
		List<Review> reviewsList = reviewDao.getReviewsByBeerId(beerId);
		request.setAttribute("reviews", reviewsList);
		return "beerReviews";
	}
	
//	@RequestMapping(path = "/reviewBeer", method = RequestMethod.GET)
//	public String displayBeerReviewPage(HttpServletRequest request) {
//		List<Review> reviewsList = reviewDao.getAllReviews();
//		request.setAttribute("reviewBeer", reviewsList);
//		return "beerReviews";
//	}

}
