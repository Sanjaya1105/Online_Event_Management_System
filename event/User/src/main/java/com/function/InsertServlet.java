package com.function;

import java.io.IOException;
import java.time.LocalDate;
import java.time.LocalTime;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/CustomerInsert")
public class InsertServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String packages = request.getParameter("packages");
        String additional = request.getParameter("additional");
        LocalDate date = LocalDate.parse(request.getParameter("date"));
        LocalTime time = LocalTime.parse(request.getParameter("time"));
        double amount = Double.parseDouble(request.getParameter("amount"));

        // Assuming you have a method to generate an ID
        int id = generateUserID(); // You need to implement this method

        User user = new User(id, name, email, phone, packages, additional, date, time, amount);

        boolean isTrue = UserDBUtil.insertCustomer(user);

        if (isTrue) {
            RequestDispatcher dis = request.getRequestDispatcher("Search.jsp");
            dis.forward(request, response);
        } else {
            RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
            dis2.forward(request, response);
        }
    }

    // Method to generate a unique user ID (You need to implement this)
    private int generateUserID() {
        // Your implementation to generate a unique ID
        return 1; // Dummy value, replace it with your logic
    }
}
