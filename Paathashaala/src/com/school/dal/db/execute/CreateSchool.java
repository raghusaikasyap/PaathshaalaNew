package com.school.dal.db.execute;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Map;

import org.apache.log4j.Logger;

import com.school.dal.db.connection.IDbConnection;
import com.school.dal.db.connection.PostgresConnection;

public class CreateSchool {

	private static final Logger LOGGER = Logger.getLogger(CreateSchool.class);
	
	public static void createSchoolEntry(Map<String, String[]> paramMap) {
		IDbConnection iConn = new PostgresConnection();
		Connection conn = null;
		try {
			conn = iConn.getConnection();
			Statement stmt = conn.createStatement();
			stmt.executeUpdate("insert into School_Details where");
		} catch (Exception e) {
			if (e instanceof SQLException) {
				//Log the error
				LOGGER.error("Error code: " + ((SQLException) e).getErrorCode() + "Error state " + ((SQLException) e).getSQLState());
				LOGGER.error("Error message: " + e.getMessage());
				LOGGER.error("StackTrace: ", e);
			} else {
				LOGGER.error("Unexpected Exception");
				LOGGER.error("StackTrace: ", e);
			}			
		} finally {
			try {
				LOGGER.info("Closing the DB connection.");
				conn.close();
				LOGGER.info("Closed the DB connection.");
			} catch (SQLException e) {
				//Log the error
				LOGGER.error("Closing database connection failed.");
				LOGGER.error("Error code: " + ((SQLException) e).getErrorCode() + "Error state " + ((SQLException) e).getSQLState());
				LOGGER.error("Error message: " + e.getMessage());
				LOGGER.error("StackTrace: ", e);
			}
		}
	}
}