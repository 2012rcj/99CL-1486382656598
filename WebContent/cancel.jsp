<%-- 
    Document   : calendar
    Created on : Jul 21, 2016, 4:08:58 PM
    Author     : Neha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Apply</title>
        <link rel="stylesheet" href="build/kalendae.css" type="text/css" charset="utf-8">
<!-- <script src="src/moment.js" type="text/javascript" charset="utf-8"></script>
	<script src="build/kalendae.js" type="text/javascript" charset="utf-8"></script> -->
	<script src="build/kalendae.standalone.js" type="text/javascript" charset="utf-8"></script>
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
    <body>
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
    
        <table width ="80%" border="0" align="center" bgcolor="#FDF3E7">
            <tr> <td>   <script type="text/javascript" charset="utf-8">
		

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
});

	</script>

</td>	</tr>  

	
    
        <tr>
          <td>
         Leaves Applied:
          
          
       <input type="text" id="Total" name="No" size="23" >
          </td>
       </tr>
       
       
        <tr>
        <td>
         Reason of Leave:
         
       <input type="text" id="Reason" name="RoL" size="23">
          </td>
    </tr> 
    <tr>
        <td>
         Leaves Remaining:
          
       <input type="text" id="Reason" name="RoL" size="23" >
          </td>
    </tr> 
    
    </table>
        <center>
           
            
        <button>Cancel</button>
        </center>
        </table>
    </body>
</html>
