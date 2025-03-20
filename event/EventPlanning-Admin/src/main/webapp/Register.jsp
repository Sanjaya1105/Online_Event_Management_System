<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Register Page</title>
    <link rel="stylesheet" href="CSS/main.css" />
  </head>
  <body class="bb">
    <div class="container">
      <div class="profile-icon">
        <img src="CSS/user.png" alt="Profile Icon" />
      </div>
      <div class="right-half">
        <h1>CREATE NEW ACCOUNT</h1>
        <form  action="insert" method="post">
          <div class="form-group">
            <label for="username">Username</label>
            <input type="text" id="username" name="uid" required />
          </div>
          <div class="form-group">
            <label for="email">Email</label>
            <input type="email" id="email" name="email" required />
          </div>
          <div class="form-group">
            <label for="password">Password</label>
            <input type="password" id="password" name="psw" required />
          </div>
          
          <button type="submit">SIGNUP</button>
        </form>
      </div>
    </div>
  </body>
</html>
