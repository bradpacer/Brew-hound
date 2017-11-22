package com.techelevator.capstone.dao;

import java.util.ArrayList;
import java.util.List;
import org.springframework.stereotype.Component;


import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;

import com.techelevator.capstone.model.Beer;

@Component
public class JDBCBeerDao implements BeerDao {
	
	private JdbcTemplate jdbcTemplate;
	
	@Autowired
	public JDBCBeerDao(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}

	@Override
	public List<Beer> getAllBeer(int breweryId) {
		List<Beer> beerList = new ArrayList<>();
		String sqlSelectBeers = "SELECT * FROM beer WHERE brewery_id = ?";
		SqlRowSet results = jdbcTemplate.queryForRowSet(sqlSelectBeers, breweryId);
		while(results.next()) {
			Beer thisBeer = mapBeerToRow(results);
			beerList.add(thisBeer);
		}
		return beerList;
	}

	private Beer mapBeerToRow(SqlRowSet results) {
		Beer thisBeer = new Beer();
		thisBeer.setBreweryId(results.getInt("brewery_id"));
		thisBeer.setBeerType(results.getString("beer_type"));
		thisBeer.setDescription(results.getString("description"));
		thisBeer.setGlassType(results.getString("glass_type"));
		thisBeer.setAbv(results.getDouble("abv"));
		thisBeer.setIbu(results.getInt("ibu"));
		thisBeer.setName(results.getString("name"));
		thisBeer.setBeerId(results.getInt("beer_id"));
		return thisBeer;
	}

	@Override
	public Beer getBeerByBeerId(int breweryId) {
		String sqlSelectBeerById = "SELECT * FROM beer WHERE beer_id = ?";
		SqlRowSet results = jdbcTemplate.queryForRowSet(sqlSelectBeerById, breweryId);
		Beer beer = new Beer();
		
		if (results.next()) {
			beer = mapBeerToRow(results);
		}
		return beer;
	}

}
