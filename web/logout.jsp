<%-- 
    Document   : logout
    Created on : Mar 27, 2016, 1:11:11 PM
    Author     : ruhul
--%>

<%
session.setAttribute("username", null);
session.invalidate();
response.sendRedirect("index.jsp");

%>
