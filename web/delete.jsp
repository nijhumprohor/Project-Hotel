<%-- 
    Document   : delete
    Created on : Apr 16, 2016, 11:35:46 AM
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


<%

    Class.forName("oracle.jdbc.driver.OracleDriver").newInstance();
    Connection connection = DriverManager.getConnection("jdbc:oracle:thin:@dilbert.humber.ca:1521:grok", "n01068251", "oracle");
    
    String id= request.getParameter("id");
    if(id != null){
    Statement st = connection.createStatement();
    st.executeQuery("Delete from ROOMSwhere id = '" + id + "'");
    response.sendRedirect("index.jsp");
    }
%>
