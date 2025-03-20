<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>View All Vendor</title>
      <link rel="stylesheet" href="CSS/main.css" />
</head>
<body>
    <h1>View All  Vendors</h1>
     <div class="table_main">
    <table  class="table_details_admin">
        <thead>
            <tr>
                <th class="admin_tbl_th">User ID</th>
                <th class="admin_tbl_th">Package Type</th>
                <th class="admin_tbl_th"> vendor Name</th>
             
                <th class="admin_tbl_th">Info</th>
                <th class="admin_tbl_th">Action</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="admin" items="${allAdmins}">
                <tr>
                    <td class="admin_tbl_td">${admin.id}</td>
                    <td class="admin_tbl_td">${admin.ptype}</td>
                    <td class="admin_tbl_td">${admin.name}</td>
                    <td class="admin_tbl_td">${admin.info}</td>
                    <td class="admin_tbl_td">
    <a href="http://localhost:8090/EventPlanning-Organizer/Delete.jsp?id=${admin.id}&ptype=${admin.ptype}&name=${admin.name}&contact=${admin.contact}&info=${admin.info}">
        <button>Delete</button>
    </a>
    <a href="http://localhost:8090/EventPlanning-Organizer/Update.jsp?id=${admin.id}&ptype=${admin.ptype}&name=${admin.name}&contact=${admin.contact}&info=${admin.info}">
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
