 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Delete</title>
	  <link rel="stylesheet" href="CSS/mainn.css" />
	
</head>
<body class="bb">
    

	<%
    String id = request.getParameter("id");
    String  ptype= request.getParameter("ptype");
	String type = request.getParameter("type");  
	String name = request.getParameter("name");
	String contact = request.getParameter("contact");
	String capacity = request.getParameter("capacity");
	String budget= request.getParameter("budget");
	String info= request.getParameter("info");
%>
 
 
  

        <div class="ful">
            <h1>Delete Event details...</h1>
        <form class="form"  action="delete" method="post">
         
             <label >Customer ID</label>
            <input type="text" id="id" name="id" readonly  value="<%= id %>"  /><br><br>
          
            <label for="username">Package Type</label>
            <input type="text" id="ptype" name="ptype" readonly  value="<%= ptype %>"  /><br><br>
            
             <label >Type</label>
            <input type="text" id="type" name="type" readonly value="<%= type %>" /><br><br>
            
             
            
               <label >Customer name</label>
            <input type="text" id="name" name="name" readonly value="<%= name %>" /><br><br>
            
            <label >contact</label>
            <input type="text" id="contact" name="contact" readonly value="<%= contact %>" /><br><br>
       
            <label >capacity</label>
            <input type="text" id="capacity" name="capacity" readonly value="<%= capacity %>" /><br><br>
            
            <label >Buget</label>
            <input type="text" id="budget" name="budget" readonly value="<%= budget %>" /><br><br>
            
             <label >Info</label>
            <input type="text" id="info" name="info" readonly value="<%= info %>" /><br><br>
          
          <button type="submit" class="dlt">Delete</button>
        </form>
        </div>
       
</body>
</html>