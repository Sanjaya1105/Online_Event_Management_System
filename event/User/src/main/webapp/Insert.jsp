<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add New Event Details...</title>
    <link rel="stylesheet" href="CSS/InsertP.css" />
</head>
<body>
<div class="container">
    <div class="right-half">
        <h1>Add New Event Details...</h1>
        <form class="form" action="CustomerInsert" method="post">
            <div class="form-group">
                <label for="name">Name</label>
                <input type="text" id="name" name="name" required />
            </div>
            <div class="form-group">
                <label for="email">Email</label>
                <input type="email" id="email" name="email" required />
            </div>
            <div class="form-group">
                <label for="phone">Phone Number</label>
                <input type="text" id="phone" name="phone" pattern="[0-9]{10}" required />
            </div>
            <div class="form-group">
                <label for="packages">Package Type</label>
                <select id="packages" name="packages" required>
                    <option value="Birthday">Birthday Party</option>
                    <option value="Wedding">Wedding</option>
                    <option value="Party">Party</option>
                </select>
            </div>
            <div class="form-group">
                <label for="additional">Additional</label>
                <input type="text" id="additional" name="additional" required />
            </div>
            <div class="form-group">
                <label for="date">Event Date</label>
                <input type="date" id="date" name="date" required />
            </div>
            <div class="form-group">
                <label for="time">Event Time</label>
                <input type="time" id="time" name="time" required />
            </div>
            <div class="form-group">
                <label for="amount">Amount</label>
                <input type="number" id="amount" name="amount" step="0.01" min="0" required />
            </div>
            <button type="submit">Submit</button>
        </form>
    </div>
</div>
</body>
</html>
