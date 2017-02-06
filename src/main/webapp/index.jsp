<%-- 
    Document   : Login
    Created on : Jul 12, 2016, 5:05:21 PM
    Author     : Neha
--%>

<%@ page language="java" import="java.sql.*" contentType="text/html; charset=ISO-8859-1"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <style>
body {background-color:#FF9033;}
h1{color: cyane;}
p{color:green;}
</style>
    <body>
        <form action='Welcome.jsp'>
        <%
            String usr=request.getParameter("Username");
         session.setAttribute("U",usr);
         String Pas=request.getParameter("Password");
         session.setAttribute("Ps",Pas);
         
         
       %> 
        <center>
         <h1>Sign in</h1>
         </center>
        
        
        <table align="center">
       
        <tr>
        <td>
       Username:
          </td>
          <td>
      <input type="text" id="Username" name="Username" size="23" maxlength="10" required >
          </td>
        </tr>
         
        <tr>
   <td>
       Password:
          </td>
          <td>
      <input type="Password" id="Password" name="Password" size="23" maxlength="10" required >
          </td>
        </tr>
        </table>
          </center>
    
    <center>    
            <button id="printbtn" name="btnSubmit" >Login</button>
          </center>  
    </form>
    </body>
</html>
