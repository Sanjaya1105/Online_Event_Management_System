<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Add New Event Details.</title>
     <link rel="stylesheet" href="CSS/mainn.css" />
  </head>
  <body class="bb">
      
      
  
    <div class="full">
      <h1>Add New Event</h1>
      <form class="form"action="insert" method="post">
    <label for="ptype">Package Type</label> <br />
    <input type="text" id="ptype" name="ptype" required /><br /><br />

    <label for="type">Type</label> <br />
    <input type="text" id="type" name="type" required /><br /><br />

    <label for="name">Name</label> <br />
    <input type="text" id="name" name="name" required /><br /><br />

    <label for="contact">Contact</label> <br />
    <input type="text" id="contact" name="contact" required /><br /><br />

    <label for="capacity">Capacity</label> <br />
    <input type="number" id="capacity" name="capacity" required /><br /><br />

    <label for="budget">Budget</label> <br />
    <input type="number" id="budget" name="budget" required /><br /><br />

    <label for="info">Info</label> <br />
    <textarea id="info" name="info" required></textarea><br /><br />

    <button type="submit">Add</button>
</form>

    </div>

  </body>
</html>
