<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Edit Event Details</title>
 <link rel="stylesheet" href="CSS/mainn.css" />
  </head>
  <body class="bb">
   
  <%
    String id = request.getParameter("id");
    String  ptype= request.getParameter("ptype");
	String type = request.getParameter("type");  
	String vendor = request.getParameter("name");
	String contact = request.getParameter("contact");
	String capacity = request.getParameter("capacity");
	String budget= request.getParameter("budget");
	String info= request.getParameter("info");
%>
 
 
  

          <div class="container" >
          <div class="right-half">
        
              <h1>Update Event details...</h1>  
        <form class="form" action="update" method="post">

         
             <label >Customer ID</label>
            <input type="text" id="id" name="id" readonly  value="<%= id %>"  /><br><br>
          
            <label for="username">Package Type</label>
            <input type="text" id="ptype" name="ptype"   value="<%= ptype %>"  /><br><br>
            
             <label >Type</label>
            <input type="text" id="type" name="type"  value="<%= type %>" /><br><br>
            
               
            
               <label >vendor name</label>
            <input type="text" id="vendor" name="vendor"  value="<%= vendor %>" /><br><br>
            
            <label >contact</label>
            <input type="text" id="contact" name="contact"  value="<%= contact %>" /><br><br>
       
            <label >capacity</label>
            <input type="text" id="capacity" name="capacity"  value="<%= capacity %>" /><br><br>
            
            <label >Buget</label>
            <input type="text" id="budget" name="budget"  value="<%= budget %>" /><br><br>
            
             <label >Info</label>
            <input type="text" id="info" name="info"  value="<%= info %>" /><br><br>
          
          
          
          <button type="submit">Update</button>
        </form>
        </div>
        </div>
         
  </body>
</html>
