<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Edit </title>
      <link rel="stylesheet" href="CSS/main.css" />

  </head>
  <body class="bb">
      
  <%
    String id = request.getParameter("id");
    String  ptype= request.getParameter("ptype"); 
	String vendor = request.getParameter("name");
	String contact = request.getParameter("contact");
	String info= request.getParameter("info");
%>
 
 
  
  
          <div class="full">
            <h1>Update Vendor details...</h1>
        <form class="form" action="update" method="post">

         
             <label > ID</label>
            <input type="text" id="id" name="id" readonly  value="<%= id %>"  /><br><br>
          
            <label for="username">Package Type</label>
            <input type="text" id="ptype" name="ptype"   value="<%= ptype %>"  /><br><br>
            
         
               
            
               <label >vendor name</label>
            <input type="text" id="vendor" name="vendor"  value="<%= vendor %>" /><br><br>
            
            <label >contact</label>
            <input type="text" id="contact" name="contact"  value="<%= contact %>" /><br><br>
       
            
             <label >Info</label>
            <input type="text" id="info" name="info"  value="<%= info %>" /><br><br>
          
          
          
          <button type="submit">Update</button>
        </form>
        </div>
        
  </body>
</html>
