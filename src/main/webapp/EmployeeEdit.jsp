
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<!--style is use for background color of even and odd row -->
<style>
tr:nth-child(even) {
	background: #FF6600
}

tr:nth-child(odd) {
	background: #2a2aae
}

tr:nth-child(odd) {
	color: #FFFFFF
}

tr:nth-child(even) {
	color: #FFFFFF
}
</style>
</head>
<body onload="setFocusToTextBox()">
	<form action=" " method="post">
		<%
			try {
				// load the driver class 
				Class.forName("com.mysql.jdbc.Driver");
	           Connection con=DriverManager.getConnection("jdbc:mysql://52.77.196.42:3306/employee","RS","orbisindia");
				//create the statement object
				Statement stmt = con.createStatement();
				//execute the query
				ResultSet r1 = stmt.executeQuery("select * from 99_retail_employee_leave");
		%>
		<table align="center" border="1">
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
			<tr>
				<td>
					<%
						out.println(request.getParameter("Value1"));
					%> <input type="hidden" value=<%=request.getParameter("Value1")%>
					name="Emp_Id" size=16>
				</td>
		
				<td>
					<%
						out.println(request.getParameter("Value2"));
					%> <input type="hidden" value=<%=request.getParameter("Value2")%>
					name="types_Of_leave" size=16>
				</td>
				<td>
					<%
						out.println(request.getParameter("Value3"));
					%> <input type="hidden" value=<%=request.getParameter("Value3")%>
					name="Total_Leave" size=16>
				</td>
				<td>
					<%
						out.println(request.getParameter("Value4"));
					%> <input type="hidden" value=<%=request.getParameter("Value4")%>
					name="Leaves_Remaining" size=16>
				</td>
				<td>
					<%
						out.println(request.getParameter("Value5"));
					%> <input type="hidden" value=<%=request.getParameter("Value5")%>
					name="Reason_of_leave" size=16>
				</td>
				<td>
					<%
						out.println(request.getParameter("Value6"));
					%> <input type="hidden" value=<%=request.getParameter("Value6")%>
					name="Staring_date" size=16>
				</td>
				<td>
					<%
						out.println(request.getParameter("Value7"));
					%> <input type="hidden" value=<%=request.getParameter("Value7")%>
					name="Ending_Date" size=16>
				</td>
				<td>
					<%
						out.println(request.getParameter("Value8"));
					%> <input type="hidden" value=<%=request.getParameter("Value8")%>
					name="Carry_Forward" size=16>
				</td>
				<td>
					<%
						out.println(request.getParameter("Value9"));
					%> <input type="hidden" value=<%=request.getParameter("Value9")%>
					name="Seniority_leave" size=16>
				</td>
				<td>
					<%
						out.println(request.getParameter("Value8"));
					%> <input type="hidden" value=<%=request.getParameter("Value8")%>
					name="Status" size=16>
				</td>
				<td>
					 <input type="text" value=<%=request.getParameter("Value10")%>
					name="Date" size=16>
				</td>
			</tr>
		</table>
		<%
			//update the query and set the value 
				String query = "UPDATE 99_retail_employee_leave SET Status='" + request.getParameter("Value10")
						+ "',Status='"  + "' where Sl_NO='"
						+ request.getParameter("Value1") + "'OR Value2 IS NOT null ";
				//create the preparedstmt object 
				PreparedStatement pst = con.prepareStatement(query);
				//execute the preparedstmt
				pst.executeUpdate();
				//close the connection object
				con.close();
			} catch (Exception e) {
				System.out.println(e);
			}
		%>
		<br>
		<table align="center">
			<tr>
				<td><input type="submit" name="btnSubmit" value="Submit" />
					</form> <a href="Employeedetails.jsp" style="color: white"><input
						type="button" value="Cancel"></a></td>
			</tr>
		</table>
</body>
</html>