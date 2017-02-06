<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.PreparedStatement"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*,java.util.*, javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<input type="hidden" name=del id=del value="<%=request.getParameter("del")%>">
<%try
{
	//String empid=request.getParameter("empid");
	String empid="890";
	 PreparedStatement prepStmt;
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://52.77.196.42:3306/employee","RS","orbisindia");
	//String query = "select LastModified from CacheTable where url = '" + url +"'";
	String query="Select * from 99_retail_employee_leave WHERE Emp_id = '" + empid +"'";
	prepStmt = con.prepareStatement(query);
	ResultSet rs=prepStmt.executeQuery();
	%>
	<table border="1px">
	<tr>
	<th>EmpId</th>
	<th>Type of leave</th>
	<th>Total leave</th>
	<th>leave remaining</th>
	<th>Reason of leave</th>
	<th>start date</th>
	<th>end date</th>
	<th>carry forward </th>
	<th>seniority</th>
	<th>status</th>
	</tr>
	<%while(rs.next()){ %>
	<tr>
	<td><%=rs.getString("Emp_id")%></td>
	<td><%=rs.getString("types_Of_leave")%></td>
	<td><%=rs.getString("Total_Leave")%></td>
	<td><%=rs.getString("Leaves_Remaining")%></td>
	<td><%=rs.getString("Reason_of_leave")%></td>
	<td><%=rs.getString("Staring_date")%></td>
	<td><%=rs.getString("Ending_Date")%></td>
	<td><%=rs.getString("Carry_Forward")%></td>
	<td><%=rs.getString("Seniority_leave")%></td>
	<td><%=rs.getString("Status")%></td>
</tr>

	<% 
	}
	%>
</table>
<%
} 
catch(Exception e)
{
	
 }
%>


</body>


</html>