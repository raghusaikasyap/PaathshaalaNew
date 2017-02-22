package com.school.dal.db.execute;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Map;
import java.util.UUID;

import org.apache.log4j.Logger;
import org.postgresql.util.PGobject;

import com.school.dal.db.connection.IDbConnection;
import com.school.dal.db.connection.PostgresConnection;

public class CreateTeacher {

	private static final Logger LOGGER = Logger.getLogger(CreateTeacher.class);

	public static void createTeacherEntry(Map<String, String[]> paramMap) {
		IDbConnection iConn = new PostgresConnection();
		Connection conn = null;

		try {
			conn = iConn.getConnection();
			PreparedStatement ps = conn.prepareStatement(
					"insert into \"Teacher_Details\"(id, first_name, last_name, father_name, mother_name, gender, dob, aadhaar_id, qualification, present_address, permanent_address, mobile_number, residence_phone, acheivements, worked_schools, subjects_handled) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			ps = constructQueryString(paramMap, ps);
			ps.executeUpdate();
		} catch (Exception e) {
			if (e instanceof SQLException) {
				// Log the error
				LOGGER.error("Error code: " + ((SQLException) e).getErrorCode() + "Error state "
						+ ((SQLException) e).getSQLState());
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
				// Log the error
				LOGGER.error("Closing database connection failed.");
				LOGGER.error("Error code: " + ((SQLException) e).getErrorCode() + "Error state "
						+ ((SQLException) e).getSQLState());
				LOGGER.error("Error message: " + e.getMessage());
				LOGGER.error("StackTrace: ", e);
			}
		}
	}

	private static PreparedStatement constructQueryString(Map<String, String[]> paramMap, PreparedStatement ps) {
		
		try  {
			PGobject id = new PGobject();
			id.setType("uuid");
			id.setValue(UUID.randomUUID().toString());
			ps.setObject(0, id);
			String first_name = paramMap.get("first_name")[0];
			ps.setString(1, first_name);
			String last_name = paramMap.get("last_name")[0];
			ps.setString(1, last_name);
			String father_name = paramMap.get("father_name")[0];
			ps.setString(1, father_name);
			String mother_name = paramMap.get("mother_name")[0];
			ps.setString(1, mother_name);
			String gender = paramMap.get("gender")[0];
			ps.setString(1, gender);
			String teacherDOB = paramMap.get("teacherDOBName")[0];
			ps.setString(1, teacherDOB);
			String aadhaar_id = paramMap.get("aadhaar_id")[0];
			//ps.setInt(1, aadhaar_id);
		}catch(SQLException e)
		{
			LOGGER.error("Create Teacher: Query creation failed");
			LOGGER.error(e.getMessage(), e);
		}
		return ps;
	}
}
