<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Registeration Page</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>
<style type="text/css">
<!--
.style3 {
	font-size: 36px;
	color: #FF0000;
}
.style4 {
	font-weight: bold;
	color: #000000;
}
.style6 {color: #FF00FF}
.style7 {color: #CC00FF}
-->
</style>
<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false&key=AIzaSyD0X4v7eqMFcWCR-VZAJwEMfb47id9IZao"></script>
        <script>
            var map;

            function initialize() {
                var mapOptions = {
                    zoom: 12,
                    center: new google.maps.LatLng(12.9716, 77.5946),
                    mapTypeId: google.maps.MapTypeId.ROADMAP
                };
                map = new google.maps.Map(document.getElementById('map_canvas'),
                    mapOptions
                );
                google.maps.event.addListener(map, 'click', function(event) {
                    document.getElementById('latMap').value = event.latLng.lat();
                    document.getElementById('lngMap').value = event.latLng.lng();
                });
            }
            function mapDivClicked (event) {
                var target = document.getElementById('map_canvas'),
                    posx = event.pageX - target.offsetLeft,
                    posy = event.pageY - target.offsetTop,
                    bounds = map.getBounds(),
                    neLatlng = bounds.getNorthEast(),
                    swLatlng = bounds.getSouthWest(),
                    startLat = neLatlng.lat(),
                    endLng = neLatlng.lng(),
                    endLat = swLatlng.lat(),
                    startLng = swLatlng.lng();

                document.getElementById('posX').value = posx;
                document.getElementById('posY').value = posy;
                document.getElementById('lat').value = startLat + ((posy/350) * (endLat - startLat));
                document.getElementById('lng').value = startLng + ((posx/500) * (endLng - startLng));
            }
            google.maps.event.addDomListener(window, 'load', initialize);
        </script>
		
		
		<script language="javascript" type="text/javascript">      <!--Start Reg Validation Jai Siddalinga-->
function valid()
{
var na3=document.s.name.value;
if(na3=="")

{
alert("Please Enter User Name");
document.s.name.focus();
return false;
}
else
{

}
var na4=document.s.pwd.value;
if(na4=="")

{
alert("Please Enter Password");
document.s.pwd.focus();
return false;
}



var na6=document.s.email.value;
if(na6=="")

{
alert("Please Enter the Email");
document.s.email.focus();
return false;
}

var na7=document.s.mob.value;
if(na7=="")

{
alert("Please Enter the Mobile");
document.s.mob.focus();
return false;
}
var na5=document.s.dob.value;
if(na5=="")

{
alert("Please Enter the DOB");
document.s.dob.focus();
return false;
}

var na11=document.s.gen.value;
if(na11=="--Select--")

{
alert("please choose Gender");
document.s.gen.focus();
return false;
}
var na8=document.s.add.value;
if(na8=="")

{
alert("Please Enter the Address ");
document.s.add.focus();
return false;
}

var na9=document.s.loc.value;
if(na9=="")

{
alert("Please Enter the Location");
document.s.loc.focus();
return false;
}

var na121=document.s.lat.value;
if(na121=="")

{
alert("Please Enter the Latitued");
document.s.lat.focus();
return false;
}

var na13=document.s.lon.value;
if(na13=="")

{
alert("Please Enter the Longitued");
document.s.lon.focus();
return false;
}

var na10=document.s.photo.value;
if(na10=="")

{
alert("please choose image");
document.s.photo.focus();
return false;
}


}
</script>
		
		
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo ">
     <h2 class="style3">SociRank Identifying and Ranking Prevalent News Topics Using Social Media Factors </h2>      
      </div>
      <div class="clr"></div>
      <div class="menu_nav">
        <ul>
          <li><a href="index.html">Home</a></li>
          <li><a href="A_Login.jsp">Admin</a></li>
          <li class="active"><a href="U_Login.jsp">End User</a></li>
        </ul>
        <div class="search">
          <form id="form" name="form" method="post" action="#">
            <span>
            <input name="q" type="text" class="keywords" id="textfield" maxlength="50" value="Search..." />
            <input name="b" type="image" src="images/search.gif" class="button" />
            </span>
          </form>
        </div>
      </div>
      <div class="clr"></div>
      <div class="header_img"> <img src="images/heder_img.jpg" alt="" width="960" height="288" /></div>
    </div>
  </div>
  <div class="clr"></div>
  <div class="content">
    <div class="content_resize">
	  
	     <h2 align="center" class="style6">User Registration Form</h2>
	     <p align="center" class="style6"><img src="images/Register.jpg" width="331" height="83" /></p>
	     <form name="s" method="post" enctype="multipart/form-data" action="U_RegIns.jsp" onSubmit="return valid()"  ons>
	<table height="351" cellspacing="5">
	<tr>
	<td width="504"><table cellpadding="10">
	<tr>
	<td width="221">
	  <div align="right" class="style4 style2 style7"><span class="style11"><font size="+1">User Name : </font> </span></div></td>
	<td width="235"><input name="name" type="text" id="name" style="width:100%"></td>
	</tr>
	<tr>
	<td>
	  <div align="right" class="style4 style2 style7"><span class="style11"><font size="+1">Password :</font> </span></div></td>
	<td><span class="style7">
	  <label>
	    <input type="password" id="pwd" name="pwd" style="width:100%">
	    </label>
	  </span></td>
	</tr>
	<tr>
	<td><div align="right" class="style4 style2 style7"><span class="style13"><font size="+1">Email :</font></span></div></td>
	<td><input name="email" type="text" id="email" style="width:100%" placeholder="abc@gmail.com"></td>
	</tr>
	<tr>
	<td>
	  <div align="right" class="style4 style2 style7"><span class="style13"><font size="+1">Mobile :</font> </span></div></td>
	<td><span class="style7">
	  <label>
	  <input type="text" id="mob" name="mob" style="width:100%">
	  </label>
	  </p>
	</span></td>
	</tr>
	<tr>
	<td>
	  <div align="right" class="style4 style2 style7"><span class="style13"><font size="+1">DOB :</font></span></div></td>
	<td><span class="style7">
	  <label>
	    <input type="text" id="dob" name="dob" style="width:100%" placeholder="DD/MM/YYYY">
	    </label>
	  </span></td>
	</tr>
	<tr>
	<td>
	  <div align="right" class="style4 style2 style7"><span class="style13"><font size="+1">Gender :</font></span></div></td>
	<td><span class="style7">
	  <label>
	    <select id="gen" name="gen">
	      <option>--Select--</option>
	      <option>Male</option>
	      <option>Female</option>
	      </select>
	    </label>
	  </span></td>
	</tr>
	<tr>
	<td><div align="right" class="style4 style2 style7"><span class="style13"><font size="+1">Address :</font> </span></div></td>
	<td>
	  <span class="style7">
	  <label>
	  <textarea name="add" id="add" style="width:100%"></textarea>
	  </label>
	  </p>
	  </span></td>
	</tr>
	<tr>
	<td><div align="right" class="style4 style2 style7"><span class="style13"><font size="+1">Current  Location :</font> </span></div></td>
	<td>
	   <input name="loc" type="text" id="loc" style="width:100%" placeholder="LOCATION">	 </td>
	</tr>
	 <tr>
	 <td>&nbsp;</td>
	 <td>
         <span class="style7">
         <input type="text" id="lat" name="lat" style="width:40%" placeholder="LATTITUDE">
         <input type="text" id="lon" name="lon" style="width:40%" placeholder="LONGITUDE ">	
         </span></td>
	</tr>
	
	<tr>
	<td>
	  <div align="right" class="style4 style2 style7"><span class="style13"><font size="+1">Choose Photo :</font> </span></div></td>
	<td>
	<input name="photo" type="file" id="photo" style="width:100%" > 	</td>
	</tr>
	
	  <td><span class="style7"></span></td>
	  <td><span class="style7"></span></td>
	  </tr>
	<tr>
	<td><span class="style7"></span></td>
	<td><span class="style7">
	  <input type="submit" value="Register" id="button1">
	  <input type="reset" value="clear">
	  </span></td>
	</tr>
	</table>	</td>
	</tr>
	</table>
	</form>
  
   
     <p>&nbsp;</p>
	 <div id="map_canvas" onClick="mapDivClicked(event);" style="height: 550px; width: 550px;"></div>
        
        <div />

        
	  

        <div class="clr"></div>
		 <br>
         <span class="style4 style6">VIEW LATTITUDE AND LONGITUDE FROM MOUSE POSITION </br>
         <br>
         
         lat from map: 
         <input id="latMap" />
        lng from map:</span> 
         <span class="style6">
         <input id="lngMap"  />
      </span>
		<p align="right"><a href="U_Login.jsp" class="style3">Back</a></p>
    </div>
  </div>
  <div class="fbg">
    <div class="fbg_resize">
      <div class="col c1">
        <h2><span>Image Gallery</span></h2>
        <a href="#"><img src="images/gallery_1.jpg" width="58" height="58" alt="" /></a> <a href="#"><img src="images/gallery_2.jpg" width="58" height="58" alt="" /></a> <a href="#"><img src="images/gallery_3.jpg" width="58" height="58" alt="" /></a> <a href="#"><img src="images/gallery_4.jpg" width="58" height="58" alt="" /></a> <a href="#"><img src="images/gallery_5.jpg" width="58" height="58" alt="" /></a> <a href="#"><img src="images/gallery_6.jpg" width="58" height="58" alt="" /></a> </div>
      <div class="clr"></div>
    </div>
    <div class="footer">
      <div class="clr"></div>
    </div>
  </div>
</div>
<div align=center></div>
</body>
</html>
