package com.school.dal.db.execute;

import java.beans.Statement;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Map;

import org.apache.log4j.Logger;

import com.school.dal.db.connection.IDbConnection;
import com.school.dal.db.connection.PostgresConnection;

public class CreateSchool {

	private static final Logger LOGGER = Logger.getLogger(CreateSchool.class);

	public static boolean createSchoolEntry(Map<String, Object[]> paramMap, InputStream schoolLogo) {
		IDbConnection iConn = new PostgresConnection();
		Connection conn = null;
		boolean hasErrors = false;
		try {
			conn = iConn.getConnection();
			createSchoolifNotExist(conn);			
			PreparedStatement ps = conn.prepareStatement(
					"insert into \"School_Details\"(school_name, school_address, school_email, school_phone, school_estdyear, school_regid, school_studentstrength, school_syllabusfollowed, school_logo, school_chairmanname, school_chairmanaddress, school_chairmanqualification, school_chairmanaadhaarid, school_chairmanphone, school_chairmanemialid) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			// TODO - Null check for file.
			ps = constructQueryString(paramMap, ps);
			ps.setBinaryStream(9, schoolLogo, schoolLogo.available());
			ps.executeUpdate();
		} catch (Exception e) {
			hasErrors = true;
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
		return hasErrors;
	}

	private static void createSchoolifNotExist(Connection conn) throws SQLException {
		String createSchool = null;
		if (!CreateSchool.isSchoolEntryPresent(conn)) {
			createSchool = "create table school_details(name text, address text, email text, phone text, yearofestablishment text, registrationid text, studentstrength text, syllabustype text, logo bytea, chairmanname text, chairmanaddress text,chairmanqualifications text, chairmanaadhaarid text, chairmanphone text,chairmanemail text)";
			PreparedStatement createSchoolScript = conn.prepareStatement(createSchool);
			createSchoolScript.execute();
		}
	}

	private static PreparedStatement constructQueryString(Map<String, Object[]> paramMap, PreparedStatement ps) {

		try {
			String schoolName = (String) paramMap.get("schName")[0];
			ps.setString(1, schoolName);
			String schoolAddress = (String) paramMap.get("schAddress")[0];
			ps.setString(2, schoolAddress);
			String schoolEmail = (String) paramMap.get("schEmail")[0];
			ps.setString(3, schoolEmail);
			String schoolPhone = (String) paramMap.get("schPhone")[0];
			ps.setString(4, schoolPhone);
			String schoolEstdYr = (String) paramMap.get("schEstdYr")[0];
			ps.setString(5, schoolEstdYr);
			String schoolRegID = (String) paramMap.get("schRegID")[0];
			ps.setString(6, schoolRegID);
			String schoolStuStrength = (String) paramMap.get("schStuStrength")[0];
			ps.setString(7, schoolStuStrength);
			String schoolSyllabusFollowed = (String) paramMap.get("schSyllabusFollowed")[0];
			ps.setString(8, schoolSyllabusFollowed);
			 Byte[] schoolLogo = (Byte[]) paramMap.get("schLogo")[0];
			// ps.setString(0, schoolLogo);
			String schoolChairmanName = (String) paramMap.get("schChairmanName")[0];
			ps.setString(10, schoolChairmanName);
			String schoolChairmanAddress = (String) paramMap.get("schChairmanAddress")[0];
			ps.setString(11, schoolChairmanAddress);
			String schoolChairmanQualifications = (String) paramMap.get("schChairmanQualifications")[0];
			ps.setString(12, schoolChairmanQualifications);
			String schoolChairmanAadhaarID = (String) paramMap.get("schChairmanAadhaarID")[0];
			ps.setString(13, schoolChairmanAadhaarID);
			String schoolChairmanPhone = (String) paramMap.get("schChairmanPhone")[0];
			ps.setString(14, schoolChairmanPhone);
			String schoolChairmanEmail = (String) paramMap.get("schChairmanEmail")[0];
			ps.setString(15, schoolChairmanEmail);
		} catch (SQLException e) {
			LOGGER.error("Create School: Query creation failed");
			LOGGER.error(e.getMessage(), e);
		}
		return ps;
	}

	public static boolean isSchoolEntryPresent() {
		Connection intializedConnection = new PostgresConnection().getConnection();
		try {
			return isSchoolEntryPresent(intializedConnection);
		} catch (SQLException e) {
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
		}
		finally {
			try {
				LOGGER.info("Closing the DB connection.");
				intializedConnection.close();
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
		return false;
	}
	
	private static boolean isSchoolEntryPresent(Connection dbConnection) throws SQLException {		
		PreparedStatement ps = dbConnection.prepareStatement("select count(*) from \"School_Details\"");
		ResultSet rs = ps.executeQuery();
		if (rs.next()) {
			return rs.getInt(1) > 0;
		}
		return false;
	}
}