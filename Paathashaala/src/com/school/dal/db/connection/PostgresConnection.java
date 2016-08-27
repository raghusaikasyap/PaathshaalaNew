package com.school.dal.db.connection;

import java.sql.Connection;

public class PostgresConnection implements IDbConnection
{

	@Override
	public Connection getConnection() {
		
		return null;
	}

	@Override
	public DbType getDbType() {
		return DbType.POSTGRES;
	}

}
