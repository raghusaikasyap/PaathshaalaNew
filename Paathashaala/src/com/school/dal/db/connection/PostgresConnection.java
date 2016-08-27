package com.school.dal.db.connection;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

public class PostgresConnection implements IDbConnection
{
	public Connection getConnection() 
	{
		Connection conn = null;
		String url = "jdbc:postgresql://localhost/Paathshaala";
		Properties props = getPropertiesFromFile();
		props.setProperty("user",props.getProperty("username"));
		props.setProperty("password",props.getProperty("password"));
		//props.setProperty("ssl","true");
		try {
			conn = DriverManager.getConnection(url, props);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
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
			input = new FileInputStream("Connection.properties");
			prop.load(input);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return prop;		
	}
}
