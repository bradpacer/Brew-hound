package com.techelevator.capstone.dao;

import java.util.List;

import org.springframework.stereotype.Component;

import com.techelevator.capstone.model.Users;

@Component
public interface UsersDao {
	public List<Users> getAllUsers();
	public Users getUserByUserId(int userId);

}
