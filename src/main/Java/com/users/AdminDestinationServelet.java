package com.users;


import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.sql.*;

public class AdminDestinationServelet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try (Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/tourism_app", "root", "password");
             Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery("SELECT * FROM Destinations")) {
            
            request.setAttribute("destinations", rs);
            RequestDispatcher dispatcher = request.getRequestDispatcher("admin_destinations.jsp");
            dispatcher.forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("Error fetching destinations: " + e.getMessage());
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        String name = request.getParameter("name");
        String description = request.getParameter("description");
        String location = request.getParameter("location");
        String images = request.getParameter("images");

        try (Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/tourism_app", "root", "password")) {
            String sql;
            if (id == null || id.isEmpty()) {
                sql = "INSERT INTO Destinations (name, description, location, images) VALUES (?, ?, ?, ?)";
            } else {
                sql = "UPDATE Destinations SET name = ?, description = ?, location = ?, images = ? WHERE destination_id = ?";
            }

            try (PreparedStatement ps = conn.prepareStatement(sql)) {
                ps.setString(1, name);
                ps.setString(2, description);
                ps.setString(3, location);
                ps.setString(4, images);
                if (id != null && !id.isEmpty()) {
                    ps.setInt(5, Integer.parseInt(id));
                }
                ps.executeUpdate();
            }
            response.sendRedirect("admin_destinations");
        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("Error saving destination: " + e.getMessage());
        }
    }
}
