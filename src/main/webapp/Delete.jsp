<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.PreparedStatement"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*,java.util.*, javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%


String deleted=request.getParameter("deletedid");
 
Class.forName("com.mysql.jdbc.Driver");
Connection con1=DriverManager.getConnection("jdbc:mysql://52.77.196.42:3306/employee","RS","orbisindia");
//String query = "select LastModified from CacheTable where url = '" + url +"'";
//String delete1="delete from 99_retail_employee_leave WHERE Sl_No = '" + deleted +"'";
Statement str=con1.createStatement();
ResultSet rs=str.executeQuery("delete from 99_retail_employee_leave WHERE Sl_No = '" + deleted +"'");
response.sendRedirect("AppliedLeaves.jsp");



%>


</body>
</html>