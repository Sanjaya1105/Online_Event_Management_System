<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Event Planning</title>
      <link rel="stylesheet" href="CSS/main.css" />
  </head>
  <body class="bb">
      
    
    <div class="full">
    <h1>Add New Event Planning vendor</h1>
      <form class="form" action="insert" method="post">
    <label for="ptype">Package Type</label> <br />
    <input type="text" id="ptype" name="ptype" required /><br /><br />


    <label for="name">Vendor Name</label> <br />
    <input type="text" id="vendor" name="vendor" required /><br /><br />

    <label for="contact">Contact</label> <br />
    <input type="text" id="contact" name="contact" pattern="[0-9]{10}" required /><br /><br />


    <label for="info">Info</label> <br />
    <textarea id="info" name="info" required></textarea><br /><br />

    <button type="submit">Add</button>
</form>

    </div>

  </body>
</html>
