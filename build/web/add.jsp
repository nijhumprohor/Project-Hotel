<%-- 
    Document   : add
    Created on : Apr 16, 2016, 11:30:08 AM
    Author     : ruhul
--%>

<%@page import="java.io.PrintWriter"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page  import="java.sql.DriverManager" %>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<% Class.forName("oracle.jdbc.driver.OracleDriver").newInstance();  %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="CSS/style.css"/>
        <link rel="stylesheet" type="text/css" href="CSS/navigation.css"/>  
        <title>Add Room</title>
    </head>
    <body>
        <form >
            <p> 
                <label for="id" class="id" data-icon="ID"> Room ID </label>
                <input id="id" name="id" required="required" type="text" /> 
            </p>
            <p> 
                <label for="roomNumber" class="roomNumber" data-icon="#"> Room Number</label>
                <input id="roomNumber" name="roomNumber" required="required" type="text"/> 
            </p>
            <p> 
                <label for="desc" class="desc" data-icon="d"> Description </label>
                <input id="desc" name="desc" required="required" type="text" size="150"/> 
            </p>

            <p> 
                <label for="price" class="price" data-icon="p"> Price</label>
                <input id="price" name="price" required="required" type="desc"/> 
            </p>
            <p>
                <input type="submit" value="add" name="submit"/>

                <%
                    try {

                        String id = request.getParameter("id");
                        String roomNumber = request.getParameter("roomNumber");
                        String desc = request.getParameter("desc");
                        String price = request.getParameter("price");
                        String submit = request.getParameter("submit");

                        if (id != null && roomNumber != null && desc != null && price != null && submit != null) {
                            //Statement stmt;
                            Class.forName("oracle.jdbc.driver.OracleDriver").newInstance();
                            Connection connection = DriverManager.getConnection("jdbc:oracle:thin:@dilbert.humber.ca:1521:grok", "n01068251", "oracle");

                            Statement st = connection.createStatement();
                            st.executeQuery("insert into ROOMS(id, room#, description, price) values ('" + id + "' ,'" + roomNumber + "' ,'" + desc + "' , '" + price + "')");
                            response.sendRedirect("reservation.jsp");
                        }
                    } catch (SQLException e) {
                        e.printStackTrace();
                    }
                %>
            </p>
        </form>
    </body>
</html>
