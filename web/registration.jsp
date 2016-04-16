<%-- 
    Document   : registration.jsp
    Created on : Mar 28, 2016, 1:48:40 AM
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
                <li style="float:right"><a href="logut.jsp">Logout</a></li>
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


                        <div id="register" class="animate form">
                            <form > 
                                <h1> Sign up </h1> 
                                
                                <p> 
                                    <label for="usernamesignup" class="uname" data-icon="u">Your username</label>
                                    <input id="usernamesignup" name="usernamesignup" required="required" type="text" placeholder="mysuperusername690" />
                                </p>
                                <p> 
                                    <label for="emailsignup" class="youmail" data-icon="e" > Your email</label>
                                    <input id="emailsignup" name="emailsignup" required="required" type="email" placeholder="mysupermail@mail.com"/> 
                                </p>
                                <p> 
                                    <label for="passwordsignup" class="youpasswd" data-icon="p">Your password </label>
                                    <input id="passwordsignup" name="passwordsignup" required="required" type="password" placeholder="eg. X8df!90EO"/>
                                </p>
                                <p> 
                                    <label for="passwordsignup_confirm" class="youpasswd" data-icon="p">Please confirm your password </label>
                                    <input id="passwordsignup_confirm" name="passwordsignup_confirm" required="required" type="password" placeholder="eg. X8df!90EO"/>
                                </p>
                                <p class="signin button"> 
                                    <input type="submit" value="Sign up" name="submit"/> 
                                    <%

                                        try {
                                            String usernamesignup = request.getParameter("usernamesignup");
                                            String emailsignup = request.getParameter("emailsignup");
                                            String passwordsignup = request.getParameter("passwordsignup");
                                            String submit = request.getParameter("submit");
                                            if (usernamesignup != null && passwordsignup != null && emailsignup != null && submit != null ) {
               //Statement stmt;

                                                Class.forName("oracle.jdbc.driver.OracleDriver").newInstance();
                                                Connection connection = DriverManager.getConnection("jdbc:oracle:thin:@dilbert.humber.ca:1521:grok", "n01068251", "oracle");

                                                Statement st = connection.createStatement();
                                                //ResultSet rs;
                                                st.executeUpdate("insert into USERS(username, password, email) values ('" + usernamesignup + "' ,'" + passwordsignup + "' ,'" + emailsignup + "')");
                                                response.sendRedirect("login.jsp");
                                            }
                                        } catch (SQLException e) {
                                            e.printStackTrace();
                                        }

                                    %>
                                </p>
                                <p class="change_link">  
                                    Already a member ?
                                    <a href="login.jsp" class="to_register"> Go and log in </a>
                                    <span class="right">
                                        <a href="index.jsp"><strong>Back</strong></a>
                                    </span>
                                </p>
                            </form>

                        </div>

                    </div>
                </div>  
            </section>
        </div>
    </body>
</html>
