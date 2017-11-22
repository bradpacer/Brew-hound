package com.techelevator.capstone.dao;

import java.util.List;

import org.springframework.stereotype.Component;

import com.techelevator.capstone.model.BeerReview;
import com.techelevator.capstone.model.Review;

@Component
public interface ReviewDao {
	public List<Review> getAllReviews();
	public Review getReviewByReviewId(int reviewId);
	List<BeerReview> getBeerReviews();

}
