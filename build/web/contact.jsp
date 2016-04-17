<%-- 
    Document   : contact
    Created on : Mar 27, 2016, 1:10:50 PM
    Author     : ruhul
--%>

<%@ page session="true" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="CSS/style.css"/>
        <link rel="stylesheet" type="text/css" href="CSS/navigation.css"/>        
        <title>Contact Us</title>
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

        <div class="deck">
            <h5><u>CONTACT INFORMATION</u></h5>
            <h2>BANANA HOTEL</h2><br>
            420 Banana Street<br>
            Banana, BA B4N 4NA<br>
            782-522-6161
            <br>
            <br>	

            <h4>Send us any comments or messages.</h4>
            <p><div id="errorArea" height="10"></div>
            <form action="form.php" method="get" name="form1" id="form1">


                <form action="MAILTO:ruhul.amin.ca@gmail.com" method="post" enctype="text/plain">
                    Name:<br>
                    <input type="text" name="name" value="Please enter your name here" 
                           onfocus="if (this.value == 'Please enter your name here') {this.value = '';}"
                            onblur="if (this.value == '') {this.value = 'Please enter your name here';}"><br>
                    E-mail:<br>
                    <input type="text" name="mail" value="Please enter your email here" 
                           onfocus="if (this.value == 'Please enter your email here') {this.value = '';}"                           
                           onblur="if (this.value == '') {this.value = 'Please enter your email here';}"
                           ><br>
                    <br>
                    Comment:<br>
                    <textarea name="comment" rows="5" cols="40" 
                           onfocus="if (this.value == 'Please enter your comments here') {this.value = '';}"                           
                           onblur="if (this.value == '') {this.value = 'Please enter your comments here';}"
                           >Please enter your comments here</textarea>
                    <br>
                    <input type="submit" value="Send">
                    <input type="reset" value="Reset">
                    </div>

                </form>
                <script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script>
                <div style="overflow:hidden;height:500px;width:600px;"><div id="gmap_canvas" style="height:500px;width:600px;"></div>
                    <style>#gmap_canvas img{max-width:none!important;background:none!important}</style>
                    <a class="google-map-code" href="http://wordpress-themes.org" id="get-map-data">http://wordpress-themes.org/</a></div>
                <script type="text/javascript">
                    function init_map() {
                        var myOptions = {zoom: 14, center: new google.maps.LatLng(43.646710, -79.392013), mapTypeId: google.maps.MapTypeId.ROADMAP};
                        map = new google.maps.Map(document.getElementById("gmap_canvas"), myOptions);
                        marker = new google.maps.Marker({map: map, position: new google.maps.LatLng(43.646710, -79.392013)});
                        infowindow = new google.maps.InfoWindow({content: "<b>BANANA HOTEL</b><br/>420 Banana Street<br/> B4N 4NA Banana"});
                        google.maps.event.addListener(marker, "click", function () {
                            infowindow.open(map, marker);
                        });
                        infowindow.open(map, marker);
                    }
                    google.maps.event.addDomListener(window, 'load', init_map);
                </script>

                </body>
               </html>