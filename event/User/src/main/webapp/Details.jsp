<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title> Details</title>
    <link rel="stylesheet" href="CSS/InsertP.css" />
</head>
<body>
    <div>
    <c:forEach var="cus" items="${cusDetails}">
    
        <c:set var="id" value="${cus.id}" />
        <c:set var="name" value="${cus.name}" />
        <c:set var="email" value="${cus.email}" />
        <c:set var="phone" value="${cus.phone}" />
        <c:set var="packages" value="${cus.packages}" />
        <c:set var="additional" value="${cus.additional}" />
        
        <c:set var="date" value="${cus.date}" />
        <c:set var="time" value="${cus.time}" />
        <c:set var="amount" value="${cus.amount}" />
    <br>
        <form class="form" >
            <div class="right-half">
        
                <h1>Details...</h1>
                
                <div class="form-group">
                    <label for="id">ID</label>
                    <input type="text" id="id" name="if" value="${cus.id}" readonly />
                </div>
                
                <div class="form-group">
                    <label for="username"> Your Name</label>
                    <input type="text" id="name" name="name" value="${cus.name}" readonly />
                </div>
                
                <div class="form-group">
                    <label for="email"> Your Email</label>
                    <input type="text" id="email" name="email" value="${cus.email}"  readonly />
                </div>
                
                <div class="form-group">
                    <label for="password">Phone Number</label>
                    <input type="text" id="phone" name="phone" value="${cus.phone}"  pattern="[0-9]{10}"readonly />
                </div>
                
                <div class="form-group">
                     <label for="packages">Selected Package Type</label>
                     <input type="text" id="packages" name="packages" value="${cus.packages}"  readonly />
                </div>
                
                <div class="form-group">
                    <label for="password">Additional Details.....</label>
                    <input type="text" id="additional" name="additional" value="${cus.additional}" readonly />
                </div>
                
                <div class="form-group">
                    <label for="password">Date</label>
                    <input type="date" id="date" name="date" value="${cus.date}" readonly />
                </div>
                
                <div class="form-group">
                    <label for="password">Time</label>
                    <input type="time" id="time" name="time" value="${cus.time}" readonly />
                </div>
                
                <div class="form-group">
                    <label for="password">Amount</label>
                    <input type="number" id="amount" name="amount" value="${cus.amount}" readonly />
                </div>

            </div>
        </form>

    </c:forEach>
    
    <form method="post" action="Update.jsp">
        <input type="hidden" name="id" value="${id}" />
        <input type="hidden" name="name" value="${name}" />
        <input type="hidden" name="email" value="${email}" />
        <input type="hidden" name="phone" value="${phone}" />
        <input type="hidden" name="packages" value="${packages}" />
        <input type="hidden" name="additional" value="${additional}" />
        <input type="hidden" name="date" value="${date}" />
        <input type="hidden" name="time" value="${time}" />
        <input type="hidden" name="amount" value="${amount}" />
        <button type="submit">Update</button>
    </form>

    <form method="post" action="Delete.jsp">
        <input type="hidden" name="id" value="${id}" />
        <input type="hidden" name="name" value="${name}" />
        <input type="hidden" name="email" value="${email}" />
        <input type="hidden" name="phone" value="${phone}" />
        <input type="hidden" name="packages" value="${packages}" />
        <input type="hidden" name="additional" value="${additional}" />
        <input type="hidden" name="date" value="${date}" />
        <input type="hidden" name="time" value="${time}" />
        <input type="hidden" name="amount" value="${amount}" />
        <button type="submit" name="delete">Delete</button>
    </form>

    </div>
    <br>
</body>
</html>
