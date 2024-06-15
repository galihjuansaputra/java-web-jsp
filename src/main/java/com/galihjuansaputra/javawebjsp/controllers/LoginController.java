package com.galihjuansaputra.javawebjsp.controllers;

import com.galihjuansaputra.javawebjsp.models.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/login")
public class LoginController extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // Validate the user
        User user = new User(username, password);
        boolean isValidUser = user.isValid();

        if (isValidUser) {
            // Store user object in request attribute
            request.setAttribute("user", user);
            // Forward to welcome.jsp
            request.getRequestDispatcher("/welcome.jsp").forward(request, response);
            response.sendRedirect("/welcome.jsp");
        } else {
            // Redirect back to login page with error
            response.sendRedirect("index.jsp?error=true");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Handle GET requests
        request.getRequestDispatcher("index.jsp").forward(request, response);
    }
}
