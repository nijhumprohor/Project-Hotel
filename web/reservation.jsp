<%-- 
    Document   : reservation
    Created on : Mar 27, 2016, 1:10:26 PM
    Author     : ruhul
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page  import="java.sql.DriverManager" %>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Reservation</title>
    </head>
    <body>
       <h1>RICKY'S HOME</h1>
       
        <% if ((session.getAttribute("username")== "admin")){
           response.sendRedirect("adminReservation.jsp");
        }else if((session.getAttribute("username") != null) && (session.getAttribute("username") != "admin")){
                response.sendRedirect("userReservation.jsp");
         }
        %>  

        <div class="navigation">
            <li><a href="index.jsp"> Home</a></li>
            <li><a id="id" href="reservation.jsp">Reservations</a></li>
            <li><a href="gallery.jsp">Gallery</a></li>
            <li><a href="contact.jsp"> Contact</a></li>
            <li><a  href="login.jsp"> Login/Signup</a></div>
        
<div>         
    <div class="desk">

            1 Bed $80 per night
            2 Beds $90 per night
            24 Hour Tea & Coffee in Lobby!

            Room Special
            1 Night with Dinner and Breakfast for $110.
            Meals include the special of the day.
        </div>
        <%
            Class.forName("oracle.jdbc.driver.OracleDriver").newInstance();
            Connection connection = DriverManager.getConnection("jdbc:oracle:thin:@dilbert.humber.ca:1521:grok", "N00797103", "oracle");
            Statement st = connection.createStatement();
            ArrayList desc = new ArrayList();
            ArrayList price = new ArrayList();
            ArrayList roomNumber = new ArrayList();
             
            String query = "select room#, description, price from ROOMS";
            ResultSet rs = st.executeQuery(query);

            while(rs.next()) {
                roomNumber.add(rs.getString("room#"));
                desc.add(rs.getString("description"));
                price.add(rs.getString("price"));
            }
        %> 
        <p>
               
            
        </p>
        
        
        <%--catch(Exception e){}--%>
           <fieldset>
               <% for (int i = 0; i < desc.size(); ++i) {
                 %>
                    <li>
                       <% out.println(roomNumber.get(i) + "-------" + desc.get(i) + "-------" + price.get(i));%>
                    </li>
                    <%
                        }
                    %>
                
            </fieldset>
</body>
</html>
