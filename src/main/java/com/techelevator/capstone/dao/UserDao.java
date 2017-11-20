package com.techelevator.capstone.dao;

import java.util.List;

import org.springframework.stereotype.Component;

import com.techelevator.capstone.model.User;


@Component
public interface UserDao {
	public List<User> getAllUsers();
	public User getUserByUserId(int userId);
	public boolean checkUsernameAndPassword(String username, String password);

}
