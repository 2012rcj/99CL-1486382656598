
<%@ page language="java" import="java.sql.*"
	contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>


<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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

.pg-normal {
	color: #000000;
	font-size: 15px;
	cursor: pointer;
	background: #FF6600;
	padding: 2px 4px 2px 4px;
}

.pg-selected {
	color: #fff;
	font-size: 15px;
	background: #FF6600;
	padding: 2px 4px 2px 4px;
}
</style>
</style>
<!-- script is use for pagging next and previous -->
<script type="text/javascript">

function Pager(tableName, itemsPerPage) {

this.tableName = tableName;

this.itemsPerPage = itemsPerPage;

this.currentPage = 1;

this.pages = 0;

this.inited = false;

this.showRecords = function(from, to) {

var rows = document.getElementById(tableName).rows;

// i starts from 1 to skip table header row

for (var i = 1; i < rows.length; i++) {

if (i < from || i > to)

rows[i].style.display = 'none';

else

rows[i].style.display = '';

}

}

this.showPage = function(pageNumber) {

if (! this.inited) {

alert("not inited");

return;

}

var oldPageAnchor = document.getElementById('pg'+this.currentPage);

oldPageAnchor.className = 'pg-normal';

this.currentPage = pageNumber;

var newPageAnchor = document.getElementById('pg'+this.currentPage);

newPageAnchor.className = 'pg-selected';

var from = (pageNumber - 1) * itemsPerPage + 1;

var to = from + itemsPerPage - 1;

this.showRecords(from, to);

}

this.prev = function() {

if (this.currentPage > 1)

this.showPage(this.currentPage - 1);

}

this.next = function() {

if (this.currentPage < this.pages) {

this.showPage(this.currentPage + 1);

}

}

this.init = function() {

var rows = document.getElementById(tableName).rows;

var records = (rows.length - 1);

this.pages = Math.ceil(records / itemsPerPage);

this.inited = true;

}

this.showPageNav = function(pagerName, positionId) {

if (! this.inited) {

alert("not inited");

return;

}

var element = document.getElementById(positionId);

var pagerHtml = '<span onclick="' + pagerName + '.prev();" class="pg-normal">Prev </span> ';

for (var page = 1; page <= this.pages; page++)

pagerHtml += '<style id="pg' + page + '" class="pg-normal;"></style> ';

pagerHtml += '<span onclick="'+pagerName+'.next();" class="pg-normal"> Next</span>';

element.innerHTML = pagerHtml;

}

}

