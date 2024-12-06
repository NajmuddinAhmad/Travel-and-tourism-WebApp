<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Flight Ticket Booking</title>
    <link rel="stylesheet" href="styles.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 500px;
            margin: 50px auto;
            background: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        h1 {
            text-align: center;
            color: #333;
        }

        .form-group {
            margin-bottom: 15px;
        }

        label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }

        input, select, button {
            width: 100%;
            padding: 10px;
            margin: 5px 0;
            box-sizing: border-box;
        }

        button {
            cursor: pointer;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 5px;
        }

        button:hover {
            background-color: #0056b3;
        }

        .ticket {
            margin-top: 20px;
            padding: 15px;
            border: 1px solid #007bff;
            border-radius: 8px;
            background: #f0f8ff;
        }

        .ticket h2 {
            margin-top: 0;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Flight Ticket Booking</h1>
        <form id="ticketForm">
            <div class="form-group">
                <label for="departure">Departure City:</label>
                <input type="text" id="departure" name="departure" placeholder="Enter departure city" required>
            </div>
            <div class="form-group">
                <label for="arrival">Arrival City:</label>
                <input type="text" id="arrival" name="arrival" placeholder="Enter arrival city" required>
            </div>
            <div class="form-group">
                <label for="date">Date of Travel:</label>
                <input type="date" id="date" name="date" required>
            </div>
            <div class="form-group">
                <label for="class">Class:</label>
                <select id="class" name="class" required>
                    <option value="economy">Economy</option>
                    <option value="business">Business</option>
                    <option value="first">First</option>
                </select>
            </div>
            <div class="form-group">
                <label for="passengers">Number of Passengers:</label>
                <input type="number" id="passengers" name="passengers" placeholder="Enter number of passengers" min="1" required>
            </div>
            <button type="button" id="checkPriceBtn">Check Price</button>
            <button type="submit" id="bookNowBtn" style="display: none;">Book Now</button>
        </form>
        <div id="ticket" class="ticket" style="display: none;">
            <h2>Booking Details</h2>
            <p id="ticketDetails"></p>
            <p id="ticketPrice"></p>
        </div>
    </div>

    <script>
        document.getElementById('checkPriceBtn').addEventListener('click', function () {
            const departure = document.getElementById('departure').value;
            const arrival = document.getElementById('arrival').value;
            const date = document.getElementById('date').value;
            const travelClass = document.getElementById('class').value;
            const passengers = parseInt(document.getElementById('passengers').value, 10);

            if (!departure || !arrival || !date || !travelClass || isNaN(passengers) || passengers < 1) {
                alert("Please fill in all the required fields.");
                return;
            }

            // Example price calculation based on class and passengers
            let basePrice = 5000; // Example base price
            if (travelClass === 'business') basePrice = 10000;
            if (travelClass === 'first') basePrice = 20000;

            const totalPrice = basePrice * passengers;

            // Display ticket details and price
            const ticketDetails = `
                <strong>Departure:</strong> ${departure}<br>
                <strong>Arrival:</strong> ${arrival}<br>
                <strong>Date:</strong> ${date}<br>
                <strong>Class:</strong> ${travelClass}<br>
                <strong>Passengers:</strong> ${passengers}
            `;
            document.getElementById('ticketDetails').innerHTML = ticketDetails;
            document.getElementById('ticketPrice').innerHTML = `<strong>Total Price:</strong> ₹${totalPrice}`;
            document.getElementById('ticket').style.display = 'block';
            document.getElementById('bookNowBtn').style.display = 'block';
        });

        document.getElementById('ticketForm').addEventListener('submit', function (event) {
            event.preventDefault();
            const departure = document.getElementById('departure').value;
            const arrival = document.getElementById('arrival').value;
            const date = document.getElementById('date').value;
            const travelClass = document.getElementById('class').value;
            const passengers = document.getElementById('passengers').value;

            // Redirect to Ixigo with dynamic parameters
            const ixigoUrl = `https://www.ixigo.com/search/result/flight/${departure}/${arrival}/${date}/1-0-0/e?class=${travelClass}&adults=${passengers}`;
            window.location.href = ixigoUrl;
        });
    </script>
</body>
</html>
