package com.techelevator.capstone.model;

public class BeerReview {

	private Beer beer;
	private double averageReview;
	
	public BeerReview(Beer beer) {
		this.beer = beer;
	}
	
	public Beer getBeer() {
		return beer;
	}
	public double getAverageReview() {
		return averageReview;
	}
	
	
}
