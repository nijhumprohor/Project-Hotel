<%-- 
    Document   : index
    Created on : Mar 27, 2016, 12:38:28 PM
    Author     : ruhul
Hotel Info: http://torontoregency.hyatt.com/en/hotel/our-hotel.html
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page session = "true" %>

 
    
    <header>
        <h1 style = "color:#ff3333;">Ricky's Home</h1>
    </header>
    <div class = "navigation">
        <li><a id="id" href = "index.jsp">Home</a><li>
        <li><a href="reservation.jsp">Reservation</a></li> 
        <li><a href = "gallery.jsp">Gallery</a></li>
        <li><a href = "contact.jsp">Contact</a></li>
        <% if ((session.getAttribute("username")==null) || (session.getAttribute("username")=="")){%>
        <li><a href="login.jsp">Login/Signup</a></li>
        <%} else{ %>
        <li><a href="logut.jsp">Logout</a></li>
        <%}%>
    </div>
   
    <body>
        <h2 style="text-align: center;color: #99ff66; font-size: 38;text-decoration: underline;font-family: Impact,Charocal,sans-serif;">Welcome</h2>
         <table style="width:100%;padding-left: 40px">
<!--     <td ><img src="pictures/toronto3.jpg" width="300" height="400" /></td>-->
    <td style="font-size: 50;color:#BDBDBD; font-family: Impact, Charcoal, sans-serif;">Ricky's Home Hotel</td>
<!--    <td ><img src="pictures/Old_City_Hall.jpg" width="300" height="400" /></td>  -->
          </table>
        <p><span style="font-weight: bold"></span>Parking</p>
         <p>Ricky's Home offers underground parking with in and out privileges for registered guests.</p>
</p>  
<p>Hotel Features</p>
<p>Accessibility</p>
<p>Business Services</p>
<p>Guest Services</p>
<p>Internet Access</p>
<p>Pet Policy</P>
 </body>

