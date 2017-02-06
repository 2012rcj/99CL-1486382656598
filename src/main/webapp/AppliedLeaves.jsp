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
<input type="hidden" name=del id=del value="<%=request.getParameter("del")%>">
<%try
{
//String str=(String)session.getAttribute("");
//String empid=request.getParameter("empid");
//String empid="19";// only this empid shows.databa
PreparedStatement prepStmt;
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://52.77.196.42:3306/employee","RS","orbisindia");
//String query = "select LastModified from CacheTable where url = '" + url +"'";
String query="Select * from 99_retail_employee_leave";
prepStmt = con.prepareStatement(query);
ResultSet rs=prepStmt.executeQuery();
%>
<table border="1px">
<tr>
<th>Serial No</th> 
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
<td><%=rs.getString(1)%></td>
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
<%} %>
</table>

<%
}
catch(Exception e){e.printStackTrace();}%>
 <form >
<input type="text" name=todelete id=todelete>
<button name="Delete" onclick="deleteLeave(this.form)">Cancel</button>
</form>
<%
//if(request.getParameter("screenAction")==("deletel"))
String s=(request.getParameter("todelete"));
if(s!=null)
{ 

try{
//Statement stmt1 = null;
//request.getParameter("del");
int sl_no=0;
//String s=(request.getParameter("todelete"));
{
sl_no=Integer.parseInt(s);
//String status=request.getParameter("");

System.out.println(s);
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://52.77.196.42:3306/employee","RS","orbisindia");
//String query1="update table 99_retail_employee_leave set Status=cancel where Sl_No = '" + sl_no +"'";
String query1="UPDATE  99_retail_employee_leave set `Status` = ? where `Sl_No`= ?";

PreparedStatement pstmt=con.prepareStatement(query1);
pstmt.setString(1,"Cancel");
pstmt.setInt(2,sl_no);
pstmt.executeUpdate();  
con.close();
}}
catch(SQLException e)
{
e.printStackTrace();
}
%>



<%} %>
</body>
<script>
function deleteLeave(form)
{
var x=document.getElementById("todelete").value;
document.getElementById("del").value=x;
//form.screenAction.value="deletel";
form.action="AppliedLeaves.jsp";
form.submit();
}
</script>
</html>