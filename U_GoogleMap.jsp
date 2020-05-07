<title>Map</title>

<%@page import ="java.util.*"%>
<%@ include file="connect.jsp" %>
<%@page import ="java.sql.*"%>
<%@ page language = "java" %>
<%@ page import = "java.text.*"%>
<%@ page import = "java.io.*"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd ">
<html xmlns=" http://www.w3.org/1999/xhtml" xml:lang="en">
<style type="text/css">
<!--
.style1 {
	color: #0066FF;
	font-weight: bold;
	font-size: 20px;
}
.style3 {color: #009900}
.style4 {
	color: #FF00FF;
	font-weight: bold;
}
.style5 {
	color: #FF0000;
	font-weight: bold;
}
-->
</style>
<head>

    <script src=" http://maps.google.com/maps?file=api&amp;v=2&amp;key=AIzaSyD0X4v7eqMFcWCR-VZAJwEMfb47id9IZao"
        type="text/javascript">
//My Google Maps Key
    </script>

    <script type="text/javascript">

function load() {
if (GBrowserIsCompatible()) {
var map = new GMap2(document.getElementById("map"));
map.addControl (new GSmallMapControl());
map.addControl(new GMapTypeControl());
var center = new GLatLng(0, 0);
map.setCenter(center, 11);
map.setMapType(G_SATELLITE_MAP);
geocoder = new GClientGeocoder();

var marker = new GMarker(center, {draggable: true}); 
map.addOverlay(marker);
document.getElementById("lat").value = center.lat();
document.getElementById("lng").value = center.lng ();

geocoder = new GClientGeocoder();

GEvent.addListener(marker, "dragend", function() {
var point =marker.getPoint();
map.panTo(point);
document.getElementById("lat").value = point.lat();
document.getElementById("lng").value = point.lng();
});

GEvent.addListener(map, "moveend", function() {
map.clearOverlays();
var center = map.getCenter();
var marker = new GMarker(center, {draggable: true});
map.addOverlay(marker);
document.getElementById ("lat").value = center.lat();
document.getElementById("lng").value = center.lng();

GEvent.addListener(marker, "dragend", function() {
var point =marker.getPoint();
map.panTo(point);
document.getElementById("lat").value = point.lat();
document.getElementById("lng").value = point.lng();
});
});
}
}

function showAddress(address) {
var map = new GMap2(document.getElementById("map"));
map.addControl(new GSmallMapControl());
map.addControl(new GMapTypeControl());
if (geocoder) {
geocoder.getLatLng (
address,
function(point) {
if (!point) {
alert(address + " city not found !");
}
else {
document.getElementById("lat").value = point.lat();
document.getElementById("lng").value = point.lng();
map.clearOverlays()
map.setCenter(point, 14);
var marker = new GMarker(point, {draggable: true}); 
map.addOverlay(marker);

GEvent.addListener(marker, "dragend", function() {
var pt =marker.getPoint();
map.panTo(pt);
document.getElementById("lat").value = pt.lat();
document.getElementById("lng").value = pt.lng();
});

GEvent.addListener(map, "moveend", function() {
map.clearOverlays();
var center = map.getCenter();
var marker = new GMarker(center, {draggable: true});
map.addOverlay(marker);
document.getElementById ("lat").value = center.lat();
document.getElementById("lng").value = center.lng();

GEvent.addListener(marker, "dragend", function() {
var pt =marker.getPoint();
map.panTo(pt);
document.getElementById("lat").value = pt.lat();
document.getElementById("lng").value = pt.lng();
});
});
}}
);
}}
    </script>

</head>
<body onLoad="load()" onUnload="GUnload()">

    <script language="JavaScript">
<!--
var message="";
function clickIE() {if (document.all) {(message);return false;}}
function clickNS(e) {if
(document.layers||(document.getElementById&&!document.all )) {
if (e.which==2||e.which==3) {(message);return false;}}}
if (document.layers)
{document.captureEvents(Event.MOUSEDOWN);document.onmousedown=clickNS;}
else{document.onmouseup=clickNS;document.oncontextmenu=clickIE;}
document.oncontextmenu=new Function("return false")
// -->
    </script>
	
	<%
	   String username=request.getParameter("username1");
	   String address=request.getParameter("address1");
		//String username=(String)application.getAttribute("username1");
		//String address=(String)application.getAttribute("address1");
		
	%>
	<br/>  <br/>  <span class="style1">User<span class="style3"> <%=username%></span>'s Living Location name:</span>
     <br/> 
     <br/><form action="#" onSubmit="showAddress(this.address.value); return false">
 

            <input type="text" size="34" name="address" value="<%=address%>" />
   		    <input type="submit" value="Click Here To View Area!!!" />
	


    <br />
          <br>
          <span class="style4">Current coordinates:</span>
     </form>
        <table bgcolor="#FFFFFF" width="335">

                <tr>
                    <td width="72">
                        <b>Latitude:</b></td>
                    <td width="251">
                  <input type="text" size="34" name="latitude" value="" id="lat" /></td>
                </tr>
                <tr>
                    <td width="72">

                        <b>Longitude:</b></td>
                    <td>
                        <input type="text" size="34" name="longitude" value="" id="lng" /></td>
                </tr>
</table>
            
            <h2 align="right"><a href="U_Profile.jsp" class="style4">Back</a></h2>
			
            <div align="center" id="map" style="width: 900px; height: 660px">
            </div>
			
			
			
</body>
</html>

