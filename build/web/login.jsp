<%-- 
    Document   : login
    Created on : Mar 27, 2016, 1:11:02 PM
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
                <li style="float:right"><a href="logout.jsp">Logout</a></li>
                    <%}%>
            </ul>
        </div>
    </header>
    <body>


        <div class="container">
            <!-- Codrops top bar -->
            <div class="codrops-top">
                <a href="">


                    <div class="clr"></div>
            </div><!--/ Codrops top bar -->
            <header>
                <nav class="codrops-demos"></nav>        
            </header>
            <section>               
                <div id="container_demo" >
                    <a class="hiddenanchor" id="toregister"></a>
                    <a class="hiddenanchor" id="tologin"></a>
                    <div id="wrapper">
                        <div id="login" class="animate form">
                            <form method ="post" > 
                                <h1>Log in</h1> 
                                <p> 
                                    <label for="username" class="uname" data-icon="u" > Your email or username </label>
                                    <input id="username" name="username" required="required" type="text" placeholder="username"/>
                                </p>
                                <p> 
                                    <label for="password" class="upasswd" data-icon="p"> Your password </label>
                                    <input id="password" name="password" required="required" type="password" placeholder="eg. !ty789Aq" /> 
                                </p>
                                <p class="keeplogin"> 
                                    <input type="checkbox" name="loginkeeping" id="loginkeeping" value="loginkeeping" /> 
                                    <label for="loginkeeping">Keep me logged in</label>
                                </p>
                                <p class="login button"> 
                                    <input type="submit" value="Login" /> 
                                </p>
                                <%

                                    String username = request.getParameter("username");
                                    String password = request.getParameter("password");
                                    String submit = request.getParameter("submit");

                                    //Statement stmt;
                                    Class.forName("oracle.jdbc.driver.OracleDriver").newInstance();
                                    Connection connection = DriverManager.getConnection("jdbc:oracle:thin:@dilbert.humber.ca:1521:grok", "n01068251", "oracle");

                                    Statement st = connection.createStatement();
                                    ResultSet rs;
                                    rs = st.executeQuery("select * from USERS where username = '" + username + "' and password = '" + password + "'");
                                    if (rs.next() && username != null && password != null) {
                                        session.setAttribute("username", username);
                                %>
                                <jsp:forward page="response.jsp"/> 
                                <%  }
                                %>
                                <p class="change_link">
                                    Not a member yet ?
                                    <a href="registration.jsp#toregister" class="to_register">Join us</a>
                                </p>
                            </form>
                        </div>
                    </div>
                </div>  
            </section>
        </div>
    </body>
</html>
