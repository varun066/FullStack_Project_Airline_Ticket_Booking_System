<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Airline Booking System</title>

    <style>
        /* style.css */

        body {
            background-image:url('https://miro.medium.com/v2/resize:fit:3000/format:webp/1*fnkthOw3ZsXl6OfQaOkDRA.jpeg');
            background-size: cover;
            background-position: center;
            text-align: center;
            font-family: Arial, sans-serif;
            
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
.container {
    width: 80%;
    margin: 0 auto;
    margin-top: 11%;
    margin-bottom: 11%;
    text-align: center;
    color: white;
    font-family: Arial, sans-serif;
}

footer {
    background-color: #fff;
    color: black;
    padding: 1%;
    text-align: center;
    font-family: Arial, sans-serif;
}

p{
    font-family: Arial, sans-serif;
}
       
    </style>
</head>
<body>
<form action=indexServlet method=post>

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
       
    

    
        <div class="container" >
            <p style="font-size: 40px;"><b>Welcome to the Online Flight ticket Booking</b></p>
            <h1>Let's Make Your Best <br> Trip Ever</h1>
            <p>Plan and book your perfect trip with expert advice, travel tips, destination <br> information and inspiration from us.</p>
        </div>
    

    
    <footer>
        <p>&copy; 2023 Flight Booking System</p>
    </footer>
    </form>
</body>
</html>