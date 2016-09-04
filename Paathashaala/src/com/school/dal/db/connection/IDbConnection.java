package com.school.dal.db.connection;

import java.sql.Connection;

public interface IDbConnection 
{
	public Connection getConnection();
	
	public DbType getDbType();
	
}
