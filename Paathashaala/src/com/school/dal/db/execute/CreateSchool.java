package com.school.dal.db.execute;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Map;

import org.apache.log4j.Logger;

import com.school.dal.db.connection.IDbConnection;
import com.school.dal.db.connection.PostgresConnection;

public class CreateSchool {

	private static final Logger LOGGER = Logger.getLogger(CreateSchool.class);
	
	public static void createSchoolEntry(Map<String, String[]> paramMap, InputStream schoolLogo) {
		IDbConnection iConn = new PostgresConnection();
		Connection conn = null;
		try {
			conn = iConn.getConnection();
			PreparedStatement ps = conn.prepareStatement("insert into \"School_Details\"(school_name, school_address, school_email, school_phone, school_estdyear, school_regid, school_studentstrength, school_syllabusfollowed, school_logo, school_chairmanname, school_chairmanaddress, school_chairmanqualification, school_chairmanaadhaarid, school_chairmanphone, school_chairmanemialid) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			//TODO - Null check for file.
			ps = constructQueryString(paramMap, ps);
			ps.setBinaryStream(9, schoolLogo, schoolLogo.available());			
			ps.executeUpdate();
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

	private static PreparedStatement constructQueryString(Map<String, String[]> paramMap, PreparedStatement ps) {
		
		try{
		String schoolName = paramMap.get("schName")[0];
		ps.setString(1, schoolName);
		String schoolAddress = paramMap.get("schAddress")[0];
		ps.setString(2, schoolAddress);
		String schoolEmail = paramMap.get("schEmail")[0];
		ps.setString(3, schoolEmail);
		String schoolPhone = paramMap.get("schPhone")[0];
		ps.setString(4, schoolPhone);
		String schoolEstdYr = paramMap.get("schEstdYr")[0];
		ps.setString(5, schoolEstdYr);		
		String schoolRegID = paramMap.get("schRegID")[0];
		ps.setString(6, schoolRegID);
		String schoolStuStrength = paramMap.get("schStuStrength")[0];
		ps.setString(7, schoolStuStrength);
		String schoolSyllabusFollowed = paramMap.get("schSyllabusFollowed")[0];
		ps.setString(8, schoolSyllabusFollowed);
		//String schoolLogo = paramMap.get("schLogo")[0];
		//ps.setString(0, schoolLogo);
		String schoolChairmanName = paramMap.get("schChairmanName")[0];
		ps.setString(10, schoolChairmanName);
		String schoolChairmanAddress = paramMap.get("schChairmanAddress")[0];
		ps.setString(11, schoolChairmanAddress);
		String schoolChairmanQualifications = paramMap.get("schChairmanQualifications")[0];
		ps.setString(12, schoolChairmanQualifications);
		String schoolChairmanAadhaarID = paramMap.get("schChairmanAadhaarID")[0];
		ps.setString(13, schoolChairmanAadhaarID);
		String schoolChairmanPhone = paramMap.get("schChairmanPhone")[0];
		ps.setString(14, schoolChairmanPhone);
		String schoolChairmanEmail = paramMap.get("schChairmanEmail")[0];
		ps.setString(15, schoolChairmanEmail);
		}
		catch(SQLException e)
		{
			LOGGER.error("Create School: Query creation failed");
			LOGGER.error(e.getMessage(), e);
		}
		return ps;
	}
}