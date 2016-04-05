<%-- 
    Document   : contact
    Created on : Mar 27, 2016, 1:10:50 PM
    Author     : ruhul
--%>

<%@ page session="true" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<body>

<!--<script type="text/javascript" src="script.js"></script>-->

<h1>RICKY'S HOME</h1>

<div class="navigation">
	<li><a href="index.jsp"> Home</a></li>
	<li><a href="reservation.jsp">Reservations</a></li>
	<li><a href="gallery.jsp">Gallery</a></li>
	<li><a  id="id" href="contact.jsp"> Contact</a></li>
	 <% if ((session.getAttribute("username") ==null) || (session.getAttribute("username") =="")) { %>
	<li><a  href="login.jsp"> Login/Signup</a></li>
        <% } else { %>
        <li><a  href="logout.jsp"> Logout</a></li>
        <%}%>
	</div>

	<div class="deck">
	<h5><u>CONTACT INFORMATION</u></h5>
	<h2>RICKY'S HOME</h2><br>
		RICKY AU<br>
                370 King Street<br>
		Toronto, ON M5V 1J9<br>
	647-780-6969
	<br>
	<br>	
	
<h4>Send us any comments or messages.</h4>
<p><div id="errorArea" height="10"></div>
<form action="form.php" method="get" name="form1" id="form1">


 <form action="MAILTO:ruhul.amin.ca@gmail.com" method="post" enctype="text/plain">
Name:<br>
<input type="text" name="name" value="your name"><br>
E-mail:<br>
<input type="text" name="mail" value="your email"><br>
<br>
   Comment: <textarea name="comment" rows="5" cols="40"></textarea>
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
function init_map(){
  var myOptions = {zoom:14,center:new google.maps.LatLng(43.646710, -79.392013),mapTypeId: google.maps.MapTypeId.ROADMAP};
  map = new google.maps.Map(document.getElementById("gmap_canvas"),myOptions);
  marker = new google.maps.Marker({map: map,position: new google.maps.LatLng(43.646710, -79.392013)});
  infowindow = new google.maps.InfoWindow({content:"<b>RICKY'S HOME</b><br/>370 King Street<br/> M5V 1J9 Toronto" });google.maps.event.addListener(marker, "click", function(){infowindow.open(map,marker);
  });
  infowindow.open(map,marker);}google.maps.event.addDomListener(window, 'load', init_map);
  </script>
 
</body>



	


</html>