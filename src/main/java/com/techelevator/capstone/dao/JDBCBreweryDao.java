package com.techelevator.capstone.dao;

import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

import com.techelevator.capstone.model.Brewery;


@Component
public class JDBCBreweryDao implements BreweryDao {
	
	private JdbcTemplate jdbcTemplate;
	
	@Autowired
	public JDBCBreweryDao(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}

	@Override
	public List<Brewery> getAllBreweries() {
		List<Brewery> breweryList = new ArrayList<>();
		String sqlSelectBreweries = "SELECT * FROM brewery";
		SqlRowSet results = jdbcTemplate.queryForRowSet(sqlSelectBreweries);
		while(results.next()) {
			Brewery thisBrewery = new Brewery();
			thisBrewery.setName(results.getString("name"));
			thisBrewery.setImagePath(results.getString("image_path"));
			breweryList.add(thisBrewery);
		}
		return breweryList;
	}

	@Override
	public Brewery getBreweryByBreweryId(int breweryId) {
		// TODO Auto-generated method stub
		return null;
	}


	
}
