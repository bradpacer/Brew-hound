package com.techelevator.capstone.dao;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

import com.techelevator.capstone.model.Beer;

public class JDBCBeerDao implements BeerDao {
	
	private JdbcTemplate jdbcTemplate;
	
	@Autowired
	public JDBCBeerDao(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}

	@Override
	public List<Beer> getAllBeer() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Beer getBeerByBeerId(int beerId) {
		// TODO Auto-generated method stub
		return null;
	}

}
