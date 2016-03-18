package com.anthony.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBUtil {
	public static Connection connection;
	
	public static final String DRIVER = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
	public static final String URL = "jdbc:sqlserver://localhost\\sa:1433;databaseName=store";
	public static final String USERNAME = "sa";
	public static final String PASSWORD = "1234";
	
	static {
		try {
			
			Class.forName(DRIVER);
			
			connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static Connection getConnection(){
		return connection;
	}
}
