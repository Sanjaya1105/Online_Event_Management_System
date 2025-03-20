<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Event Details</title>
      <link rel="stylesheet" href="CSS/mainn.css" />
</head>
<body>
    <h1>Check All Event Details</h1>
    <div class="table_main">
    <table  class="table_details_admin">
        <thead>
            <tr>
                <th class="admin_tbl_th">User ID</th>
                <th class="admin_tbl_th">Package Type</th>
                <th class="admin_tbl_th">Type</th>
                <th class="admin_tbl_th">Name</th>
                <th class="admin_tbl_th">Contact</th>
                <th class="admin_tbl_th">Capacity</th>
                <th class="admin_tbl_th">Budget</th>
                <th class="admin_tbl_th">Info</th>
                <th class="admin_tbl_th">Action</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="admin" items="${allAdmins}">
                <tr>
                    <td class="admin_tbl_td">${admin.id}</td>
                    <td class="admin_tbl_td">${admin.ptype}</td>
                    <td class="admin_tbl_td">${admin.type}</td>
                    <td class="admin_tbl_td">${admin.name}</td>
                    <td class="admin_tbl_td">${admin.contact}</td>
                    <td class="admin_tbl_td">${admin.capacity}</td>
                    <td class="admin_tbl_td">${admin.budget}</td>
                    <td class="admin_tbl_td">${admin.info}</td>
                    <td class="admin_tbl_td">
    <a href="http://localhost:8090/Vendor/Delete.jsp?id=${admin.id}&ptype=${admin.ptype}&type=${admin.type}&name=${admin.name}&contact=${admin.contact}&capacity=${admin.capacity}&budget=${admin.budget}&info=${admin.info}">
        <button>Delete</button>
    </a>
    <a href="http://localhost:8090/Vendor/Update.jsp?id=${admin.id}&ptype=${admin.ptype}&type=${admin.type}&name=${admin.name}&contact=${admin.contact}&capacity=${admin.capacity}&budget=${admin.budget}&info=${admin.info}">
        <button>Update</button>
    </a> 
</td>
                    
                </tr>
            </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>
