<%-- 
    Document   : gallery
    Created on : Mar 27, 2016, 1:10:39 PM
    Author     : ruhul
--%>
<%@page session="true" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="CSS/style.css"/>
        <link rel="stylesheet" type="text/css" href="CSS/navigation.css"/>        
        <title>Gallery</title>
    </head>
    <header>
        <h1>Banana Hotel</h1>
        <div class = "navigation">
            <ul>
                <li><a id="id" href = "index.jsp">Home</a></li>
                <li><a href="reservation.jsp">Reservation</a></li> 
                <li><a href = "gallery.jsp">Gallery</a></li>
                <li><a href = "contact.jsp">Contact</a></li>
                    <% if ((session.getAttribute("username") == null) || (session.getAttribute("username") == "")) {%>
                <li style="float:right"><a href="login.jsp">Login/Signup</a></li>
                    <%} else { %>
                <li style="float:right"><a href="logout.jsp">Logout</a></li>
                    <%}%>
            </ul>
        </div>
    </header>
    <body>
        <br>
    <center>
            <style>
                tr, td{
                    text-align: center;
                    padding: 15px;
                }
            </style>
            
        <table style="width:65%" border="1px solid black">
            <tr>
                <td><img src="pictures/1.jpg" width="200" height="150"></td>
                <td style="font-weight: bold;">
                    • Grand Deluxe Room
                    <br>
                    • Includes Full breakfast Buffet
                    <br>
                    • Occupancy for 4
                    <br>
                    • 2 LCD TVs
                    <br>
                    • DVD Player
                    <br>
                    • Coffeemaker
                </td>		
            </tr>

            <tr>
                <td><img src="pictures/Grand Double.jpg" width="200" height="150"></td>
                <td style="font-weight: bold;">
                    • Grand Double Room
                    <br>
                    • Occupancy 2 (3 with extra bed)
                    <br>
                    • Includes Full breakfast Buffet, No Smoking
                    <br>
                    • Occupancy for 2
                    <br>
                    • 2 LCD TVs
                    <br>
                    • DVD Player
                    <br>
                    • Coffee maker
                </td>
            </tr>
            
            <tr>
                <td><img src="pictures/Two Bed.jpg" width="200" height="150"></td>
                <td style="font-weight: bold;">
                    • Double Room
                    <br>
                    • Two Queen Beds
                    <br>
                    • Occupancy For 2
                    <br>
                    • Pay-For-View Movies
                    <br>                   
                    • Coffee maker 
                    <br>
                    • TV-Alarm Clock
                </td>		
            </tr>
            
            <tr>
                <td><img src="pictures/Single Room.jpg" width="200" height="150"></td>
                <td style="font-weight: bold;">
                    • Single Beds   
                    <br>
                    • Occupancy 1 (2 with extra bed)
                    <br>
                    • Corner Room
                    <br>
                    • LCD TV
                    <br>
                    • DVD Player
                    <br>
                    • Pay-For-View Movies
                </td>		
            </tr>
            
        </table>    
        <p>
            Free Wi-Fi is included in all rooms.
            <br>
            Please do not smoke in any rooms. 
        </p>
    </center>
</body>
</html>
