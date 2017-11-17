package com.techelevator.capstone.dao;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

import com.techelevator.capstone.model.Users;

public class JDBCUsersDao implements UsersDao {
	
	private JdbcTemplate jdbcTemplate;
	
	@Autowired
	public JDBCUsersDao(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}

	@Override
	public List<Users> getAllUsers() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Users getUserByUserId(int userId) {
		// TODO Auto-generated method stub
		return null;
	}

}
