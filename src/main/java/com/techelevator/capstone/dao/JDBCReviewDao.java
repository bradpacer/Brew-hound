package com.techelevator.capstone.dao;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

import com.techelevator.capstone.model.Review;

public class JDBCReviewDao implements ReviewDao {
	
	private JdbcTemplate jdbcTemplate;
	
	@Autowired
	public JDBCReviewDao(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}

	@Override
	public List<Review> getAllReviews() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Review getReviewByReviewId(int reviewId) {
		// TODO Auto-generated method stub
		return null;
	}

}
