package com.vendor;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/CustomerInsert")
public class InsertServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String ptype = request.getParameter("ptype");
        String type = request.getParameter("type");
        String name = request.getParameter("name");
        String contact = request.getParameter("contact");
        int capacity = Integer.parseInt(request.getParameter("capacity"));
        int budget = Integer.parseInt(request.getParameter("budget"));
        String info = request.getParameter("info");

        boolean isSuccess;

        isSuccess = UserDBUtil.insertCustomer(ptype, type, name, contact, capacity, budget, info);

        if (isSuccess) {
            RequestDispatcher dis = request.getRequestDispatcher("Home.jsp");
            dis.forward(request, response);
        } else {
            RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
            dis2.forward(request, response);
        }
    }
}
