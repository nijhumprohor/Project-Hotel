<%-- 
    Document   : booking
    Created on : Apr 16, 2016, 11:32:19 AM
    Author     : ruhul
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Booking</title>
    </head>
    <body>
         <%
         String roomNum = request.getParameter("roomNumber");
        %>
       <h1>Hi ${username}!</h1>
        <div>You have booked for   <%out.println(roomNum);%></div>
        Click <a href="index.jsp">here</a> to go back to home page
       
    </body>
</html>
