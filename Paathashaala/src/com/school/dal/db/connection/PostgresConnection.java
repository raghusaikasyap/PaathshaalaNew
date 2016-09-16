package com.school.dal.db.connection;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

import org.apache.log4j.Logger;

public class PostgresConnection implements IDbConnection
{
	private static final Logger LOGGER = Logger.getLogger(PostgresConnection.class);
	
	public Connection getConnection() 
	{
		Connection conn = null;
		String url = "jdbc:postgresql://localhost/Paathshaala";
		LOGGER.info("Getting the connection properties..");
		Properties props = getPropertiesFromFile();
		props.setProperty("user",props.getProperty("username"));
		props.setProperty("password",props.getProperty("password"));
		try {
			Class.forName("org.postgresql.Driver");
			conn = DriverManager.getConnection(url, props);
			LOGGER.info("Connection to DB successful.");
		} catch (SQLException e) {
			//Log the error
			LOGGER.error("Creating a connection to database failed.");
			LOGGER.error("Error code: " + e.getErrorCode() + "Error state " + e.getSQLState());
			LOGGER.error("Error message: " + e.getMessage());
			LOGGER.error("StackTrace: ", e);
		} catch (ClassNotFoundException e) {
			LOGGER.error("Could not find suitable database driver.");
			LOGGER.error("Error message: " + e.getMessage());
			LOGGER.error("StackTrace: ", e);
		}
		return conn;
	}

	@Override
	public DbType getDbType() 
	{
		return DbType.POSTGRES;
	}
	public Properties getPropertiesFromFile()
	{
		InputStream input = null;
		Properties prop = new Properties();
		try {
			input = PostgresConnection.class.getResourceAsStream("/Connection.properties");
			prop.load(input);
		} catch (IOException e) {
			//Log the error
			LOGGER.error("Could not read the connection properties.");
			LOGGER.error("Error message: " + e.getMessage());
			LOGGER.error("StackTrace: ", e);
		}
		return prop;		
	}
	
	public static void main(String[] args) {
		
		PostgresConnection c = new PostgresConnection();
		c.getConnection();
	}
}
