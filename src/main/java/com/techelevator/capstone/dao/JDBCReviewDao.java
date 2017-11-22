package com.techelevator.capstone.dao;

import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

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
		String sqlGetReviews = "SELECT review_id, review.beer_id, user_id, review.description reviewDescription, rating, name, beer.description beerDescription FROM review "
								+ "JOIN beer ON beer.beer_id = review.beer_id ORDER BY rating";
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
		Review thisReview = new Review();
		thisReview.setReviewId(results.getInt("review_id"));
		thisReview.setBeerId(results.getInt("beer_id"));
		thisReview.setUserId(results.getInt("user_id"));
		thisReview.setReviewDescription(results.getString("reviewDescription"));
		thisReview.setRating(results.getInt("rating"));
		thisReview.setBeerDescription(results.getString("beerDescription"));
		thisReview.setBeerName(results.getString("name"));
		return thisReview;
	}
}
