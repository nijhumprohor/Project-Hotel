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
                <li style="float:right"><a href="logut.jsp">Logout</a></li>
                    <%}%>
            </ul>
        </div>
    </header>
    <body>
        <table style="width:45%">
            <tr>
                <th><img src="pictures/1.jpg" width="200" height="150"></th>
                <td style="color:#BDBDBD; font-weight: bold;">Grand Deluxe Room,
                    Includes Full breakfast Buffet, No Smoking
                    Occupancy for 4,  
                    2 LCD Tvs, DVD Player,Wi-Fi Coffeemaker, In-Room</td>		

            </tr>
            <tr>
                <td><img src="pictures/Grand Double.jpg" width="200" height="150"></td>
                <td style="color:#BDBDBD; font-weight: bold;">Grand Double Room,2 King Bed, No Smoking
                    Occupancy 4 (5 with extra bed)
                    Includes Full breakfast Buffet, No Smoking
                    Occupancy for 2,  
                    2 LCD Tvs, DVD Player,FREE Wi-Fi Coffee maker
                    Business Room</td>		

            </tr>
            <tr>
                <td><img src="pictures/Two Bed.jpg" width="200" height="150"></td>
                <td style="color:#BDBDBD; font-weight: bold;">Double Room,Two Queen Beds, No Smoking
                    Occupancy For 2,
                    Pay-For-View Movies, FREE Wi-Fi
                    Coffee maker, In-Room
                    TV-Alarm Clock</td>		

            </tr>
            <tr>
                <td><img src="pictures/Single Room.jpg" width="200" height="150"></td>
                <td style="color:#BDBDBD; font-weight: bold;">Single  Beds, No Smoking
                    Occupancy 2 (3 with extra bed)
                    Corner Room
                    LCD TV, DVD Player, Pay-For-View Movies
                    Traditional</td>		

            </tr>
        </table>    
    </body>
</html>
