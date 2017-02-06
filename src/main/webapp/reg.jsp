<%-- 
    Document   : reg
    Created on : Jul 23, 2016, 3:08:12 PM
    Author     : Neha
--%>


<%@ page language="java" import="java.sql.*" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>


<style>
.bs-example{
		padding-left: 180px;
		padding-right: 180px;
		margin:20px;
	}
	




</style>
</head>
<body >
    
    
     <%   
         String  ei=request.getParameter("emp_id");
         session.setAttribute("Ei1",ei);
         String fu=request.getParameter("name");
         session.setAttribute("Fu1",fu);
         String ge=request.getParameter("gen");
         session.setAttribute("Ge1",ge);
         String dob=request.getParameter("db");
         session.setAttribute("Dob1",dob);
         String conb=request.getParameter("cb");
         session.setAttribute("Con1",conb);
         String nation=request.getParameter("Nationality");
         session.setAttribute("Nation1",nation);
          String bgp=request.getParameter("group");
           session.setAttribute("Bgp",bgp);
           String pob=request.getParameter("place");
           session.setAttribute("Pob1",pob);
           String mt=request.getParameter("tongue");
           session.setAttribute("Mt1",mt);
           String sta=request.getParameter("Status");
           session.setAttribute("Sta1",sta);
           String ct1=request.getParameter("citi1");
           session.setAttribute("Ct1",ct1);
           String ct2=request.getParameter("citi2");
           session.setAttribute("Ct2",ct2);
           String pass=request.getParameter("details");
           session.setAttribute("Pass1",pass);          
           String fund=request.getParameter("prov");
           session.setAttribute("Fund1", fund);
           String pension=request.getParameter("scheme");
           session.setAttribute("Pen1",pension);
           String u=request.getParameter("uid");
           session.setAttribute("U1",u);
           String univ=request.getParameter("universal");
           session.setAttribute("Univ1",univ);
           String pa=request.getParameter("pan");
           session.setAttribute("Pa1",pa);    
           String ph=request.getParameter("photo");
           session.setAttribute("Ph1",ph);  

        
     %>
        
    
    
    
    
    
    <script> 
        function readURL(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();

            reader.onload = function (e) {
                $('#blah')
                    .attr('src', e.target.result)
                  <!--  .width(150) -->
                  <!--   .height(200)  --> ;
            };

            reader.readAsDataURL(input.files[0]);
        }
    }
    </script>
  <h2>Registration</h2>
  
  <ul class="nav nav-pills nav-stacked" style="float:left;padding-top:60px;width:200px">
   <li role="presentation" class="active">
	<a href="reg.jsp"><span class="glyphicon glyphicon-user" aria-hidden="true"></span>&nbsp&nbsp&nbspPersonal Details</a></li>
  <li role="presentation"><a href="#"><span class="glyphicon glyphicon-send" aria-hidden="true"></span>&nbsp&nbsp&nbspTravel Profile</a></li>
  <li role="presentation"><a href="#">...</a></li>
</ul>
  
  
  
  <div class="bs-example" >
 <ul class="nav nav-tabs" >
        <li class="active"><a data-toggle="tab" href="#sectionA">My Information</a></li>
        <li><a data-toggle="tab" href="#sectionB">Family Details</a></li> 
		<li><a data-toggle="tab" href="#sectionC">Address</a></li> 

              
<div class="tab-content">
        <div id="sectionA" class="tab-pane fade in active">
            <br>
          <table border="0" width ="80%" height="100%" align="center" style="background-color:#FDF3E7"> 
    <tr>
					<td valign="top"><p style="padding-top:20px;">Photo:</p></td>
					
    <td><img id="blah" src="photo.png" alt="your image" /></td>
	<td colspan=2><input type='file' onchange="readURL(this);" name="photo"/></td>
        
    </tr>
    <tr>
        
        <td>Employee id</td>
         <td>
          <input type="text" id="id" name="emp_id" size="23" required>
          </td>
        
        
				</tr>
        
      <tr>
          <td>FULL NAME<span class="required">*</span></td>
<td><input type="text" id="txtName" name="name" required 
           style="width: 200px"
            oninvalid="this.setCustomValidity('Please Enter employee name')"
            oninput="setCustomValidity('')"></td>

     <td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
              &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</td>
      
          <td>GENDER*:
              </td>
              <td>
       <input type="text" id="gender" name="gen" size="23" >
          </td>
      </tr>
      <tr>
          <td>
       DATE OF BIRTH*:
          </td>
          <td>
       <input type="text" id="dob" name="db" size="23" >
          </td>
     <td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
              &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</td>
      
          <td>COUNTRY OF BIRTH*:
              </td>
              <td>
       <input type="text" id="con" name="cb" size="23" >
          </td>
      </tr>
      <tr>
                    <td>NATIONALITY *
                    </td>
                    <td>
                  <select id="Nationality" name="Nationality" style="width: 200px !important; min-width: 200px; max-width: 200px;">
                  <option value="Select">--Select--</option>
                        <option value="India">India</option>
