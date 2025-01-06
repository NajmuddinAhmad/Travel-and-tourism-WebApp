<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Manage Bookings</title>
</head>
<body>
    <h1>Manage Bookings</h1>
    <table border="1">
        <tr>
            <th>ID</th>
            <th>User ID</th>
            <th>Package ID</th>
            <th>Booking Date</th>
            <th>Status</th>
            <th>Actions</th>
        </tr>
        <% 
            ResultSet bookings = (ResultSet) request.getAttribute("bookings");
            if (bookings != null) {
                while (bookings.next()) {
        %>
        <tr>
            <td><%= bookings.getInt("booking_id") %></td>
            <td><%= bookings.getInt("user_id") %></td>
            <td><%= bookings.getInt("package_id") %></td>
            <td><%= bookings.getTimestamp("booking_date") %></td>
            <td><%= bookings.getString("status") %></td>
            <td>
                <a href="update_booking?id=<%= bookings.getInt("booking_id") %>">Update Status</a>
            </td>
        </tr>
        <% 
                }
            } 
        %>
    </table>
</body>
</html>
