<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Edit Profile Page</title>
    <link rel="stylesheet" href="CSS/main.css" />
  </head>
  <body class="bb">
  
  <%
    String id = request.getParameter("id");
    String username = request.getParameter("username");
	String email = request.getParameter("email");  
	String password = request.getParameter("password");
%>
 
  
    <div class="container">
      <div class="profile-icon">
        <img src="CSS/user.png" alt="Profile Icon" />
      </div>
      <div class="right-half">
        <h1>EDIT YOUR ACCOUNT</h1>
        
        
        <form class="form"  action="update" method="post">
        
        <div class="form-group">
            <label for="username">User ID</label>
            <input type="text" id="username" name="cusid" value="<%= id %>"  readonly />
          </div>
          <div class="form-group">
            <label for="username">User Name</label>
            <input type="text" id="username" name="uname" value= "<%= username %>" />
          </div>
          <div class="form-group">
            <label for="email">Email</label>
            <input type="email" id="email" name="email" value= "<%= email %>" />
          </div>
          <div class="form-group">
            <label for="password">Password</label>
            <input type="password" id="password" name="pass" value="<%= password %>"  />
          </div>
          
         
          <button type="submit">UPDATE</button>
        </form>
        
        
      </div>
    </div>
  </body>
</html>
