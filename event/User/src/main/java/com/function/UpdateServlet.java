package com.function;

import java.io.IOException;
import java.time.LocalDate;
import java.time.LocalTime;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UpdateCustomerServlet")
public class UpdateServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String id = request.getParameter("id");
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String packages = request.getParameter("packages");
        String additional = request.getParameter("additional");
      
        int convertedId = Integer.parseInt(id);
        LocalDate date = LocalDate.now(); // Assuming current date for update
        LocalTime time = LocalTime.now(); // Assuming current time for update
        double amountValue = Double.parseDouble(request.getParameter("amount"));

        User user = new User(convertedId, name, email, phone, packages, additional, date, time, amountValue);

        boolean isTrue = UserDBUtil.updateCustomer(user);
        if (isTrue) {
            List<User> cusDetails = UserDBUtil.getCustomerDetails(id);
            request.setAttribute("cusDetails", cusDetails);

            RequestDispatcher dis = request.getRequestDispatcher("Details.jsp");
            dis.forward(request, response);
        } else {
            List<User> cusDetails = UserDBUtil.getCustomerDetails(id);
            request.setAttribute("cusDetails", cusDetails);

            RequestDispatcher dis = request.getRequestDispatcher("Details.jsp");
            dis.forward(request, response);
        }
    }
}
