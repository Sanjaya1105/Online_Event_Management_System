<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Edit Profile Page</title>
    <link rel="stylesheet" href="CSS/InsertP.css" />
</head>
<body>
    <div class="container">
        <div class="right-half">
            <h1>Update Event Details...</h1>
            <form class="form"  action="UpdateCustomerServlet" method="post">
                <div class="form-group">
                    <label for="username">ID</label>
                    <input type="text" id="id" name="id" value="<%= request.getParameter("id") %>" readonly />
                </div>
                <div class="form-group">
                    <label for="username">Name</label>
                    <input type="text" id="name" name="name" value="<%= request.getParameter("name") %>" required />
                </div>
                <div class="form-group">
                    <label for="username">Email</label>
                    <input type="email" id="email" name="email" value="<%= request.getParameter("email") %>" required />
                </div>
                <div class="form-group">
                    <label for="username">Phone</label>
                    <input type="text" id="phone" name="phone" value="<%= request.getParameter("phone") %>" required />
                </div>
                <div class="form-group">
                    <label for="username">Package Type</label>
                    <input type="text" id="packages" name="packages" value="<%= request.getParameter("packages") %>" required />
                </div>
                <div class="form-group">
                    <label for="username">Additional</label>
                    <input type="text" id="additional" name="additional" value="<%= request.getParameter("additional") %>" required />
                </div>
                  <div class="form-group">
                    <label for="username">Date</label>
                    <input type="date" id="date" name="date" value="<%= request.getParameter("date") %>" required />
                </div>
                  <div class="form-group">
                    <label for="username">Time</label>
                    <input type="time" id="time" name="time" value="<%= request.getParameter("time") %>" required />
                </div>
                  <div class="form-group">
                    <label for="username">Amount</label>
                    <input type="number" id="amount" name="amount" value="<%= request.getParameter("amount") %>" required />
                </div>
                <button type="submit">UPDATE</button>
            </form>
        </div>
    </div>
</body>
</html>
