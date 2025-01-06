<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">Tourism Management</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item"><a class="nav-link" href="ManageUsersServlet">Manage Users</a></li>
                    <li class="nav-item"><a class="nav-link" href="ManageDestinationsServlet">Manage Destinations</a></li>
                    <li class="nav-item"><a class="nav-link" href="ManagePackagesServlet">Manage Packages</a></li>
                    <li class="nav-item"><a class="nav-link" href="ManageBookingsServlet">Manage Bookings</a></li>
                    <li class="nav-item"><a class="nav-link" href="ManageReviewsServlet">Manage Reviews</a></li>
                </ul>
            </div>
            <a href="logout.jsp" class="btn btn-outline-light">Logout</a>
        </div>
    </nav>

    <div class="container mt-5">
        <h1 class="text-center">Welcome, Admin</h1>
        <div class="row mt-4">
            <div class="col-md-4">
                <div class="card text-white bg-primary">
                    <div class="card-body">
                        <h5 class="card-title">Manage Users</h5>
                        <p class="card-text">Add, edit, or delete users.</p>
                        <a href="ManageUsersServelet" class="btn btn-light">Go to Users</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card text-white bg-success">
                    <div class="card-body">
                        <h5 class="card-title">Manage Destinations</h5>
                        <p class="card-text">Add, edit, or delete travel destinations.</p>
                        <a href="ManageDestinationsServlet" class="btn btn-light">Go to Destinations</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card text-white bg-info">
                    <div class="card-body">
                        <h5 class="card-title">Manage Packages</h5>
                        <p class="card-text">Add, edit, or delete travel packages.</p>
                        <a href="ManagePackagesServlet" class="btn btn-light">Go to Packages</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="row mt-4">
            <div class="col-md-6">
                <div class="card text-white bg-warning">
                    <div class="card-body">
                        <h5 class="card-title">Manage Bookings</h5>
                        <p class="card-text">View, confirm, or cancel bookings.</p>
                        <a href="ManageBookingsServlet" class="btn btn-light">Go to Bookings</a>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="card text-white bg-danger">
                    <div class="card-body">
                        <h5 class="card-title">Manage Reviews</h5>
                        <p class="card-text">Moderate or delete user reviews.</p>
                        <a href="ManageReviewServelet" class="btn btn-light">Go to Reviews</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
