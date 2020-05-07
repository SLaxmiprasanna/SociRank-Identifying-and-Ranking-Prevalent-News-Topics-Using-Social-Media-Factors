<!DOCTYPE html>
<html>
<title>Route Map</title>
  <head>
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
    <link rel="stylesheet" type="text/css" href="style.css" />
	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
    <script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?sensor=false&key=AIzaSyD0X4v7eqMFcWCR-VZAJwEMfb47id9IZao">
    </script>
	<style>
	body {
		color: black;
		font-family: arial,sans-serif;
		font-size: 13px;
	}
	</style>
    <script type="text/javascript">
	var map;
	var rendererOptions = {draggable: true};
	var directionsDisplay = new google.maps.DirectionsRenderer(rendererOptions);
	var directionsService = new google.maps.DirectionsService();
	
	$(document).ready(function () {
			
			//draw a map centered at Empire State Building Newyork
		    var latlng = new google.maps.LatLng(12.972442, 77.580643);
	        var myOptions = {
	            zoom: 15,
	            center: latlng,
	            mapTypeId: google.maps.MapTypeId.ROADMAP
	        };
	        map = new google.maps.Map(document.getElementById("map_canvas"), myOptions);
	
			directionsDisplay.setMap(map);
			directionsDisplay.setPanel(document.getElementById("divDirections"));
			
			$("#btnGetDirections").click(function(){
				calcRoute($("#txtAddress1").val(),$("#txtAddress2").val());
			});
			 
			 
	});				  
      
	function calcRoute(start,end) {
	  var request = {
		origin:start,
		destination:end,
		travelMode: google.maps.TravelMode.DRIVING,
		provideRouteAlternatives : false
	  };
	  directionsService.route(request, function(result, status) {
		if (status == google.maps.DirectionsStatus.OK) {
		  directionsDisplay.setDirections(result);
		}
	  });
	}
  	
    </script>
  </head>
  <body>
  <%@ include file="connect.jsp" %>
  <% String fromlocation=(String)application.getAttribute("ulocation"); 
     String tolocation=request.getParameter("loc");
   	  String uname=request.getParameter("name");
	
   if(fromlocation.equalsIgnoreCase(tolocation)){
			
			String query="select address from user where username='"+uname+"' "; 
			Statement st=connection.createStatement();
			ResultSet rs=st.executeQuery(query);
			if(rs.next())
			{
				tolocation= rs.getString(1);
					}}
   %>
    <div id="container" class="shadow">
        <div id="map_canvas"></div>
        <div id="sidebar">
            <div class="row" style="background:#E3EDFA">
                <label> Enter Address</label>
				<input type="text" id="txtAddress1" class="text" value="<%=fromlocation%> " />
                <input type="text" id="txtAddress2" class="text" value="<%=tolocation%> " />
                <img src="images/search.png" id="btnGetDirections" border="0" width="24" height="24" style="vertical-align:middle;"  />

            </div>
            <div class="separator"></div>
			<div id="divDirections">
			</div>
        </div>
    </div>
  </body>
</html>