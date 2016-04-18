<%-- 
    Document   : index
    Created on : Mar 27, 2016, 12:38:28 PM
    Author     : ruhul
Hotel Info: http://torontoregency.hyatt.com/en/hotel/our-hotel.html
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page session = "true" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="CSS/style.css"/>
        <link rel="stylesheet" type="text/css" href="CSS/navigation.css"/>        
        <title>Home Page</title>
    </head>
    <header>
        <h1>Banana Hotel</h1>
        <div class = "navigation">
            <ul>
                <li><a href = "index.jsp">Home</a></li>
                <li><a href = "reservation.jsp">Reservation</a></li> 
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
    <center>        
        <h2>Welcome to Banana Hotel</h2>        
        <!--        <img src="pictures/Old_City_Hall.jpg" width="300" height="400" />-->
        <img src="http://www.hotel-r.net/im/hotel/mx/hotel-banana-1.jpg" width="700" height="400"/>
    </center>
    <dl>
        <dt> Parking</dt>
        <dd>• Banana Home offers underground parking with in and out privileges for registered guests.</dd>
        <br>

        <dt>Hotel Features</dt>
        <dd>• Starbucks</dd>
        <dd>• McDonalds</dd>
        <dd>• And many more features! </dd>
        <br>

        <dt>Accessibility</dt>
        <dd>• Handicapped parking</dd>
        <dd>• Easy access for people with disabilities</dd>
        <br>

        <dt>Business Services</dt>
        <dd>• Self-service desks</dd>
        <dd>• Help desks</dd>
        <br>

        <dt>Guest Services</dt>
        <dd>• Uber services</dd>
        <dd>• Taxi services</dd>
        <dd>• Room service</dd>
        <br>

        <dt>Internet Access</dt>
        <dd>• Google Fiber</dd>
        <br>

        <dt>Pet Policy</dt>
        <dd>• Bring your pets, we love them!</dd>
        <br>
    </dl>
    </body>
</html>