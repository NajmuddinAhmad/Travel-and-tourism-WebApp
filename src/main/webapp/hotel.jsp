<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hotel Booking</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 600px;
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

        .receipt {
            margin-top: 20px;
            padding: 15px;
            border: 1px solid #007bff;
            border-radius: 8px;
            background: #f0f8ff;
            display: none;
        }

        .receipt h2 {
            margin-top: 0;
        }

        .receipt p {
            margin: 5px 0;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Book Your Hotel From Here</h1>
        <p>We provide the best service for booking hotels. You can book your hotel from here.</p>

        <form id="bookingForm">
            <div class="form-group">
                <label for="name">Name:</label>
                <input type="text" name="name" id="name" required>
            </div>

            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" name="email" id="email" required>
            </div>

            <div class="form-group">
                <label for="phone">Phone:</label>
                <input type="tel" name="phone" id="phone" required>
            </div>

            <div class="form-group">
                <label for="hotel">Hotel:</label>
                <select name="hotel" id="hotel" required>
                    <option value="Taj">Taj</option>
                    <option value="Oberoi">Oberoi</option>
                    <option value="Leela">Leela</option>
                    <option value="ITC">ITC</option>
                </select>
            </div>

            <div class="form-group">
                <label for="date">Check-in Date:</label>
                <input type="date" name="date" id="date" required>
            </div>

            <div class="form-group">
                <label for="time">Check-in Time:</label>
                <input type="time" name="time" id="time" required>
            </div>

            <div class="form-group">
                <label for="days">Number of Days:</label>
                <input type="number" name="days" id="days" required>
            </div>

            <div class="form-group">
                <label for="room">Room Type:</label>
                <select name="room" id="room" required>
                    <option value="Single">Single</option>
                    <option value="Double">Double</option>
                    <option value="Suite">Suite</option>
                </select>
            </div>

            <button type="button" id="generateReceipt">Book Now</button>
        </form>

        <div id="receipt" class="receipt">
            <h2>Booking Confirmation</h2>
            <p><strong>Name:</strong> <span id="receiptName"></span></p>
            <p><strong>Email:</strong> <span id="receiptEmail"></span></p>
            <p><strong>Phone:</strong> <span id="receiptPhone"></span></p>
            <p><strong>Hotel:</strong> <span id="receiptHotel"></span></p>
            <p><strong>Check-in Date:</strong> <span id="receiptDate"></span></p>
            <p><strong>Check-in Time:</strong> <span id="receiptTime"></span></p>
            <p><strong>Number of Days:</strong> <span id="receiptDays"></span></p>
            <p><strong>Room Type:</strong> <span id="receiptRoom"></span></p>
            <p><strong>Total Cost:</strong> ₹<span id="receiptCost"></span></p>
        </div>
    </div>

    <script>
        document.getElementById('generateReceipt').addEventListener('click', function () {
            const name = document.getElementById('name').value;
            const email = document.getElementById('email').value;
            const phone = document.getElementById('phone').value;
            const hotel = document.getElementById('hotel').value;
            const date = document.getElementById('date').value;
            const time = document.getElementById('time').value;
            const days = parseInt(document.getElementById('days').value, 10);
            const room = document.getElementById('room').value;

            if (!name || !email || !phone || !hotel || !date || !time || !days || !room) {
                alert('Please fill in all fields.');
                return;
            }

            // Calculate cost based on room type and days
            let costPerDay = 0;
            if (room === 'Single') costPerDay = 2000;
            else if (room === 'Double') costPerDay = 4000;
            else if (room === 'Suite') costPerDay = 8000;

            const totalCost = costPerDay * days;

            // Populate receipt
            document.getElementById('receiptName').innerText = name;
            document.getElementById('receiptEmail').innerText = email;
            document.getElementById('receiptPhone').innerText = phone;
            document.getElementById('receiptHotel').innerText = hotel;
            document.getElementById('receiptDate').innerText = date;
            document.getElementById('receiptTime').innerText = time;
            document.getElementById('receiptDays').innerText = days;
            document.getElementById('receiptRoom').innerText = room;
            document.getElementById('receiptCost').innerText = totalCost;

            // Show receipt
            document.getElementById('receipt').style.display = 'block';
        });
    </script>
</body>
</html>
