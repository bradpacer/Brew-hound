package com.techelevator.capstone.dao;

import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

import com.techelevator.capstone.model.Beer;
import com.techelevator.capstone.model.Review;

@Component
public class JDBCReviewDao implements ReviewDao {
	
	private JdbcTemplate jdbcTemplate;
	
	@Autowired
	public JDBCReviewDao(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}

	@Override
	public List<Review> getAllReviews() {
		String sqlGetReviews = "SELECT AVG(rating) avg_rating, review_id, review.beer_id, user_id, review.description reviewDescription, glass_type, abv, ibu, rating, beer.brewery_id, name, beer.description beerDescription, beer.beer_type FROM review "
								+ "JOIN beer ON beer.beer_id = review.beer_id GROUP BY review.beer_id, beer.beer_id, review_id, beer.name, beer.description ORDER BY avg_rating desc";
		SqlRowSet results = jdbcTemplate.queryForRowSet(sqlGetReviews);
		List<Review> reviewList = new ArrayList<>();
		while(results.next()) {
			reviewList.add(mapReviewToRow(results));
		}
		return reviewList;
	}

	@Override
	public Review getReviewByReviewId(int reviewId) {
		// TODO Auto-generated method stub
		return null;
	}
	

	private Review mapReviewToRow(SqlRowSet results) {
		Beer thisBeer = new Beer();
		thisBeer.setBeerId(results.getInt("beer_id"));
		thisBeer.setBeerType(results.getString("beer_type"));
		thisBeer.setDescription(results.getString("beerDescription"));
		thisBeer.setBreweryId(results.getInt("brewery_id"));
		thisBeer.setAbv(results.getDouble("abv"));
		thisBeer.setGlassType(results.getString("glass_type"));
		thisBeer.setIbu(results.getInt("ibu"));
		thisBeer.setName(results.getString("name"));
		
		Review thisReview = new Review();
		thisReview.setBeer(thisBeer);
		thisReview.setReviewId(results.getInt("review_id"));
		thisReview.setBeerId(results.getInt("beer_id"));
		thisReview.setUserId(results.getInt("user_id"));
		thisReview.setReviewDescription(results.getString("reviewDescription"));
		thisReview.setRating(results.getInt("rating"));
		return thisReview;
	}
}
