<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Airline Ticket Booking</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f0f0f0;
        }

          header {
            background-color: white;
            color: black;
            padding: 10px;
            display: flex;
            justify-content: space-between;
        }
        header div img {
            max-width: auto; /* Ensure the image doesn't exceed its container */
            height: 46px; /* Maintain aspect ratio */
        }


        

nav {
    background-color: white;
     margin: 0;
     padding: 1px;
     list-style: none;
     text-align: right;
     font-family: Arial, sans-serif;
}
 nav li {
        display: inline-block;
        padding: 10px;
        margin-right: 10px;
 }

 nav a {
         display: block;
         text-align: center;
         text-decoration: none;
         color: #000;
        }

        h1 {
            margin: 0;
        }

        section {
        
            margin: auto auto;
            padding: 20px;
            background-color: white;
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.2);
             width: 60%; /* Adjust the width as needed */
         /* Center the section */
        }

        

        label, input, select {
            width: 100%;
            margin-bottom: 10px;
            box-sizing: border-box;
        }

        button {
            grid-column: span 2;
            background-color: #007BFF;
            color: white;
            padding: 10px;
            border: none;
            cursor: pointer;
            width: 100%; /* Adjust the width as needed */
        box-sizing: border-box; 
        }

        footer {
            text-align: center;
            background-color: #007BFF;
            color: white;
            padding: 10px;
        }
    </style>
</head>
<body>

<header>
    <div>
        <img src="C:\Users\HP\OneDrive\Desktop\logo.png"alt="logo">
    </div>
    <nav>
        <li><a href="index.jsp">Home</a></li>
        <li><a href="searchflight.jsp">Search Flights</a></li>
        <li><a href="bookticket.jsp">Book Ticket</a></li>
        <li><a href="bookingdetails.jsp">Booking Details</a></li>
        <li><a href="Register.jsp">Sign Up</a></li>
        <li><a href="login.jsp">Login</a></li>
    </nav>
</header>
    
<section>
    
    <form action="bookticketServlet" method=post>
        <h2>Book Tickets</h2>
        
        	<label for="Flight">Flight:</label>
        	<input type="text" placeholder="Select Flight" name="Flight">
        
        
            <label for="from">From:</label>
            <select id="from" name="from" required>
            	<option value="selectcity">Select city</option>
             	<option value="Banglore">Banglore</option>
             	<option value="Delhi">Delhi</option>
             	<option value="Kolkatha">Kolkatha</option>
             	<option value="Chenni">Chenni</option>
            </select>

            <label for="to">To:</label>
            <select id="to" name="to" required>
            	<option value="selectcity">Select city</option>
             	<option value="Banglore">Banglore</option>
             	<option value="Delhi">Delhi</option>
             	<option value="Kolkatha">Kolkatha</option>
             	<option value="Chenni">Chenni</option>
            </select>

            <label for="departuredate">Departure Date:</label>
            <input type="date" id="departuredate" name="departuredate" required>

            <label for="returndate">Return Date:</label>
            <input type="date" id="returndate" name="returndate">

            <label for="passengers">Passengers:</label>
            <select id="passengers" name="passengers" required>
                <option value="0">0</option>
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="4">4</option>
                <option value="5">5</option>
            </select>

            <label for="classname">Class:</label>
            <select id="classname" name="classname" required>
                <option value="economy">Economy</option>
                <option value="premiumeconomy">Premium Economy</option>
                <option value="business">Business</option>   
                <option value="firstclass">First Class</option>
            </select>

            <button type="submit" value="bookticket">Book Ticket</button>
       </form>
   </section>

   
</body>
</html>