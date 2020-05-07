<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Admin Clusters the tweets By Tweet Name </title>
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
.style6 {color: #0000FF}
.style8 {color: #FFFFFF; font-weight: bold; }
-->
</style>
</head>

<%@ include file="connect.jsp" %>
            <%@ page import="java.util.*"%>
            <%@ page import="java.text.*"%>
            <%@ page import="java.util.Date"%>
            <%@ page import="java.sql.*"%>
            <%@ page import="com.oreilly.servlet.*,java.lang.*,java.text.SimpleDateFormat,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
            <%@ page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec"%>
            <%@ page import="org.bouncycastle.util.encoders.Base64"%>
            <%@ page import="java.util.Random,java.io.PrintStream, java.io.FileOutputStream, java.io.FileInputStream, java.security.DigestInputStream, java.math.BigInteger, java.security.MessageDigest, java.io.BufferedInputStream" %>

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
          <li class="active"><a href="A_Login.jsp">Admin</a></li>
          <li><a href="U_Login.jsp">End User</a></li>
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
	  
	  <h2 class="style5">All Tweeted Details In Clusters Form...</h2>
	  
	  	<%
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="";
	int i=0,count=0,k=0;
	try
	{
			String sql3="select distinct uname from tweets";
			Statement st3=connection.createStatement();
			  ResultSet rs3=st3.executeQuery(sql3);
			while ( rs3.next() )
			   {
			   s1=rs3.getString(1);
			 
			%>
	<table width="572" border="1">
				  <tr bgcolor="#CCCCCC">
				    <td colspan="6" ><h2 class="style6" >Tweeter Name :<a href="A_UserProfile.jsp?uname=<%=s1%>&type=<%="namecluster"%>"> <%=s1%> </a> </h2></td>
			      </tr>
				  <tr bgcolor="#999999">
				  
				  <td width="174" ><div align="left" class="style8" >
						<div align="center"> Tweet Name </div>
					</div></td>
				  
				  <td width="174" ><div align="left" class="style8" >
						<div align="center">Tweet Image </div>
					</div></td>
					
					<td width="174" ><div align="left" class="style8" >
						<div align="center"> Tweet Rank </div>
					</div></td>
					
					<td width="174" ><div align="left" class="style8" >
						<div align="center"> Tweet Rate </div>
					</div></td>
					
					<td width="174" ><div align="left" class="style8" >
						<div align="center"> Tweet Deails </div>
					</div></td>
					
					<td width="174" ><div align="left" class="style8" >
						<div align="center"> Re-Tweets Details </div>
					</div></td>
				  </tr>
				 
				  <%

				  String query="select * from tweets where uname='"+s1+"' "; 
				   Statement st=connection.createStatement();
				   ResultSet rs=st.executeQuery(query);
				while ( rs.next() )
			   {
					i=rs.getInt(1);
					s2=rs.getString(3);
					s3=rs.getString(8);
					s4=rs.getString(2);
					k=rs.getInt(9);
						
							count++;
			   
					 %>
							  <tr>
							  <td width="174" height="0" bgcolor="#CCFF00"  style="color:#000000;"><div align="center" ><strong> <%=s4%> </strong></div></td>
							  <td width="146" height="0" bgcolor="#CCFF00"  style="color:#000000;"><div align="center" ><strong>
						      <input  name="image" type="image" src="images.jsp?value=<%="tweet"%>&id=<%=i%>" style="width:50px; height:50px;" />
							  </strong></div></td>
							  <td width="174" height="0" bgcolor="#CCFF00"  style="color:#000000;"><div align="center" ><strong> <%=s3%> </strong></div></td>
							  <td width="174" height="0" bgcolor="#CCFF00"  style="color:#000000;"><div align="center" ><strong>  
						              <% 
		  
	    if(k==3)
	    {
	    	%>
   	                                  <input required name="image" type="image" src="Gallery/1.png" width="30" height="30" >
   	                                  <%
	    }
	    if(k>3 && k<=6)
	    {
	    	%>
   	                                  <input required  name="image" type="image" src="Gallery/2.png" width="80" height="30" >
   	                                  <%
	    }
	    if(k>6 && k<=9)
	    {
	    	%>
   	                                  <input required name="image" type="image" src="Gallery/3.png" width="100" height="30" >
   	                                  <%
	    }
	    if(k>9 && k<=12)
	    {
	    	%>
   	                                  <input required name="image" type="image" src="Gallery/4.png" width="120" height="30" >
   	                                  <%
	    }
	    if(k>12 && k<=15)
	    {
	    	%>
   	                                  <input required name="image" type="image" src="Gallery/5.png" width="140" height="30" >
   	                                  <%
	    }
	    if(k>15 && k<=30)
	    {
	    	%>
   	                                  <input required  name="image" type="image" src="Gallery/6.png" width="170" height="30" >
   	                                  <%
	    }
	    %>
					            </strong></div></td>
								  
						<td width="174" height="0" bgcolor="#CCFF00"  style="color:#000000;"><div align="center" ><strong> <a href="A_TweetDetails.jsp?id=<%=i%>&tname=<%=s1%>&type=<%="cluster"%>"> Tweet Details </a> </strong></div></td>
						<td width="174" height="0" bgcolor="#CCFF00"  style="color:#000000;"><div align="center" ><strong> <a href="A_Re-Tweets.jsp?id=<%=i%>&type=<%="clusters"%>"> Re-Tweets Details </a> </strong></div></td>
							  </tr>
							
	    <%
					 }
			
			       %></table> 
	<p>&nbsp;</p>
				<%
			}
         connection.close();
		 }
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
	%></table><p>&nbsp;</p>
				<%if(count==0){out.print("There Is no users Added Tweets");}%>	
		<p align="right"><a href="A_Main.jsp" class="style2">Back</a></p>
		
		
	  </div>
      <div class="sidebar">
        <div class="gadget">
          <h2>Sidebar Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu style4">
            <li><a href="A_Main.jsp">Home</a></li>
            <li><a href="A_Login.jsp">Logout</a></li>
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
