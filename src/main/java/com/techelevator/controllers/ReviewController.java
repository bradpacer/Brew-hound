package com.techelevator.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.techelevator.capstone.dao.ReviewDao;
import com.techelevator.capstone.model.BeerReview;
import com.techelevator.capstone.model.Review;

import java.util.List;

import javax.servlet.http.HttpServletRequest;


@Controller
public class ReviewController {
	
	private ReviewDao reviewDao;
	
	@Autowired
	public ReviewController(ReviewDao reviewDao) {
		this.reviewDao = reviewDao;
	}
	
	@RequestMapping(path = "/reviews", method = RequestMethod.GET)
	public String displayReviewsPage(HttpServletRequest request) {
		List<Review> reviewsList = reviewDao.getAllReviews();
		request.setAttribute("reviews", reviewsList);
		List<BeerReview> beerReviewsList = reviewDao.getBeerReviews();
		request.setAttribute("beerReviews", beerReviewsList);
		return "reviews";
	}
	

}
