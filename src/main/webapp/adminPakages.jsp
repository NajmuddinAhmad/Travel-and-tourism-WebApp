<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Manage Packages</title>
</head>
<body>
    <h1>Manage Packages</h1>
    <table border="1">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Description</th>
            <th>Price</th>
            <th>Destination ID</th>
            <th>Actions</th>
        </tr>
        <% 
            ResultSet packages = (ResultSet) request.getAttribute("packages");
            if (packages != null) {
                while (packages.next()) {
        %>
        <tr>
            <td><%= packages.getInt("package_id") %></td>
            <td><%= packages.getString("name") %></td>
            <td><%= packages.getString("description") %></td>
            <td><%= packages.getBigDecimal("price") %></td>
            <td><%= packages.getInt("destination_id") %></td>
            <td>
                <a href="edit_package?id=<%= packages.getInt("package_id") %>">Edit</a> |
                <a href="delete_package?id=<%= packages.getInt("package_id") %>">Delete</a>
            </td>
        </tr>
        <% 
                }
            } 
        %>
    </table>
    <h2>Add/Edit Package</h2>
    <form action="admin_packages" method="post">
        <input type="hidden" name="id" value="<%= request.getParameter("id") %>">
        <label>Name: <input type="text" name="name" required></label><br>
        <label>Description: <textarea name="description"></textarea></label><br>
        <label>Price: <input type="number" name="price" step="0.01" required></label><br>
        <label>Destination ID: <input type="number" name="destination_id" required></label><br>
        <button type="submit">Save</button>
    </form>
</body>
</html>
