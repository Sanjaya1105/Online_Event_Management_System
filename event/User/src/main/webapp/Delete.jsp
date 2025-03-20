 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Delete</title>
    <link rel="stylesheet" href="CSS/InsertP.css" />
</head>
<body>

	  <%
    String id = request.getParameter("id");
    String name = request.getParameter("name");
	String email = request.getParameter("email");  
	String phone = request.getParameter("phone");
	String packages = request.getParameter("packages");
	String additional = request.getParameter("additional");
	String date = request.getParameter("date");
	String time = request.getParameter("time");
	String amount = request.getParameter("amount");
%>
	
	
	<div class="container">
	      <div class="right-half">
	<h1> Delete Confirmation</h1>

	<form  class="form" action="delete" method="post">
        
        <div class="form-group">
            <label for="username">ID</label>
            <input type="text" id="id" name="id" value="<%= id %>"  readonly />
          </div>
          <div class="form-group">
            <label for="username">Name</label>
            <input type="text" id="name" name="name" value= "<%= name%>" />
          </div>
          <div class="form-group">
            <label for="username">Email</label>
            <input type="text" id="email" name="email" value= "<%= email%>" />
          </div>
          <div class="form-group">
            <label for="username">Phone</label>
            <input type="text" id="phone" name="phone" value= "<%= phone%>" />
          </div>
          <div class="form-group">
            <label for="username">Package Type</label>
            <input type="text" id="packages" name="packages" value= "<%= packages%>" />
          </div>
           <div class="form-group">
            <label for="username">Additional</label>
            <input type="text" id="additional" name="additional" value= "<%= additional%>" />
          </div>
          
                     <div class="form-group">
            <label for="username">Date</label>
            <input type="date" id="date" name="date" value= "<%= date%>" />
          </div>
                     <div class="form-group">
            <label for="username">Time</label>
            <input type="time" id="time" name="time" value= "<%= time%>" />
          </div>
                     <div class="form-group">
            <label for="username">Amount</label>
            <input type="number" id="amount" name="amount" value= "<%= amount%>" />
          </div>
      
          </div>
          
          
	<button type="submit" name="delete">Delete</button>
	</form>
	</div>
</div>
</body>
</html>