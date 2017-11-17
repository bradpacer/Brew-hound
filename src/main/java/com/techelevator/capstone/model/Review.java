package com.techelevator.capstone.model;

public class Review {
	private int reviewId;
	private int beerId;
	private int userId;
	private String description;
	private int rating;
	
	public int getReviewId() {
		return reviewId;
	}
	public void setReviewId(int reviewId) {
		this.reviewId = reviewId;
	}
	public int getBeerId() {
		return beerId;
	}
	public void setBeerId(int beerId) {
		this.beerId = beerId;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public int getRating() {
		return rating;
	}
	public void setRating(int rating) {
		this.rating = rating;
	}


}
