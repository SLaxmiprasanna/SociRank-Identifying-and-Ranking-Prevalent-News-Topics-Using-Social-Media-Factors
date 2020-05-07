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
.style9 {color: #000000}
.style10 {color: #FF00FF}
-->
</style>
</head>
<%@ page language="java" contentType="text/html; charset=utf-8"
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
	  <%
	  	
		String name=request.getParameter("name");
		String uses=request.getParameter("uses");
		String descr=request.getParameter("text");
	  	
		String keys = "ef50a0ef2c3e3a5f";
		byte[] keyValue = keys.getBytes();
		Key key = new SecretKeySpec(keyValue, "AES");
		Cipher c = Cipher.getInstance("AES");
		c.init(Cipher.ENCRYPT_MODE, key);
		String descr1 = new String(Base64.encode(descr.getBytes()));
		
		
	  %>
	   <h2 class="style5 style10">Adding Tweet Details...</h2>
	  <form name="s" action="U_CreateTweetNews2.jsp" method="post" enctype="multipart/form-data" onSubmit="return valid()"  ons target="_top">
                    <p>&nbsp;</p>
                    <table width="506" border="0" align="center">
                      
					  <tr>
                        <td width="173" height="37"><span class="style9 style7"><strong> Tweet Name :-</strong></span></td>
                        <td width="323"><input required="required" type="text" name="name" id="name" value="<%=name%>" /></td>
                      </tr>
					  
					   <tr>
                        <td width="173" height="37"><span class="style9 style7"><strong> Tweet Uses :-</strong></span></td>
                        <td width="323"><textarea required="required" type="text" name="uses" id="uses" cols="50" rows="3"><%=uses%></textarea></td>
                      </tr>
					  
                      <tr>
                        <td height="42" ><span class="style9 style7"><strong>Description content :- </strong></span></td>
                        
                        <td><textarea name="text" id="textarea" cols="50" rows="4"><%=descr1%></textarea></td>
                      </tr>
                  
				    <tr>
            		    <td><span class="style33"> <span class="style9">
            		      <label for="label"><strong>Select Image <strong>:-</strong> </strong></label>
          		      </span> </span></td>
            		    <td><input name="pic" type="file" class="file " id="pic" required />                </td>
              		</tr>
				  
				  
                      <tr>
                        <td><div align="right"></div></td>
                        <td><input type="submit" name="Submit" value="Upload Tweeet" /></td>
                      </tr>
                    </table>
        </form>      <p>&nbsp;</p>
       
	   <p align="right"><a href="U_CreateTweetNews.jsp">Back</a></p> 
	  
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
