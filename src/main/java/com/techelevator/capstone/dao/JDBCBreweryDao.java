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
			Brewery thisBrewery = mapBreweryToRow(results);
			breweryList.add(thisBrewery);
		}
		return breweryList;
	}

	@Override
	public Brewery getBreweryByBreweryId(int breweryId) {
		// TODO Auto-generated method stub
		return null;
	}

	private Brewery mapBreweryToRow(SqlRowSet results) {
		Brewery thisBrewery = new Brewery();
		thisBrewery.setBreweryId(results.getInt("brewery_id"));
		thisBrewery.setLocationId(results.getInt("location_id"));
		thisBrewery.setName(results.getString("name"));
		thisBrewery.setAddress(results.getString("address"));
		thisBrewery.setLatitude(results.getString("latitude"));
		thisBrewery.setLongitude(results.getString("longitude"));
		thisBrewery.setDescription(results.getString("description"));
		thisBrewery.setYearFounded(results.getInt("year_founded"));
		thisBrewery.setImagePath(results.getString("image_path"));
		return thisBrewery;
	}

	
}
