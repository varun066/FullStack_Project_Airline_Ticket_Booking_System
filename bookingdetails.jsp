<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
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
</style>
</head>
<body>
<form action=bookingdetailsServlet method=post>
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
<div align=center>
<button type=submit value=bookingdetails>View past bookings</button>
</div>
</form>
</body>
</html>