package com.techelevator.capstone.dao;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

import com.techelevator.capstone.model.User;

@Component
public class JDBCUserDao implements UserDao {
	
	private JdbcTemplate jdbcTemplate;
	
	@Autowired
	public JDBCUserDao(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}

	@Override
	public List<User> getAllUsers() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public User getUserByUserId(int userId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean checkUsernameAndPassword(String username, String password) {
		String sqlSelectUser = "SELECT * FROM users WHERE username = ? AND password = ?";
		SqlRowSet results = jdbcTemplate.queryForRowSet(sqlSelectUser, username, password);
		
		return results.next();
	}
	
	private User mapUserToRow(SqlRowSet results) {
		User thisUser = new User();
		thisUser.setUserId(results.getInt("user_id"));
		thisUser.setUsername(results.getString("username"));
		thisUser.setPassword(results.getString("password"));
		thisUser.setRole(results.getString("role"));
		
		return thisUser;
		
	}

}