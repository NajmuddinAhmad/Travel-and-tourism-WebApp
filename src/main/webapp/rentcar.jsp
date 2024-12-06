<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <h2>rent car and bike from here</h2>
    <p> We provide the best service for booking car and bike. You can book your car and bike from here.</p>

    <form action="" method="post">
        <label for="name">Name:</label>
        <input type="text" name="name" id="name" required>
        <br><br>
        <label for="email">Email:</label>
        <input type="email" name="email" id="email" required>
        <br><br>
        <label for="phone">Phone:</label>
        <input type="tel" name="phone" id="phone" required>
        <br><br>
        <label for="vehicle">Vehicle:</label>
        <select name="vehicle" id="vehicle" required>
            <option value="car">Car</option>
            <option value="bike">Bike</option>
            <option value="scotty">Scotty</option>
            <option value="bullet">Bullet</option>
        </select>
        <br><br>
        <label for="date">Date:</label>
        <input type="date" name="date" id="date" required>
        <br><br>
        <label for="time">Time:</label>
        <input type="time" name="time" id="time" required>
        <br><br>
        <label for="location">Location:</label>
        <input type="text" name="location" id="location" required>
        <br><br>
        <button type="submit">Submit</button>
    

</body>
</html>