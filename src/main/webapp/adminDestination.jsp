<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Manage Destinations</title>
</head>
<body>
    <h1>Manage Destinations</h1>
    <table border="1">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Description</th>
            <th>Location</th>
            <th>Images</th>
            <th>Actions</th>
        </tr>
        <% 
            ResultSet destinations = (ResultSet) request.getAttribute("destinations");
            if (destinations != null) {
                while (destinations.next()) {
        %>
        <tr>
            <td><%= destinations.getInt("destination_id") %></td>
            <td><%= destinations.getString("name") %></td>
            <td><%= destinations.getString("description") %></td>
            <td><%= destinations.getString("location") %></td>
            <td><%= destinations.getString("images") %></td>
            <td>
                <a href="edit_destination?id=<%= destinations.getInt("destination_id") %>">Edit</a> |
                <a href="delete_destination?id=<%= destinations.getInt("destination_id") %>">Delete</a>
            </td>
        </tr>
        <% 
                }
            } 
        %>
    </table>
    <h2>Add/Edit Destination</h2>
    <form action="admin_destinations" method="post">
        <input type="hidden" name="id" value="<%= request.getParameter("id") %>">
        <label>Name: <input type="text" name="name" required></label><br>
        <label>Description: <textarea name="description"></textarea></label><br>
        <label>Location: <input type="text" name="location"></label><br>
        <label>Images: <input type="text" name="images"></label><br>
        <button type="submit">Save</button>
    </form>
</body>
</html>
