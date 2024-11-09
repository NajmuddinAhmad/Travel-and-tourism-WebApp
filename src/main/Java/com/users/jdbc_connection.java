package com.users;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class jdbc_connection {

	private static final String URL = "jdbc:mysql://localhost:3306/Tourism_App";
	private static final String USER = "root";
	private static final String PASSWORD = "Mdraja@786";

	public static void main(String[] args) {
		Connection connection = null;

		try {
			connection = DriverManager.getConnection(URL, USER, PASSWORD);
			System.out.println("Connection is established between Java and database");
		} catch (SQLException e) {
			System.out.println(
					"Connection is not established between Java and database: " + e.getMessage());
		} finally {
			if (connection != null) {
				try {
					connection.close();
				} catch (SQLException e) {
					System.out.println("Failed to close the connection: " + e.getMessage());
				}
			}
		}
	}
}
