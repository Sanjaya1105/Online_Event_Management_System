package com.organizer;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DeleteCustomerServlet")
public class DeleteServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String cusid = request.getParameter("id");
        boolean isDeleted = UserDBUtil.deleteCustomer(cusid);

        if (isDeleted) {
            response.sendRedirect("Home.jsp");
        } else {
            response.sendRedirect("Insert.jsp?error=1");
        }
    }
}
