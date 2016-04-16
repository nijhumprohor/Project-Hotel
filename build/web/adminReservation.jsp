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

    <body>
        <h1>RICKY'S HOME</h1>
        <% if ((session.getAttribute("username") == null) && (session.getAttribute("username") == "")) {
                response.sendRedirect("reservation.jsp");
            }
        %>  
        <div class="navigation">
            <li><a href="index.jsp"> Home</a></li>
            <li><a id="id" href="reservation.jsp">Reservations</a></li>
            <li><a href="gallery.jsp">Gallery</a></li>
            <li><a href="contact.jsp"> Contact</a></li>
                <% if ((session.getAttribute("username") == null) || (session.getAttribute("username") == "")) { %>
            <li><a  href="login.jsp"> Login/Signup</a></li>
                <% } else { %>
            <li><a  href="logout.jsp"> Logout</a></li>
                <%}%>
        </div>

                <div class="desk">
                    1 Bed $ 60 per night
                    2 Bed $ 80 per night
                    complimentary Tea in Lobby
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
