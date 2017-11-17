package com.techelevator.capstone.dao;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

import com.techelevator.capstone.model.Brewery;

public class JDBCBreweryDao implements BreweryDao {
	
	private JdbcTemplate jdbcTemplate;
	
	@Autowired
	public JDBCBreweryDao(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}

	@Override
	public List<Brewery> getAllBreweries() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Brewery getBreweryByBreweryId(int breweryId) {
		// TODO Auto-generated method stub
		return null;
	}

}
