<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Trip Planner - Home Page</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    
</head>

<body>
  <header>
    <nav class="navbar navbar-expand-lg navbar-dark bg-secondary">
      <div class="container-fluid">
        <a class="navbar-brand" href="#">
          <img src="images/Logo.webp" alt="logo" width="35" height="35" class="d-inline-block align-text-top me-2">
          Trip Planner
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown"
          aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavDropdown">
          <ul class="navbar-nav me-auto">
            <li class="nav-item">
              <a class="nav-link active" aria-current="page" href="main.html">Home</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="flight.html">Flight Ticket</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="train_bus.html">Train/Bus Ticket</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="contactus.html">Contact Us</a>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown"
                aria-expanded="false">
                More Services
              </a>
              <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                <li><a class="dropdown-item" href="hotel.html">Book Hotel</a></li>
                <li><a class="dropdown-item" href="rentcar.html">Rent a Car/Bike</a></li>
                <li><a class="dropdown-item" href="hireguide.html">Hire Guide</a></li>
              </ul>
            </li>
          </ul>
          <a href="login.jsp"><button class="btn btn-primary" type="button">Log-in</button></a>
        </div>
      </div>
    </nav>
  </header>

  <main>
    <div class="container">
      <!-- Welcome Section -->
      <div class="row align-items-center my-5">
        <div class="col-md-6 mb-4 mb-md-0">
          <h1 class="display-4">Welcome to Trip Planner</h1>
          <p class="lead">We are here to help you plan your trip. We provide services like Flight Ticket booking,
            Train/Bus Ticket booking, Hotel booking, Rent a Car/Bike, Hire Guide, and many more. We are here to make
            your trip memorable.</p>
        </div>
        <div class="col-md-6 text-center">
          <img src="images/travel.jpg" alt="Welcome Image" class="img-fluid">
        </div>
      </div>

      <!-- Offers Section -->
      <div class="row text-center my-5">
        <div class="col-12">
          <h2 class="display-5">Offers for You</h2>
        </div>
      </div>

      <div class="row g-4">
        <div class="col-md-4">
          <div class="card h-100 shadow-sm">
            <img src="images/flight_offers.jpg" class="card-img-top" alt="Offer 1">
            <div class="card-body">
              <h5 class="card-title">Offer 1</h5>
              <p class="card-text">Get 10% off on your first flight booking. Use code: FLIGHT10</p>
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="card h-100 shadow-sm">
            <img src="images/hotel_offer.jpeg" class="card-img-top" alt="Offer 2">
            <div class="card-body">
              <h5 class="card-title">Offer 2</h5>
              <p class="card-text">Save 15% on hotel bookings. Use code: HOTEL15</p>
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="card h-100 shadow-sm">
            <img src="images/rental_offer.jpeg" class="card-img-top" alt="Offer 3">
            <div class="card-body">
              <h5 class="card-title">Offer 3</h5>
              <p class="card-text">Get 20% off on car and bike rentals. Use code: CAR20</p>
            </div>
          </div>
        </div>
      </div>

      <!-- Upcoming Tours Section -->
      <div class="text-center mt-5">
        <h2 class="display-5">Upcoming Tours</h2>
      </div>

      <div class="row g-4 my-4">
        <div class="col-md-4">
          <div class="card h-100 shadow-sm">
            <img src="images/tour1.webp" class="card-img-top" alt="Tour 1">
            <div class="card-body">
              <h5 class="card-title">Tour 1</h5>
              <p class="card-text">Explore the beauty of Himachal Pradesh. 5 days tour.</p>
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="card h-100 shadow-sm">
            <img src="images/tour2.jpg" class="card-img-top" alt="Tour 2">
            <div class="card-body">
              <h5 class="card-title">Tour 2</h5>
              <p class="card-text">Visit the historical places of Rajasthan. 7 days tour.</p>
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="card h-100 shadow-sm">
            <img src="images/tour3.jpg" class="card-img-top" alt="Tour 3">
            <div class="card-body">
              <h5 class="card-title">Tour 3</h5>
              <p class="card-text">Enjoy the beaches of Goa. 3 days tour.</p>
            </div>
          </div>
        </div>
      </div>

      <!-- Terms and Conditions -->
      <details class="my-4">
        <summary class="fw-bold">Terms and Conditions</summary>
        <ul class="mt-3">
          <li>Offers are valid for a limited period only.</li>
          <li>Offers are valid for one-time use only.</li>
          <li>Offers are valid for online bookings only.</li>
          <li>Offers are not valid on offline bookings.</li>
          <li>Offers are not valid on bookings made through agents.</li>
        </ul>
      </details>
    </div>
  </main>

  <footer class="bg-secondary text-white text-center py-4">
    <p>Follow us on:</p>
    <div class="d-flex justify-content-center gap-3 mb-3">
      <a href="https://facebook.com" target="_blank"><img src="images/facebook.png" alt="Facebook" width="25" height="25"></a>
      <a href="https://in.linkedin.com/in/najmuddin-ahmad-6027b8228" target="_blank"><img src="images/linkdin.png" alt="LinkedIn" width="25" height="25"></a>
      <a href="https://www.instagram.com/md_raja_001/" target="_blank"><img src="images/instagram.png" alt="Instagram" width="25" height="25"></a>
    </div>
    <p>&copy; 2024 Najmuddin Ahmad. All Rights Reserved.</p>
  </footer>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>

</html>
