<%-- 
    Document   : FAMILY
    Created on : Jul 23, 2016, 6:49:08 PM
    Author     : Neha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
<style>
ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    width: 200px;
    background-color: #333;
}

li a {
    display: block;
    color: white;
    padding: 8px 16px;
    text-decoration: none;
}

/* Change the link color on hover */
li a:hover:not(.active){
    background-color: #111;
    color: white;
}
.active {
    background-color: #C63D0F;
}


</style>
    </head>
    <body >
       
    
    <table border="0" width ="80%" height="100%" align="center" bgcolor="#FDF3E7"> 
    
<ul>
    <li> <img src="Images_Of_99_Retail_Street/personal.png" alt="99Logo" style="color:#FF6600;width:100;height:100"><a href="#home">PERSONAL DETAILS</a></li>

  <li><a href="#news">TRAVEL</a></li>

</ul>
  <tr><td colspan="2" >
		<table width ="80%" border="0" align="center" bgcolor="#FDF3E7">
		
                    <tr><td><u><b>FATHERS DETAILS</b></u></td></tr>
                    <tr>
                        <td>FIRST NAME
                        </td>
                        <td><input type="text" id="FName" name="fname" required autofocus 
           style="width: 200px"
            oninvalid="this.setCustomValidity('Please Enter first name')"
            oninput="setCustomValidity('')"></td>

     <td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
              &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</td>
      
     <td>LAST NAME
                        </td>
                        <td><input type="text" id="LName" name="lname" required autofocus 
           style="width: 200px"
            oninvalid="this.setCustomValidity('Please Enter last name')"
            oninput="setCustomValidity('')"></td>
     
    </tr>
    
    <tr>
                        <td>GENDER
                        </td>
                        <td><input type="text" id="GENDER" name="gender" required autofocus 
           style="width: 200px"
            oninvalid="this.setCustomValidity('Please Enter gender')"
            oninput="setCustomValidity('')"></td>

     <td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
              &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</td>
      
     <td>DATE OF BIRTH
                        </td>
                        <td><input type="text" id="dob" name="dob" required autofocus 
           style="width: 200px"
            oninvalid="this.setCustomValidity('Please Enter date of birth')"
            oninput="setCustomValidity('')"></td>
     
    </tr>
    
    <tr>
                    <td> Nationality *
                    </td>
                    <td>
                  <select id="Nationality" name="Nationality">
                  <option value="Select">--Select--</option>
                        <option value="India">India</option>
<option value="srilanka">srilanka</option>
<option value="united state">united state</option>
                        </option>
                    </select>
                    </td>
    </tr>
    
    <tr><td><u><b>SPOUSE DETAILS</b></u></td></tr>
    
    
      <tr>
                        <td>FIRST NAME
                        </td>
                        <td><input type="text" id="SFName" name="sfname" required autofocus 
           style="width: 200px"
            oninvalid="this.setCustomValidity('Please Enter first name')"
            oninput="setCustomValidity('')"></td>

     <td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
              &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</td>
      
     <td>LAST NAME
                        </td>
                        <td><input type="text" id="SLName" name="slname" required autofocus 
           style="width: 200px"
            oninvalid="this.setCustomValidity('Please Enter last name')"
            oninput="setCustomValidity('')"></td>
     
    </tr>
    
    <tr>
                        <td>GENDER
                        </td>
                        <td><input type="text" id="SGENDER" name="sgender" required autofocus 
           style="width: 200px"
            oninvalid="this.setCustomValidity('Please Enter gender')"
            oninput="setCustomValidity('')"></td>

     <td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
              &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</td>
      
     <td>DATE OF BIRTH
                        </td>
                        <td><input type="text" id="sdob" name="SDob" required autofocus 
           style="width: 200px"
            oninvalid="this.setCustomValidity('Please Enter date of birth')"
            oninput="setCustomValidity('')"></td>
     
    </tr>
    
    <tr>
<td>DATE OF MARRIAGE                        </td>
                        <td><input type="text" id="sdom" name="SDom" required autofocus 
           style="width: 200px"
            oninvalid="this.setCustomValidity('Please Enter date of birth')"
            oninput="setCustomValidity('')"></td>
        
        <td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
              &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</td>
      
        <td> Nationality *
                    </td>
                    <td>
                  <select id="SNationality" name="SNationality">
                  <option value="Select">--Select--</option>
                        <option value="India">India</option>
<option value="srilanka">srilanka</option>
<option value="united state">united state</option>
                        </option>
                    </select>
    
    
                    </td>
    
    
    </tr>
    
    <tr><td><u><b>CHILDRENS DETAILS</b></u></td></tr>
                    <tr>
                        <td>FIRST NAME
                        </td>
                        <td><input type="text" id="CName" name="cname" required autofocus 
           style="width: 200px"
            oninvalid="this.setCustomValidity('Please Enter first name')"
            oninput="setCustomValidity('')"></td>

     <td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
              &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</td>
      
     <td>LAST NAME
                        </td>
                        <td><input type="text" id="cName" name="cname" required autofocus 
           style="width: 200px"
            oninvalid="this.setCustomValidity('Please Enter last name')"
            oninput="setCustomValidity('')"></td>
     
    </tr>
    
    <tr>
                        <td>GENDER
                        </td>
                        <td><input type="text" id="cGENDER" name="cgender" required autofocus 
           style="width: 200px"
            oninvalid="this.setCustomValidity('Please Enter gender')"
            oninput="setCustomValidity('')"></td>

     <td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
              &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</td>
      
     <td>DATE OF BIRTH
                        </td>
                        <td><input type="text" id="cdob" name="cdb" required autofocus 
           style="width: 200px"
            oninvalid="this.setCustomValidity('Please Enter date of birth')"
            oninput="setCustomValidity('')"></td>
     
    </tr>
    
    <tr>
                    <td> Nationality *
                    </td>
                    <td>
                  <select id="CNationality" name="CNationality">
                  <option value="Select">--Select--</option>
                        <option value="India">India</option>
<option value="srilanka">srilanka</option>
<option value="united state">united state</option>
                        </option>
                    </select>
                    </td>
    </tr>
    
    
    
      
</table>
   
        
    
    </body>
</html>
