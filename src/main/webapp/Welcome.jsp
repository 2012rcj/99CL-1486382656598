<!DOCTYPE html>
<%@ page language="java" import="java.sql.*" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome</title>
     <style>
       
h1 {
text-shadow: 0 0 3px #FF0000;
}


.a {
list-style-type: circle;
    margin: 0;
    padding-left: 20px;
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
    
}

#nav li:last-child {
    border-right: none;
}

#nav li a {
	
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
    </head>
    <body style="max-height:100%;min-width:100%;margin-left:0%;margin-right:0%;margin-top:5%">
       
        <table border="0" width ="80%" height="100%" align="center" bgcolor="#FDF3E7">
            <tr>
        <td width="20%" height="100%"><img src="office_logo.jpg" alt="99Logo" style="color:#FF6600;width:262;height:100; padding-left: 116px"></td>
        <td width="20%" height="100%" style="text-align: right;padding-right: 116px">  
		<h1> Welcome <%
            //String  N=(String)session.getAttribute("U");
            //out.println(N);
            String V_Name = request.getParameter("Username");
            out.println(V_Name);
            
            session.setAttribute("V_SessionName",V_Name);
                        %> </h1> 
        <br>
        
        </td>
        
            </tr>
			
		<tr><td colspan="2" >
		<table width ="80%" border="0" align="center" bgcolor="#FDF3E7">
		
    <tr>
            <td colspan="3"  bgcolor="#333">	
			<ul id="nav" style="list-style-type: none; float:right"  >
  <li><a class="active" href="Login.jsp">Home</a></li>
  <li><a href="Sign_Out.jsp">Sign Out</a></li>
 
</ul>
			
			
			
			
			</td>
            
    </tr>
            <tr bgcolor="#FDF3E7" >
             
                <td style="padding-left: 70px; padding-top: 50px">
                    
                <h2>Payslip</h2>
                <ul class="a">
                    <li><a href="Payslip.jsp" style="text-decoration: none;">Payslip</a></li>
                    <li>PFYTD statements</li>
                    <li>Reimbursement</li>
                    <li>Ytd Statement</li>
                    <li>Reimbursement statement</li>
                    <li>PF YTD statement</li>
                </ul>
                <br><br><br><br><br><br><br><br><br><br><br><br>				
                </td>	

				
				<td style="padding-left: 70px; padding-bottom: 35px; padding-top: 50px">
                <h2>Income Tax</h2> 
                <ul class="a">
                    <li>Income Tax statements</li>
                    <li>Income Tax Declaration</li>
                    <li>Income Tax Calculator</li>
                    <li>Form 16</li>
                </ul>
            <br><br><br><br><br><br><br><br><br><br><br><br>
				</td>
            
            
				<td style="padding-left: 70px; padding-top: 50px">   
                 <h2>Other</h2> 
				<ul class="a">
                    <li>Loans</li>
                    <li>Post Trouble Ticket</li>
                    <li>My Trouble Tickets</li>
                    <li>Change Password</li>
                    <li>Leave</li>
                    <li>Forms</li>
                </ul>
             
             <br><br><br><br><br><br><br><br><br><br><br><br>
				</td>
			 </tr>
           
        </table></td>
		</tr>
        </table>
       
        
        
           
        </body>
    
</html>