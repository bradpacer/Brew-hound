package com.techelevator.capstone.dao;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

import com.techelevator.capstone.model.Brewery;
import com.techelevator.capstone.model.User;

@Component
public class JDBCUserDao implements UserDao {
	
	private JdbcTemplate jdbcTemplate;
	private BreweryDao breweryDao;
	
	@Autowired
	public JDBCUserDao(BreweryDao breweryDao, DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
		this.breweryDao = breweryDao;
	}
	
	@Override
	public User getUserByUsername(String username) {
		String sqlSelectUser = "SELECT * FROM users WHERE username = ?";
		SqlRowSet results = jdbcTemplate.queryForRowSet(sqlSelectUser, username);
		if(results.next()) {
			return mapUserToRow(results);
		}
		return null;
	}

	@Override
	public boolean checkUsernameAndPassword(String username, String password) {
		String sqlSelectUser = "SELECT * FROM users WHERE username = ? AND password = ?";
		SqlRowSet results = jdbcTemplate.queryForRowSet(sqlSelectUser, username, password);
		
		return results.next();
	}
	
	@Override
	public void updatePassword(String username, String password) {
		String sqlUpdatePassword = "UPDATE users SET password = ? WHERE username = ?";
		jdbcTemplate.update(sqlUpdatePassword, password, username);
	}
	
	private User mapUserToRow(SqlRowSet results) {
		User thisUser = new User();
		thisUser.setUserId(results.getInt("user_id"));
		thisUser.setUsername(results.getString("username"));
		thisUser.setPassword(results.getString("password"));
		thisUser.setRole(results.getString("role"));
		if(results.getInt("brewery_id") != 0) {
			Brewery thisBrewery = breweryDao.getBreweryByBreweryId(results.getInt("brewery_id"));
			thisUser.setBrewery(thisBrewery);
		}
		
		return thisUser;
		
	}

	@Override
	public void saveUser(String username, String password, String role) {
		String sqlAddUser = "INSERT INTO users (username, password, role) VALUES (?, ?, ?)";
		jdbcTemplate.update(sqlAddUser, username, password, role);
		
	}
	
	@Override
	public void saveUser(String username, String password, String role, int breweryId) {
		String sqlAddUser = "INSERT INTO users (username, password, role, brewery_id) VALUES (?, ?, ?, ?)";
		jdbcTemplate.update(sqlAddUser, username, password, role, breweryId);
		
	}

	@Override
	public void deleteUser(String username) {
		User thisUser = getUserByUsername(username);
		String sqlDeleteUser = "DELETE FROM users WHERE user_id = ?";
		jdbcTemplate.update(sqlDeleteUser, thisUser.getUserId());
		
	}

}
