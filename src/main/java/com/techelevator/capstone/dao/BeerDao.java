package com.techelevator.capstone.dao;

import java.util.List;

import org.springframework.stereotype.Component;

import com.techelevator.capstone.model.Beer;

@Component
public interface BeerDao {
	public List<Beer> getAllBeer(int breweryId);
	public Beer getBeerByBeerId(int breweryId);

}
