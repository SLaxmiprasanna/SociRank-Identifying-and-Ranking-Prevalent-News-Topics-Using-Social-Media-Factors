<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Create Tweet News Page</title>
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
.style5 {color: #FF00FF}
.style7 {font-weight: bold; color: #000000; font-size: 14px; }
.style8 {font-size: 14px}
-->
</style>
<script language="javascript" type='text/javascript'>
function loadFileAsText()
{
	var fileToLoad = document.getElementById("file").files[0];

	var fileReader = new FileReader();
	fileReader.onload = function(fileLoadedEvent) 
	{
		var textFromFileLoaded = fileLoadedEvent.target.result;
		document.getElementById("textarea").value = textFromFileLoaded;
	};
	fileReader.readAsText(fileToLoad, "UTF-8");
}
</script>


<script language="javascript" type="text/javascript">
function valid()
{
var na3=document.s.t42.value;
if(na3=="")

{
alert("Please Select Description File");
document.s.t42.focus();
return false;
}
var na31=document.s.name.value;
if(na31=="")

{
alert("Please Enter Name");
document.s.name.focus();
return false;
}

var na4=document.s.uses.value;
if(na4=="")

{
alert("Please Enter Uses");
document.s.uses.focus();
return false;
}


}
</script>


</head>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
	<%@page import ="java.util.*"%>
<%@ include file="connect.jsp" %>
    <%@page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>
    <%@ page import="java.sql.*,java.lang.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream" %>
<%@ page import ="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
 <%@page import ="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
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
      <div class="mainbar">
	  
	  <h2 class="style5">Adding Tweet News Details...</h2>
	  <form name="s" action="U_CreateTweetNews1.jsp" method="post" onSubmit="return valid()"  ons target="_top">
                    <p>&nbsp;</p>
                    <table width="553" border="0" align="center">
                      
					  <tr>
                        <td width="286" height="37"><span class="style7"> Tweet Name :-</span></td>
                        <td width="356"><input required="required" type="text" name="name" id="name" /></td>
                      </tr>
					  
					   <tr>
                        <td width="286" height="37"><span class="style7"> Tweet Uses :-</span></td>
                        <td width="356"><textarea type="text" name="uses" id="uses" cols="50" rows="3"></textarea></td>
                      </tr>
					  
					  <tr>
                        <td width="286" height="37"><span class="style7">Select Description File :-</span></td>
                        <td width="356"><input required="required" type="file" name="t42" id="file"  onchange="loadFileAsText()" /></td>
                      </tr>
                      
                      <tr>
                        <td height="42" ><span class="style7">Description content :- </span></td>
                        
                        <td><textarea name="text" id="textarea" cols="50" rows="4"></textarea></td>
                      </tr>
                  
                      <tr>
                        <td><div align="right"><span class="style8"></span></div></td>
                        <td><input type="submit" name="Submit" value="Encrypt" /></td>
                      </tr>
                    </table>
        </form>      <p>&nbsp;</p>
       
	   <p align="right"><a href="U_Main.jsp">Back</a></p> 
	  
	  </div>
      <div class="sidebar">
        <div class="gadget">
          <h2>Sidebar Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu style4">
            <li><a href="U_Main.jsp">Home Page</a></li>
            <li><a href="U_Login.jsp"> Logout </a></li>
          </ul>
        </div>
      </div>
      <div class="clr"></div>
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