<option value="srilanka">srilanka</option>
<option value="united state">united state</option>
                        
                        </select>
                        </td>
                       <td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
              &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</td>
      
                <td>BLOOD GROUP*:
              </td>
              <td>
       <input type="text" id="grp" name="group" size="23" >
          </td>         
                        
                        
    </tr>
                    <tr>
          <td>
       PLACE OF BIRTH*:
          </td>
          <td>
       <input type="text" id="pob" name="place" size="23" >
          </td>
     <td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
              &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</td>
      
          <td>MOTHER TONGUE*:
              </td>
              <td>
       <input type="text" id="mt" name="tongue" size="23" >
          </td>
      </tr>
       <tr>
          <td>
       MARITAL STATUS*:
          </td>
          <td>
       <input type="text" id="marital" name="status" size="23" >
          </td>
     <td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
              &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</td>
      
          <td>
              CITIZENSHIP 1*:
              </td>
              <td>
       <input type="text" id="c1" name="citi1" size="23" >
          </td>
      </tr>
      <tr>
          <td>
           CITIZENSHIP 2*:
          </td>
          <td>
       <input type="text" id="c2" name="citi2" size="23" >
          </td>
     <td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
              &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</td>
      
          <td>
              PASSPORT DETAILS*:
              </td>
              <td>
       <input type="text" id="pass" name="details" size="23" >
          </td>
      </tr>
      <tr>
          <td>
           PROVIDENT FUND NUMBER FROM PREVIOUS ORGANIZATION:
          </td>
          <td>
       <input type="text" id="Fund" name="prov" size="23" >
          </td>
     <td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
              &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</td>
      
          <td>
              PENSION SCHEME NUMBER FROM PREVIOUS ORGANZTION NUMBER:
              </td>
              <td>
       <input type="text" id="pension" name="scheme" size="23" >
          </td>
      </tr>
     
        <tr>
          <td>
           UID (AADHAAR)NUMBER:
          </td>
          <td>
       <input type="text" id="uid" name="uid" size="23" >
          </td>
     <td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
              &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</td>
      
          <td>
              UNIVERSAL ACCOUNT NUMBER FROM PREVIOUS ORGANIZATION:
              </td>
              <td>
       <input type="text" id="uni" name="universal" size="23" >
          </td>
      </tr>        
     <tr>
          <td>
           PAN NUMBER:
          </td>
          <td>
       <input type="text" id="pan" name="pan" size="23" >
          </td>   
     </tr>
     
    
</table>
            <form action="rinfo.jsp">
            <center>
            <button id="printbtn" name="btnSubmit" >Submit</button>
            </center>
            
            </form>
            </div>
    
    
    
    
    
    
    
        <div id="sectionB" class="tab-pane fade">
            <table border="0" width ="80%" height="100%" align="center" style="background-color:#FDF3E7">
		
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
            
               </div>
    
    
    
    
        <div id="sectionC" class="tab-pane fade">
            
          
        
        <table border="0" width ="80%" height="100%" align="center" style="background-color:#FDF3E7">
        
             <tr> <td> <u><b>COMMUNICATION ADDRESS</b></u> </td></tr>
        
                   <tr>
           
        <td> 
       COUNTRY*:
          </td>
              <td>
       <input type="text" id="CC" name="cc" size="23" >
          </td>
     <td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
              &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</td>
      <td>
          STATE*:
         </td><td>     
       <input type="text" id="cs" name="cs" size="23" >
          </td>
      </tr>
       <tr>
          <td>
       CITY*:
          </td>
          <td>
       <input type="text" id="ci" name="ci" size="23" >
          </td>
     <td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
              &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</td>
      
          <td>ADDRESS LINE 1*:
              </td>
              <td>
       <input type="text" id="al1" name="al1" size="23" >
          </td>
      </tr>
     <tr>
                    <td>ADDRESS LINE 2*
                    </td>
                    <td>
                   <input type="text" id="al2" name="al2" size="23" >
                        </td>
                        <td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
              &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</td>
      
          <td>PINCODE*:
              </td>
              <td>
       <input type="text" id="cpin" name="cpin" size="23" >
          </td>
                        
                        
                        
      </tr>
      
      <tr> <td><u> <b>PERMANENT ADDRESS</b></u> </td></tr>
        
         <tr>
          <td>
       COUNTRY*:
          </td>
          <td>
       <input type="text" id="Pcou" name="pcou" size="23" >
          </td>
     <td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
              &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</td>
      
          <td>STATE*:
              </td>
              <td>
       <input type="text" id="pst" name="pst" size="23" >
          </td>
      </tr>
       <tr>
          <td>
       CITY*:
          </td>
          <td>
       <input type="text" id="pci" name="pci" size="23" >
          </td>
     <td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
              &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</td>
      
          <td>ADDRESS LINE 1*:
              </td>
              <td>
       <input type="text" id="pa1" name="pa1" size="23" >
          </td>
      </tr>
     <tr>
                    <td>ADDRESS LINE 2*
                    </td>
                    <td>
                   <input type="text" id="pa2" name="pa2" size="23" >
                        </td>
                        <td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
              &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</td>
      
          <td>PINCODE*:
              </td>
              <td>
       <input type="text" id="pp" name="pp" size="23" >
          </td>
                        
                        
                        
      </tr>
      
      
      
      <div><button class="button" id="printbtn" name="btnSubmit">Register &raquo;</button></div>
      
        </tabel>
        
        
        </div>
</div>
<!--<ul>
    <li> <img src="Images_Of_99_Retail_Street/personal.png" alt="99Logo" style="color:#FF6600;width:100;height:100"><a href="#home">PERSONAL DETAILS</a></li>

  <li><a href="#news">TRAVEL</a></li>

</ul> -->

<br /><br />
</body>
</html>