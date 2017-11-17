package com.techelevator.capstone.dao;

import java.util.List;

import org.springframework.stereotype.Component;

import com.techelevator.capstone.model.Brewery;

@Component
public interface BreweryDao {
	public List<Brewery> getAllBreweries();
	public Brewery getBreweryByBreweryId(int breweryId);

}
