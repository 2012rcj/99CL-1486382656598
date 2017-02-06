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
<body>
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
   <%
               String Ph = (String)session.getAttribute("Ph1");
               String A = (String)session.getAttribute("Ei1");
               String B = (String)session.getAttribute("Fu1");
               String C = (String)session.getAttribute("Ge1");
               String D = (String)session.getAttribute("Dob1");
               String E = (String)session.getAttribute("Con1");
               String F = (String)session.getAttribute("Nation1");
               String G = (String)session.getAttribute("Bgp");
               String H = (String)session.getAttribute("Pob1");
               String I = (String)session.getAttribute("Mt1");
               String J = (String)session.getAttribute("Sta1");
               String K = (String)session.getAttribute("Ct1");
               String L = (String)session.getAttribute("Ct2");
               String M = (String)session.getAttribute("Pass1");
               String N = (String)session.getAttribute("Fund1");
               String O = (String)session.getAttribute("Pen1");
               String P = (String)session.getAttribute("U1");
               String Q = (String)session.getAttribute("Univ1");
               String R = (String)session.getAttribute("Pa1");
               
               
               
               
               
               
               
               
               
           
  if(request.getParameter("save") != null)
    {
        String ph = (String)session.getAttribute("Ph1");
	
        String A1=request.getParameter("emp_id");
         
         String B1=request.getParameter("name");
         
         String C1=request.getParameter("gen");
         
         String D1=request.getParameter("db");
         
         String E1=request.getParameter("cb");
         
         String F1 =request.getParameter("Nationality");
         
          String G1=request.getParameter("group");
           
           String H1=request.getParameter("place");
           
           String I1=request.getParameter("tongue");
           
           String J1=request.getParameter("Status");
           
           String K1=request.getParameter("citi1");
           
           String L1=request.getParameter("citi2");
           
           String M1=request.getParameter("details");
                     
           String N1=request.getParameter("prov");
           
           String O1=request.getParameter("scheme");
           
           String P1=request.getParameter("uid");
           
           String Q1=request.getParameter("universal");
           
           String R1=request.getParameter("pan");
               

       
        
          
         
 try
  {
 Class.forName("com.mysql.jdbc.Driver");
   Connection con = DriverManager.getConnection("jdbc:mysql://52.77.196.42:3306/employee","RS","orbisindia");
  PreparedStatement ps = con.prepareStatement("insert into retail_employee_info values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
                          ps.setString(1,A1);
                          ps.setString(2,B1);
                          ps.setString(3,C1);
                          ps.setString(4,D1);
                          ps.setString(5,E1);
                          ps.setString(6,F1);
                          ps.setString(7,G1);
                          ps.setString(8,H1);
                          ps.setString(9,I1);
                          ps.setString(10,J1);
                          ps.setString(11,K1);
                          ps.setString(12,L1);
                          ps.setString(13,M1);
                          ps.setString(14,N1);
                          ps.setString(15,O1);
                          ps.setString(16,P1);
                          ps.setString(17,Q1);
                          ps.setString(18,R1);
                          ps.setString(19,ph);
                          
                          
                          
                          
                          
                                 
                          
                          
                          
                          
                          
                          
int i=ps.executeUpdate();  
System.out.println(i+" records inserted");  

  con.close() ;


  }
  catch(Exception e)
{
out.println("Exception = " + e);
  }
%>
<script>
window.location.href="reg.jsp";
</script>
<%

}

  %>
  
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
          <table > 
    <tr>
					<td valign="top"><p style="padding-top:20px;">Photo:</p></td>
					
                                        <td>
                                            <%
                                               String ph=request.getParameter("photo");
                                               out.println(ph);
                                                %>
                                                
                                                
                                        </td>
	
    
    
        <td>Employee id</td>
    <td>
       <%
             String  ei=request.getParameter("emp_id");
   
	out.println(ei);
	
        %>
	<input type="hidden" value='<%=request.getParameter("emp_id") %>' name="id" >
          </td>
    
    </tr>
        
      <tr>
          <td><label for="txtName">FULL NAME<span class="required">*</span></label></td>
          <td>
       <%
         String B1=request.getParameter("name");
	out.println(B1);
	
        %>
	<input type="hidden" value='<%= request.getParameter("name") %>' name="FullName" >
          </td>
     <td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
              &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</td>
      
          <td>GENDER*:
              </td>
              <td>
                  <%
                      String ge=request.getParameter("gen");
                      out.println(ge);
                      
                      %>
      <input type="hidden" value='<%= request.getParameter("gen") %>' name="gn" >
          </td>
      </tr>
      <tr>
          <td>
       DATE OF BIRTH*:
          </td>
          <td>
      
               <%
                      String dob=request.getParameter("db");
                      out.println(dob);
                      
                      %>
      <input type="hidden" value='<%= request.getParameter("db") %>' name="db" >
              
              
              
              
              
          </td>
     <td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
              &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</td>
      
          <td>COUNTRY OF BIRTH*:
              </td>
              <td>
                  <%
                      String conb=request.getParameter("cb");
                      out.println(conb);
                      %>
                      <input type="hidden" value='<%= request.getParameter("cb") %>' name="cb" >
                      
          </td>
      </tr>
      <tr>
                    <td>NATIONALITY *
                    </td>
                    <td>
                  <%
        String Na=request.getParameter("Nationality");
        out.println(Na);
        %>
          </td> 

<input type="hidden" value='<%= request.getParameter("Nationality") %>' name="National" >

                        </td>
                       <td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
              &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</td>
      
                <td>BLOOD GROUP*:
              </td>
              <td>
                  <%
                       String bgp=request.getParameter("group");
                       out.println(bgp);
                      %>
       <input type="hidden" value='<%= request.getParameter("group") %>' name="group" >
          </td>         
                        
                        
    </tr>
                    <tr>
          <td>
       PLACE OF BIRTH*:
          </td>
          <td>
              <%
                  String pob=request.getParameter("place");
                  out.println(pob);
                  %>
       <input type="hidden" value='<%= request.getParameter("place") %>' name="place" >
          </td>
     <td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
              &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</td>
      
          <td>MOTHER TONGUE*:
              </td>
              <td>
                  <%
                      String mt=request.getParameter("tongue");
                      out.println(mt);
                      %>
       <input type="hidden" value='<%=  request.getParameter("tongue")%>' name="db" >
          </td>
      </tr>
       <tr>
          <td>
       MARITAL STATUS*:
          </td>
          <td>
       <%
           String sta=request.getParameter("Status");
           out.println(sta);
           %>
           <input type="hidden" value='<%= request.getParameter("Status") %>' name="db" >
          </td>
     <td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
              &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</td>
      
          <td>
              CITIZENSHIP 1*:
              </td>
              <td>
       <%
           String ct1=request.getParameter("citi1");
           out.println(ct1);           

           %>
           <input type="hidden" value='<%= request.getParameter("citi1") %>' name="db" >
          </td>
      </tr>
      <tr>
          <td>
           CITIZENSHIP 2*:
          </td>
          <td>
       <%
           String ct2=request.getParameter("citi2");
           out.println(ct2);
           %>
           <input type="hidden" value='<%= request.getParameter("citi2") %>' name="db" >
          </td>
     <td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
              &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</td>
      
          <td>
              PASSPORT DETAILS*:
              </td>
              <td>
       <%
            String pass=request.getParameter("details");
            out.println(pass);    

       %>
       <input type="hidden" value='<%= request.getParameter("details") %>' name="db" >
          </td>
      </tr>
      <tr>
          <td>
           PROVIDENT FUND NUMBER FROM PREVIOUS ORGANIZATION:
          </td>
          <td>
       <%
            String fund=request.getParameter("prov");
            out.println(fund);
           %>
           <input type="hidden" value='<%= request.getParameter("prov") %>' name="db" >
          </td>
     <td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
              &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</td>
      
          <td>
              PENSION SCHEME NUMBER FROM PREVIOUS ORGANZTION NUMBER:
              </td>
              <td>
      <%
          String pension=request.getParameter("scheme");
          out.println(pension);       
      %>
      <input type="hidden" value='<%= request.getParameter("scheme") %>' name="db" >
          </td>
      </tr>
        <tr>
          <td>
           UID (AADHAAR)NUMBER:
          </td>
          <td>
       <%
            String u=request.getParameter("uid");
            out.println(u);       
       %>
          </td>
     <td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
              &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</td>
      
          <td>
              UNIVERSAL ACCOUNT NUMBER FROM PREVIOUS ORGANIZATION:
              </td>
              <td>
                  <%
       String univ=request.getParameter("universal");
       out.println(univ);
       %> 
       
       </td>
      </tr>        
     <tr>
          <td>
           PAN NUMBER:
          </td>
          <td>
              <%
                  String pa=request.getParameter("pan");
                  out.println(pa);
                  %>
       
          </td>   
     </tr>
   
</table>
            </div>
    
    
    
    
    
    
    
        <div id="sectionB" class="tab-pane fade">
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
               </div>
    
    
    
    
        <div id="sectionC" class="tab-pane fade">
            
          
        
        <table width ="80%" border="0" align="center" bgcolor="#FDF3E7">
        
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


<center>                    
            <button value="Back" onclick="history.go(-1);">Edit</button>
            
            
            
            <button id="Save" name="save" >Save</button>

<br /><br />
</body>
</html>