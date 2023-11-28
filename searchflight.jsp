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
            margin: 20px;
            padding: 20px;
            background-color: white;
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.2);
            width:60%;
            align:center;
        }

        

        label, input, select {
            width: 100%;
            margin-bottom: 10px;
        }

        button {
            grid-column: span 2;
            background-color: #007BFF;
            color: white;
            padding: 10px;
            border: none;
            cursor: pointer;
        }
        
        section {
        
            margin: auto auto;
            padding: 20px;
            background-color: white;
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.2);
             width: 60%; /* Adjust the width as needed */
         /* Center the section */
        }

        
    </style>
</head>
<body>
<form action="searchflightServlet" method=post> 

<header>
    <div>
        <img src="https://scontent.fblr4-3.fna.fbcdn.net/v/t39.30808-1/300453387_587992529695929_811074539555460643_n.jpg?stp=c21.0.120.120a_cp0_dst-jpg_e15_p120x120_q65&_nc_cat=100&ccb=1-7&_nc_sid=5f2048&_nc_ohc=OFwsdrKGIKMAX_uICOq&_nc_ht=scontent.fblr4-3.fna&oh=00_AfDmQE5_YS2Qac_Ve2KgLLSzWc-vEBuLB6oBVAW9blxJHA&oe=65624BF2" width="120px" height="120px" alt="logo">
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
    <h2>Search Flights</h2>    
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

            

            <button type="submit" value="searchflight">Search Flights</button>
        </form>
        </section>
   
    
</body>
</html>