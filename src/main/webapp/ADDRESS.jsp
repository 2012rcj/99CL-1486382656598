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
    <body>
        <tabel border="0" width ="80%" height="100%" align="center" bgcolor="#FDF3E7">
        <ul>
    <li><a href="reg.jsp">PERSONAL DETAILS</a></li>

  <li><a href="#">TRAVEL</a></li>

            </ul>
     <tr><td colspan="2" >
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
        </tabel>
    
    </table>
    
     
    </body>
</html>
