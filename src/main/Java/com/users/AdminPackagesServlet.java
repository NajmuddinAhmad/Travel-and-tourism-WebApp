package com.users;


import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.sql.*;

public class AdminPackagesServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try (Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/tourism_app", "root", "password");
             Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery("SELECT * FROM Packages")) {
            
            request.setAttribute("packages", rs);
            RequestDispatcher dispatcher = request.getRequestDispatcher("admin_packages.jsp");
            dispatcher.forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("Error fetching packages: " + e.getMessage());
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        String name = request.getParameter("name");
        String description = request.getParameter("description");
        String price = request.getParameter("price");
        String destinationId = request.getParameter("destination_id");

        try (Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/tourism_app", "root", "password")) {
            String sql;
            if (id == null || id.isEmpty()) {
                sql = "INSERT INTO Packages (name, description, price, destination_id) VALUES (?, ?, ?, ?)";
            } else {
                sql = "UPDATE Packages SET name = ?, description = ?, price = ?, destination_id = ? WHERE package_id = ?";
            }

            try (PreparedStatement ps = conn.prepareStatement(sql)) {
                ps.setString(1, name);
                ps.setString(2, description);
                ps.setBigDecimal(3, new java.math.BigDecimal(price));
                ps.setInt(4, Integer.parseInt(destinationId));
                if (id != null && !id.isEmpty()) {
                    ps.setInt(5, Integer.parseInt(id));
                }
                ps.executeUpdate();
            }
            response.sendRedirect("admin_packages");
        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("Error saving package: " + e.getMessage());
        }
    }
}
