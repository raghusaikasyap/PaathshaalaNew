<%@page import="com.school.dal.db.execute.CreateSchool"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registering school</title>
</head>
<body>
<%
	Map<String, String[]> paramMap = request.getParameterMap();
	CreateSchool.createSchoolEntry(paramMap);
%>
</body>
</html>