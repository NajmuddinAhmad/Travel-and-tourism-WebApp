<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%
    ResultSet users = (ResultSet) request.getAttribute("users");
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Manage Users</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container mt-5">
        <h1 class="text-center">Manage Users</h1>
        <table class="table table-bordered mt-4">
            <thead>
                <tr>
                    <th>User ID</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Role</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <% while (users.next()) { %>
                    <tr>
                        <td><%= users.getInt("user_id") %></td>
                        <td><%= users.getString("name") %></td>
                        <td><%= users.getString("email") %></td>
                        <td><%= users.getString("role") %></td>
                        <td>
                            <a href="EditUserServlet?user_id=<%= users.getInt("user_id") %>" class="btn btn-primary btn-sm">Edit</a>
                            <a href="DeleteUserServlet?user_id=<%= users.getInt("user_id") %>" class="btn btn-danger btn-sm">Delete</a>
                        </td>
                    </tr>
                <% } %>
            </tbody>
        </table>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
