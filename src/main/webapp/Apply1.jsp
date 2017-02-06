<!DOCTYPE HTML>
<%@page import="java.sql.PreparedStatement"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*,java.util.*, javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<html lang="ru-RU">
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="build/kalendae.css" type="text/css" charset="utf-8">

<!-- <script src="src/moment.js" type="text/javascript" charset="utf-8"></script>
<script src="build/kalendae.js" type="text/javascript" charset="utf-8"></script> -->
<script src="build/kalendae.standalone.js" type="text/javascript" charset="utf-8"></script>
</head>

<style>
section.top{
padding-top:30px;
display:block;
width:80%;
margin-left: auto;
    margin-right: auto;
}

div.bottom{
font-weight: bold;
padding-left: 25px;
padding-bottom: 40px;
}

.kalendae{
display:block;
margin-left: auto;
    margin-right: auto;
background: #FDF3E7;
padding-top: 10px;
border-radius: 0px;
width:80%;
padding-left: 27%;
}
h1{
text-shadow: 0 0 3px #FF0000;

}
body {background-color: #C63D0F;}
table {background-color: #FDF3E7;}

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

.button {
    background-color: #C63D0F; /* Button CSS */
    border: none;
    color: white;
    padding: 15px 32px;    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
border-radius: 12px;
}

.button:hover{
background-color: #a22a00;
}
</style>

<body>
<form action="apply.jsp" method="post">
<%
if(request.getParameter("submit")!=null)
{
String s1=request.getParameter("empid");
String s2=request.getParameter("Tyeoflv");
String s3=request.getParameter("totalv");
String s4=request.getParameter("leavremaining");
String s5=request.getParameter("reasonoflv");
String s6=request.getParameter("Startdate");
String s7=request.getParameter("enddate");
String s8=request.getParameter("carryfrwd");
String s9=request.getParameter("sensiority");
System.out.println(s4+s1);


try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://52.77.196.42:3306/employee","RS","orbisindia");
String query=("insert into 99_retail_employee_leave(Emp_Id,types_Of_leave,Total_Leave,Leaves_Remaining,Reason_of_leave,Staring_date,Ending_Date,Carry_Forward,Seniority_leave,Status )values (?,?,?,?,?,?,?,?,?,?)");
PreparedStatement ps=con.prepareStatement(query);
            ps.setString  (1,s1);
            ps.setString  (2,s2);
            ps.setString  (3,"14");
            ps.setString  (4,s4);
            ps.setString  (5,s5);
            ps.setString  (6,s6);
            ps.setString  (7,s7);
            ps.setString  (8,"0");
ps.setString  (9,"0"); 
            ps.setString  (10,"New");


                ps.execute();


            con.close();
            }
            catch (Exception e)
                {
                 // System.err.println("Got an exception!");
                  System.err.println(e.getMessage());
                }
            }
            %>

<section class="top">
  <table width="100%" align="center"><tr>
  <td ><img src="office_logo.jpg" alt="99Logo" style="width:262;height:100; padding-left: 116px"></td>
<td style="text-align: right;padding-right: 116px">  
<h1> Welcome User </h1> 
        <br>

        </td></tr>

<tr>
            <td colspan="3"  bgcolor="#333">


<ul id="nav" style="list-style-type: none; float:right"  >
  <li><a class="active" href="Login.jsp">Home</a></li>
  <li><a href="Sign_Out.jsp">Sign Out</a></li>

</ul>
                <ul id="nav" style="list-style-type: none; float:left">
                    <li><a href="apply.jsp">Apply</a></li>
                    <li><a href="cancel.jsp">Cancel</a></li>
                    <li><a href="calendar.html">Holiday Calendar</a></li>
                    <li><a href="Sign_Out.jsp">Leave Summary</a></li>

                </ul>


</td>

    </tr>
</table> </section>

<!-- <script type="text/javascript" charset="utf-8">

var currentAvailed =0;
var k = new Kalendae({
attachTo:document.body,
months:2,
mode:'multiple',
//direction: 'future',
//selected:[Kalendae.moment()],

});


console.log(k.getSelected());

k.subscribe('change', function () {
   var selectedDates = this.getSelectedAsText();
   document.getElementById("count").innerHTML = selectedDates.length;

if(selectedDates.length<= document.getElementById("total").innerHTML){
   var availed = document.getElementById("availed");
   availed.innerHTML = selectedDates.length;
   currentAvailed = selectedDates.length;
} 

   var remaining = document.getElementById("total").innerHTML;

   document.getElementById("remaining").innerHTML = document.getElementById("total").innerHTML - document.getElementById("availed").innerHTML;



});

function reset(){
var temp =  document.getElementById("total").innerHTML - currentAvailed;
if(temp<0){
temp = 0
}
document.getElementById("remaining").innerHTML = temp;

if(currentAvailed>document.getElementById("total").innerHTML){
document.getElementById("availed").innerHTML = document.getElementById("total").innerHTML;
}else{
document.getElementById("availed").innerHTML = currentAvailed; 
}
}


</script> -->

<!--   <section class="top" style="background-color:#FDF3E7; padding-top:10px;">
<div class="bottom">
<p style="padding-left:245px">Types of Leave:

</script> -->

<section class="top" style="background-color:#FDF3E7; padding-top:10px;">
<div class="bottom">
<p style="padding-left:245px">Types of Leave:

       <select name="Tyeoflv" id="type" onchange="option()">
           <option>Select</option>
           <option id="sick" >Sick Leave</option>
               <option id="annual">Annual Leave</option>
               <option id="official">Official Leave</option>

               </select>

&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 
<h1><a href="AppliedLeaves.jsp">Applies Leaves</a></h1>
</p>      

       <td><label for="forward" name="carryfrwd"> Carry forward: <span class="required">0</span></label></td>
       </br>
       </br>

       <td><label for="Seniority Leaves" name="sensiority"> Seniority Leaves:<span class="required">0</span></label></td>

               <p>Total Leave: &nbsp&nbsp<span id="total" name="totalv "></span></p>
               <p>Leaves Remaining:&nbsp&nbsp<span id="remaining" ></span></p>
    <input type="hidden" id="leavremaining" name="leavremaining" value="<%=request.getParameter("leavremaining")%>">
<p>Reason of Leave:<input type="text" id="Reason" name="reasonoflv"></p> 


<tr>    
<td><label for="Emp_Id">Employee_Id<span class="required">*</span></label></td>
<td><input type="emp_Id" id="emp_Id" name="empid" style="width: 178px" required autofocus></td>
</tr>
</br>
</br>
        <tr>
<td><label for="Date"> Starting Date<span class="required">*</span></label></td>
<td><input type="text" id="StartDate" name="Startdate" style="width: 180px" required autofocus></td>
</tr>

</br>
</br>
<tr>
<td><label for="Date"> Ending Date<span class="required">*</span></label></td>
<td><input type="text" id="EndDate" name="enddate" style="width: 180px" required autofocus></td>
</tr>
<tr>
<td></td>

<td><input type="submit" name="submit" value="Submit" />
</td>
</tr>

<!--  <center><button type="button" class="button" onclick="alert('Working...')">Apply</button><center> -->
</div>
</section>
</form>
</body>
<script>
var daysBetween;
var total;
function noOfdays()
{ 


if(document.getElementById("StartDate").value=="" )
{
alert("You must enter the 'From Date' value.")
return
}
if(document.getElementById("EndDate").value=="" )
{
alert("You must enter the 'To Date' value.")
return
}   
var fromDate=document.getElementById("StartDate").value;
var toDate=document.getElementById("EndDate").value; 

var startDate = Date.parse(fromDate);
var endDate = Date.parse(toDate);
daysBetween = (new Date(toDate).getTime() - new Date(fromDate).getTime()) / 86400000 +1;
// alert(daysBetween);
if (isNaN(startDate)) {
alert("The start date provided is not valid, please enter a valid date.");
return false;
}
if (isNaN(endDate)) {
alert("The end date provided is not valid, please enter a valid date.");
return false;
} 
document.getElementById("remaining").innerHTML = total-Number(daysBetween);
document.getElementById("leavremaining").value = total-Number(daysBetween);
}    
function option(){

var x = document.getElementById("type").selectedIndex;
var y = document.getElementById("type").options;

if (x==1) {

total = 4;

} else
if (x==2) {

total = 14;

} else {

total = 14;

}
document.getElementById("total").innerHTML = total;
document.getElementById("remaining").innerHTML = total; 
reset();
}


</script>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.9/jquery-ui.js"></script>
<script src="js/dateField.js"></script>
<link href="js/jquery-ui.css" rel="stylesheet">
</html><%@ page language="java" import="java.sql.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*,java.util.*, javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
<style>
    tr:nth-child(even) {background:#FF6600}
    tr:nth-child(odd) {background:#2a2aae}
    tr:nth-child(odd) {color:#FFFFFF}
tr:nth-child(even) {color:#FFFFFF}
</style>
</head>
<body>
<center>
<h1></h1>
<p align="center">
	<form action="Apply1.jsp" method="post">
	            
           
	<%
	  if(request.getParameter("submit")!=null)
{
String s1=request.getParameter("empid");
String s2=request.getParameter("Tyeoflv");
String s3=request.getParameter("totalv");
String s4=request.getParameter("leavremaining");
String s5=request.getParameter("reasonoflv");
String s6=request.getParameter("Startdate");
String s7=request.getParameter("enddate");
String s8=request.getParameter("carryfrwd");
String s9=request.getParameter("sensiority");



try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://52.77.196.42:3306/employee","RS","orbisindia");
String query=("insert into 99_retail_employee_leave(Emp_Id,types_Of_leave,Total_Leave,Leaves_Remaining,Reason_of_leave,Staring_date,Ending_Date,Carry_Forward,Seniority_leave )values (?,?,?,?,?,?,?,?,?)");
PreparedStatement ps=con.prepareStatement(query);
                
            ps.setString  (1,s1);
            ps.setString  (2,s2);
            ps.setString  (3,s3);
            ps.setString  (4,s4);
            ps.setString  (5,s5);
            ps.setString  (6,s6);
            ps.setString  (7,s7);
            ps.setString  (8,s8);
            ps.setString  (9,s9); 
           
                
                
                ps.execute();
        
                    
            	con.close();
            	}
            	catch (Exception e)
                {
                 // System.err.println("Got an exception!");
                  System.err.println(e.getMessage());
                }
            }
            %>
                  
               
<tr>    
<td><label for="Emp_Id">Employee_Id<span class="required">*</span></label></td>
<td><input type="emp_Id"  name="empid" style="width: 275px" required autofocus></td>
</tr>
<tr>
<td>
Leave Type: 
<select name=Tyeoflv>
<option id="sicK">sick Leave</option>
<option id="Annual Leavve">Annual Leave</option>
<option id="LeaveWithoutPay">Leave Without Pay</option>
<option id="officialleave">officialleave</option>
<option id="Relocation">Relocation</option>
</select>
</td>
</tr>

               <p>Total Leave:14 &nbsp&nbsp<span id="total" name="totalv "></span></p>
               <p>Leaves Remaining:&nbsp&nbsp<span id="remaining" name="leavremaining"></span></p>
    
        <p>Reason of Leave:<input type="text" id="Reason" name="reasonoflv"></p>            
   <tr>
<td><label for="Date"> Begin Date<span class="required">*</span></label></td>
<td><input type="date" id="Date" name="Startdate" style="width: 180px" required autofocus></td>
</tr>
    
</br>
</br>
<tr>
<td><label for="Date"> Ending Date<span class="required">*</span></label></td>
<td><input type="date" id="Date" name="enddate" style="width: 180px" required autofocus></td>
</tr>
 <td><label for="forward" name="carryfrwd"> Carry forward: <span class="required">0</span></label></td>
       </br>
       </br>
       
       <td><label for="Seniority Leaves" name="sensiority"> Seniority Leaves:<span class="required">0</span></label></td>

<tr>
<td></td>
<td><input type="submit" name="submit" value="Submit" />
<input type="submit" name="cancel" value="Cancel" /></td>
</tr>

</table>
</form>
</center>
</body>
</html>
 
			