</script>
</head>
<body>

	<%
		String Emp_Id = "";
		if (request.getParameter("empid") != null) {
			Emp_Id = request.getParameter("strid");
			//String name = (String) session.getAttribute("tickid");

		}
	%>
	<form name=" " method="post" action="Employeedetails">
		<table align="center" border="0">
			<tr>
			<tr class="EVEN">
				<td><input type="hidden" name="empid"
					value="<%=request.getParameter("empid")%>"> Emp Id</td>

				<td>
					<%
						////when user login user name save in database
						String Nilu = request.getParameter("value78");
						String name = (String) session.getAttribute("thename");
						try {
							// load the driver class 
					Class.forName("com.mysql.jdbc.Driver");
				    Connection conn = DriverManager.getConnection("jdbc:mysql://52.77.196.42:3306/employee","RS","orbisindia");
							Statement st = conn.createStatement();
							//execute the select query for show the data on page and set the data rs .rs is the object
							ResultSet rs = st.executeQuery("select Emp_Id from 99_retail_employee_leave");
					%> <select id="mytext" name="strid" style="width: 275px">

						<%
							while (rs.next()) {
									if (rs.getString(2).equals("strid")) {
						%>
						<option value='<%=rs.getString(2)%>' selected><%=rs.getString(2)%></option>
						<%
							} else {
						%>
						<option value1='<%=rs.getString(2)%>'><%=rs.getString(2)%></option>
						<%
							}
								}
						%>
				</select> <%
 	} catch (Exception e) {
 		out.println("Exception e = " + e);
 	}
 %>

				</TD>
				<th><input type="submit" value="submit"></th>
			</tr>

		</table>
	</form>

	<%
		//value is retrieving from textfield
		String s1 = request.getParameter("empid");
		String s2 = request.getParameter("Tyeoflv");
		String s3 = request.getParameter("totalv");
		String s4 = request.getParameter("leavremaining");
		String s5 = request.getParameter("reasonoflv");
		String s6 = request.getParameter("Startdate");
		String s7 = request.getParameter("enddate");
		String s8 = request.getParameter("carryfrwd");
		String s9 = request.getParameter("sensiority");
		String s10 = request.getParameter("Status");

		String str = request.getParameter("strid");

		if ((request.getParameter("Emp_Id") != "NULL")) {
			try {

				Class.forName("com.mysql.jdbc.Driver");
				Connection conn = DriverManager.getConnection("jdbc:mysql://52.77.196.42:3306/employee","RS","orbisindia");
				//it is using for update the value in database
				String query = "UPDATE Emp_Id from 99_retail_employee_leave set Status = ? where Sl_No = ? ";
				PreparedStatement preparedStmt = conn.prepareStatement(query);
				//set the value in prparedstm object
				preparedStmt.setString(1, s10);
				preparedStmt.setString(2, s1);
	
				//execute preparedstmt query
				preparedStmt.executeUpdate();
				
				
				// create the statement object 
				Statement stmt = conn.createStatement();
				String sql = "SELECT Emp_Id,types_Of_leave,Total_Leave,Leaves_Remaining,Reason_of_leave,Staring_date,Ending_Date,Carry_Forward,Seniority_leave,Status FROM Status WHERE Emp_Id ='"
						+ str + "'";
				//execute query
				ResultSet r1 = stmt.executeQuery(sql);
	%>

	<TABLE BORDER="1" id="tablepaging" align="center">
	<TR bgcolor="orange">
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
		</TR>

		<%
			while (r1.next()) {
		%>
		<TR bgcolor="pink">
			<TD><a
				href="EmployeeEdit ?Value1=<%=r1.getString(1)%>&Value2=<%=r1.getString(2)%>&Value3=<%=r1.getString(3)%>&Value4=<%=r1.getString(4)%>&Value4=<%=r1.getString(4)%>&Value5=<%=r1.getString(5)%>&Value6=<%=r1.getString(6)%>&Value7=<%=r1.getString(7)%>&Value8=<%=r1.getString(8)%>&Value9=<%=r1.getString(9)%>&Value10=<%=r1.getString(10)%>"
				style="color: cyan"><%=r1.getString(1)%></a></td>
			<TD><%=r1.getString(2)%></TD>
			<TD><%=r1.getString(3)%></TD>
			<TD><%=r1.getString(4)%></TD>
			<td><%=r1.getString(5)%></TD>
			<td><%=r1.getString(6)%></TD>
			<TD><%=r1.getString(7)%></TD>
			<TD><%=r1.getString(8)%></TD>
			<TD><%=r1.getString(9)%></TD>
			<TD><%=r1.getString(10)%></TD>
			

		</TR>
		<%
			}
		%>
	</TABLE>
	<%
		//close the connection object
				conn.close();

			} catch (Exception e) {
				out.println(e);
			}
		} else {
	%><br>
	<br>
	<%
		try {
				String str1 = request.getParameter("Value1");
				String str2 = request.getParameter("Value2");
				String str3 = request.getParameter("Value3");
				String str4 = request.getParameter("Value4");
				String str5 = request.getParameter("Value5");
				String str6 = request.getParameter("Value6");
				String str7 = request.getParameter("Value7");
				String str8 = request.getParameter("Value8");
				String str9 = request.getParameter("Value9");
				String str10 = request.getParameter("Value10");
				
				//convert into integer value
				int y1 = Integer.parseInt(str1);
				Class.forName("com.mysql.jdbc.Driver");
				Connection conn = DriverManager.getConnection("jdbc:mysql://52.77.196.42:3306/employee","RS","orbisindia");
				String query = "UPDATE 99_retail_employee_leave SET Status='" + str10
						
						+ "' where `Sl_No`='+y1+'OR Value2 IS NOT null ";
				Statement stmt = conn.createStatement();
				ResultSet r2 = stmt.executeQuery(
						"SELECT Emp_Id,types_Of_leave,Total_Leave,Leaves_Remaining,Reason_of_leave,Staring_date,Ending_Date,Status FROM 99_retail_employee_leave");
	%>
	<TABLE BORDER="1" align="center">
		<TR bgcolor="orange">
			<TH>Emp_Id</TH>
			<TH>types_Of_leave</TH>
			<TH>Total_Leave</TH>
			<TH>Leaves_Remaining</TH>
			<TH>Reason_of_leave</TH>
			<TH>LastUpdate</TH>
			<TH>Status</TH>

		</TR>
		<%
			while (r2.next()) {
		%>
		<TR bgcolor="pink">
			<TD><a
				href=" EmployeeEdit?Value1=<%=r2.getString(1)%>&Value2=<%=r2.getString(2)%>&Value3=<%=r2.getString(3)%>&Value4=<%=r2.getString(4)%>&Value5=<%=r2.getString(5)%>&Value6=<%=r2.getString(6)%>&Value7=<%=r2.getString(7)%>"
				style="color: cyan"><%=r2.getString(1)%></a></td>

			<!-- <TD><%=r2.getString(1)%></a></td>-->

			<TD><%=r2.getInt(2)%></TD>
			<TD><%=r2.getString(3)%></TD>
			<TD><%=r2.getString(4)%></TD>
			<TD><%=r2.getString(5)%></TD>
			<TD><%=r2.getString(6)%></TD>
			<TD><%=r2.getString(7)%></TD>
			<TD><%=r2.getString(8)%></TD>
			<TD><%=r2.getString(9)%></TD>
			<TD><%=r2.getString(10)%></TD>
			

		</TR>
		<%
			}
					conn.close();
				} catch (Exception even) {
					out.println(even);
				}
			}
		%>

	</TABLE>
	<!-- div is use for pagging -->
	<div id="pageNavPosition" style="padding-top: 20px" align="center">
	</div>
	<!-- script is using for pagging next and previous -->
	<script type="text/javascript">
var pager = new Pager('tablepaging',20);
pager.init();
pager.showPageNav('pager', 'pageNavPosition');
pager.showPage(1);
</script>
</body>

</html>