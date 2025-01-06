<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Manage Reviews</title>
</head>
<body>
    <h1>Manage Reviews</h1>
    <table border="1">
        <tr>
            <th>ID</th>
            <th>User ID</th>
            <th>Destination ID</th>
            <th>Rating</th>
            <th>Comment</th>
            <th>Review Date</th>
            <th>Actions</th>
        </tr>
        <% 
            ResultSet reviews = (ResultSet) request.getAttribute("reviews");
            if (reviews != null) {
                while (reviews.next()) {
        %>
        <tr>
            <td><%= reviews.getInt("review_id") %></td>
            <td><%= reviews.getInt("user_id") %></td>
            <td><%= reviews.getInt("destination_id") %></td>
            <td><%= reviews.getInt("rating") %></td>
            <td><%= reviews.getString("comment") %></td>
            <td><%= reviews.getTimestamp("review_date") %></td>
            <td>
                <a href="delete_review?id=<%= reviews.getInt("review_id") %>">Delete</a>
            </td>
        </tr>
        <% 
                }
            } 
        %>
    </table>
</body>
</html>
