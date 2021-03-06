<%-- 
    Document   : adminReservation
    Created on : Apr 16, 2016, 11:20:23 AM
    Author     : ruhul
--%>
<%@ page session="true" %>
<%@page import="java.sql.ResultSetMetaData"%>
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

<% Class.forName("oracle.jdbc.driver.OracleDriver").newInstance();  %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="CSS/style.css"/>
        <link rel="stylesheet" type="text/css" href="CSS/navigation.css"/>        
        <title>Admin Reservation</title>
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

        <div class="desk">
            <br>
            <style>
                tr, th{
                    text-align: center;
                    padding: 15px;
                }
            </style>
            
            <table style="width:100%" border="1px solid black">
                <tr>
                    <th>Beds</th>
                    <th>Price Per Day</th> 
                    <th>Specials</th>
                </tr>
                
                <tr>
                    <td>1 Bed</td>
                    <td>$80</td> 
                    <td>• 24 Hour Tea & Coffee in Lobby</td>
                </tr>
                
                <tr>
                    <td>2 Beds</td>
                    <td>$90 </td> 
                    <td>• 24 Hour Tea & Coffee in Lobby</td>
                </tr>
                
                <tr>
                    <td>4 Beds</td>
                    <td>$100 </td> 
                    <td>• 24 Hour Tea & Coffee in Lobby                        
                        <br>
                        • Complimentary breakfast
                        <br>
                        • Room Service
                    </td>
                </tr>
            </table>
        </div>

    <%
        Class.forName("oracle.jdbc.driver.OracleDriver").newInstance();
        Connection connection = DriverManager.getConnection("jdbc:oracle:thin:@dilbert.humber.ca:1521:grok", "n01068251", "oracle");
        Statement st = connection.createStatement();
        ArrayList desc = new ArrayList();
        ArrayList price = new ArrayList();
        ArrayList id = new ArrayList();
        ArrayList roomNumber = new ArrayList();

        String query = "select ID, room#, description, price from ROOMS";
        ResultSet rs = st.executeQuery(query);

        while (rs.next()) {
            id.add(rs.getLong("ID"));
            roomNumber.add(rs.getString("room#"));
            desc.add(rs.getString("description"));
            price.add(rs.getString("price"));

        }
    %> 
    <p>

    </p>

    <fieldset>

        <% for (int i = 0; i < desc.size(); ++i) {

        %>
        <input type="hidden" name="id" value="<%id.get(i);%>" />
        <% out.println(roomNumber.get(i) + "-------" + desc.get(i) + "-------" + price.get(i));%>
        <a href="delete.jsp">delete</a>
        <br />
        <%
            }
        %>
        <div name="button">
            <form action="add.jsp">
                <input type="submit" name="submit" value="add room">                   
            </form>                
        </div>

    </fieldset>
</body>
</html>
