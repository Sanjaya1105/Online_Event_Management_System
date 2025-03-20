<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Login Page</title>
      <link href="CSS/InsertP.css" rel="stylesheet">
  </head>
  <body>
    <div class="container">
      <div class="right-half">
        <h1>Search Your  Function  Details</h1>
        <form class="form"  action="search" method="post">
        
		Enter Function Name <input type="text" name="name" class="form-group" placeholder="Enter name" required><br><br>
		Enter Your Contact Email <input type="text" name="email" class="form-group" placeholder="Enter email" required><br>
		
		
		<input class="btnn" type="submit" name="submit" value="Search">
	</form>
	 <p>Do you want add NEW Function? <a href="http://localhost:8090/User/Insert.jsp">Add here</a></p>
      </div>
    </div>
  </body>
</html>
