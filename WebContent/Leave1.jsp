<%-- 
    Document   : Leave1
    Created on : Jul 20, 2016, 1:30:30 PM
    Author     : Neha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Leave</title>
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
.onoffswitch {
    position: relative; width: 90px;
    -webkit-user-select:none; -moz-user-select:none; -ms-user-select: none;
}
.onoffswitch-checkbox {
    display: none;
}
.onoffswitch-label {
    display: block; overflow: hidden; cursor: pointer;
    border: 2px solid #999999; border-radius: 20px;
}
.onoffswitch-inner {
    display: block; width: 200%; margin-left: -100%;
    transition: margin 0.3s ease-in 0s;
}
.onoffswitch-inner:before, .onoffswitch-inner:after {
    display: block; float: left; width: 50%; height: 30px; padding: 0; line-height: 30px;
    font-size: 14px; color: white; font-family: Trebuchet, Arial, sans-serif; font-weight: bold;
    box-sizing: border-box;
}
.onoffswitch-inner:before {
    content: "ON";
    padding-left: 10px;
    background-color: #34A7C1; color: #FFFFFF;
}
.onoffswitch-inner:after {
    content: "OFF";
    padding-right: 10px;
    background-color: #EEEEEE; color: #999999;
    text-align: right;
}
.onoffswitch-switch {
    display: block; width: 18px; margin: 6px;
    background: #FFFFFF;
    position: absolute; top: 0; bottom: 0;
    right: 56px;
    border: 2px solid #999999; border-radius: 20px;
    transition: all 0.3s ease-in 0s; 
}
.onoffswitch-checkbox:checked + .onoffswitch-label .onoffswitch-inner {
    margin-left: 0;
}
.onoffswitch-checkbox:checked + .onoffswitch-label .onoffswitch-switch {
    right: 0px; 
}
         </style>
    </head>
   <body style="max-height:100%;min-width:100%;margin-left:0%;margin-right:0%;margin-top:5%">
       
        <table border="0" width ="80%" height="100%" align="center" bgcolor="#FDF3E7">
            <tr>
        <td width="20%" height="100%"><img src="office_logo.jpg" alt="99Logo" style="color:#FF6600;width:262;height:100; padding-left: 116px"></td>
        <td width="20%" height="100%" style="text-align: right;padding-right: 116px">  
		<h1> Welcome </h1> 
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
                <ul id="nav" style="list-style-type: none; float:left">
                    <li><a href="apply.jsp">Apply</a></li>
                    <li><a href="cancel.jsp">Cancel</a></li>
                    <li><a href="calendar.html">Holiday Calendar</a></li>
                    <li><a href="Sign_Out.jsp">Leave Summary</a></li>
                    <li><a href="Sign_Out.jsp">Compensation off</a></li>
                </ul>
                
                
			</td>
            
    </tr>
                
                    
                    <br>
                    <br>
                        
                        <td bgcolor="#E6E6FA">
                            <h3> Types Of Leave:</h3>
                       
                        
                            <select>
                                <option>Select Leave type</option>
                                <option>Annual Leave</option>
                                <option>Sick Leave</option>
                                <option>Transfer Leave</option>
                                <option>Leave without Pay</option>
                                <option>Compensatory Leave</option>
                            </select>
                            </td>
                            <td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</td>
                            
                                <td>
                                <table>    
                              <tr>Full Day:     
                           
                                <div class="onoffswitch">
                                    
    <input type="checkbox" name="onoffswitch" class="onoffswitch-checkbox" id="myonoffswitch" checked>
    <label class="onoffswitch-label" for="myonoffswitch" >
         
        <span class="onoffswitch-inner"></span>
        <span class="onoffswitch-switch"></span>
    </label>
    </div></tr>
              <tr>  
                             <tr> Half Day:     
                           
                                <div class="onoffswitch">
                                    
    <input type="checkbox" name="onoffswitch" class="onoffswitch-checkbox" id="myonoffswitch" checked>
    <label class="onoffswitch-label" for="myonoffswitch" >
         
        <span class="onoffswitch-inner"></span>
        <span class="onoffswitch-switch"></span>
    </label>
    </div>
                             </tr>
                              </table>
                          </td>
                             
                        </table>
                        
        </table>                   
    </body>
</html>
