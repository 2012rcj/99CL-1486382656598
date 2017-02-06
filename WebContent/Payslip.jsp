<%-- 
    Document   : Payslip
    Created on : Jul 13, 2016, 3:40:55 PM
    Author     : Neha
--%>
<%@ page language="java" import="java.sql.*" contentType="text/html; charset=ISO-8859-1"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <style type="text/css">
@media print {
    #printbtn {
        display :  none;
    }
}

@page {
    size: auto;   /* auto is the initial value */
    margin: 0;  /* this affects the margin in the printer settings */
}
</style>
<style>
       
h1 {
text-shadow: 0 0 3px #FF0000;
}




#nav ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: #333;
}

#nav li {
    float: left;
    border-right:1px solid #bbb;
}

#nav li:last-child {
    border-right: none;
}

#nav li a {
    display: block;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}

#nav li a:hover:not(.active) {
    background-color: #111;
}

#nav .active {
    background-color: #C63D0F;
}



body {background-color: #C63D0F;}

table { table-layout: fixed; }
td { width: 20%; }
         </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Payslip</title>
    </head>
   <body style="max-height:100%;min-width:100%;margin-left:0%;margin-right:0%;margin-top:5%">
       
        <table border="0" width ="80%" height="100%" align="center" bgcolor="#FDF3E7">
            <tr>
        <td width="20%" height="100%"><img src="office_logo.jpg" alt="99Logo" style="color:#FF6600;width:262;height:100; padding-left: 116px"></td>
        <td width="20%" height="100%" style="text-align: right;padding-right: 116px">  
		<h1> Welcome 
                    <%   String Name =(String) session.getAttribute("V_SessionName");
                        out.println(Name);
                     //String Mon = request.getParameter("Month");
                     //out.println(Mon);
               try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn=DriverManager.getConnection("jdbc:mysql://52.77.196.42:3306/employee","RS","orbisindia");
			Statement stmt=conn.createStatement();
			ResultSet rs=stmt.executeQuery("SELECT * FROM register where  name='"+Name+"' " );
                    
                    %> </h1> 
			
		<tr><td colspan="2" >
		<table width ="80%" border="0" align="center" bgcolor="#FDF3E7">
		
    <tr>
            <td colspan="3"  bgcolor="#333">
                <ul id="nav" style="list-style-type: none; float:left">
                    <li><a href="Sign_Out.jsp">My Info</a></li>
                    <li><a href="Sign_Out.jsp">Employee info</a></li>
                    <li><a href="Leave1.jsp">Leave</a></li>
                    <li><a href="Sign_Out.jsp">Forms</a></li>
                </ul>
			<ul id="nav" style="list-style-type: none; float:right"  >
                            
  <li><a class="active" href="Login.jsp">Home</a></li>
  <li><a href="Sign_Out.jsp">Sign Out</a></li>
 
</ul>
     </td>   
     </tr>
     
    <tr>
     
    
       <td bgcolor="#E6E6FA">
           
        <h3>Trouble Ticket</h3>
        <h3>Salary Info</h3>
                <ul class="a">
                    <li>Payslip</li>
                    <li>Reimbursement Payslip</li>
                     <li>YTD Statement</li>
                     <li>Form 16</li>
                     <li>Loan Statement</li>
                     <li>PFTYD Statement</li>
                     <li>Income Tax Statement</li>
                     <li>Income Tax Declaration</li>
                     <li>Income Tax Calculator</li>
                     <li>Reimbursement Statement</li>     
                </ul>
        
          <h3>Password</h3>
       </td>
              
          
         
       <td align="right">
           <h2>Payslip for July 2016</h2>
           Enter Month/Year : 
            <select name="Month" id="Month">
            <option>Select</option>    
            <option>Jan/2016</option>  
            <option>Feb/2016</option>
            <option>March/2016</option>
            <option>April/2016</option>
            <option>May/2016</option>
            <option>June/2016</option>
            <option>July/2016</option>
            <option>August/2016</option>
            <option>Sep/2016</option>
            <option>Oct/2016</option>
            <option>Nov/2016</option>
            <option>Dec/2016</option>
            </select>
            <center>
                <form action="Payslip.jsp">
        <button id="printbtn" name="btnSubmit">Submit</button>
        </form>
           </center>
           <br>
           <br>
           <br>
           <table border="1">
           <center>
               <button>Print</button>
              </center>
<tr align="right">
    <br>
    <br>
 <%while(rs.next()){%>   
<td>Employee No:</td>
<td><%=rs.getString(16)%></td>

<td>Employee Name:</td>
<td><%=rs.getString(5)%></td>

</tr>
<tr>
<td>Bank:</td>
<td><%=rs.getString(17)%></td>
<td>Bank Acc:</td>
<td><%=rs.getString(18)%></td>
</tr>
<tr>
<td>Joining Date:</td>

<td><%=rs.getString(20)%></td>
<td>PF No.</td>
<td><%=rs.getString(21)%></td>
<%}%><%
}
catch(Exception e)
{
out.println(" Exception Occure at line no 236 = " + e);
}
%>
 </table>
         <br>
         <br>
         <br>
           
       <table border="1"> 
           <%
               //String Mon = request.getParameter("Month");
                     //out.println(Mon);
               
               try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn1=DriverManager.getConnection("jdbc:mysql://52.77.196.42:3306/employee","RS","orbisindia");
			Statement stmt1=conn1.createStatement();
			ResultSet rs1=stmt1.executeQuery("SELECT * FROM pay ");
            %>
           
           
               <%while(rs1.next()){%>
              <tr><td>Earning </td><td> Rs</td><td>Deduction </td><td> Rs</td></tr>
              <tr><td>Basic </td><td> <%=rs1.getString(1)%> </td><td>PF </td><td><%=rs1.getString(9)%></td></tr>
               <tr><td>Basic Arrears </td><td><%=rs1.getString(2)%></td><td>Prof Tax </td><td><%=rs1.getString(10)%></td></tr>
               <tr><td>HRA </td><td><%=rs1.getString(3)%></td><td>Salary Advance</td><td><%=rs1.getString(11)%></td></tr>
               <tr><td>HRA Arrears </td><td><%=rs1.getString(4)%></td></tr>
               <tr><td>Conveyance</td><td><%=rs1.getString(5)%></td></tr>
               <tr><td>LTA</td><td><%=rs1.getString(6)%></td></tr>
               <tr><td>LTA Arrears</td><td><%=rs1.getString(7)%></td></tr>
               <tr><td>Medical Allowance</td><td><%=rs1.getString(8)%></td></tr>
               <tr><td>Total Earnings</td><td>Total Deduction</td></tr>
           
  <%}%> <%
}
catch(Exception e)
{
out.println(" Exception Occure at line no 237 = " + e);
}
%>
              
           
       </table>
         <br>
         <br>
           <label>
      Net Pay : Rs
  </label>
<input type ="text" name="Pay">
       </td>
       
       
       
    </tr>
    
  </table>
        </table>
    </body>
</html>