<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Re-Tweet Details Page</title>
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
.style5 {font-weight: bold}
.style6 {font-weight: bold}
.style7 {color: #0000FF}
.style8 {color: #000000}
.style9 {font-size: 18px; color: #FF0000; }
.style10 {color: #FF00FF}
-->
</style>
<script language="javascript" type="text/javascript">      
function valid()
{
var na3=document.s.com.value;
if(na3=="")

{
alert("Please Write comment");
document.s.com.focus();
return false;
}
else
{

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
      <div class="mainbar">
	  
	   <h2 class="style10">Tweet <%= request.getParameter("tname")%> Details...</h2>
                <p class="style6">&nbsp;</p>
                <p>
				
			<%@ include file="connect.jsp" %>
            <%@ page import="java.util.*"%>
            <%@ page import="java.text.*"%>
            <%@ page import="java.util.Date"%>
            <%@ page import="java.sql.*"%>
            <%@ page import="com.oreilly.servlet.*,java.lang.*,java.text.SimpleDateFormat,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
            <%@ page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec"%>
            <%@ page import="org.bouncycastle.util.encoders.Base64"%>
            <%@ page import="java.util.Random,java.io.PrintStream, java.io.FileOutputStream, java.io.FileInputStream, java.security.DigestInputStream, java.math.BigInteger, java.security.MessageDigest, java.io.BufferedInputStream" %>
    <%
          
		   String type=request.getParameter("type");
		   int one= Integer.parseInt(request.getParameter("id"));
           String s0="",s1="",Keyword="",s2="",s3="",s4="",s5="",s7="",s8="";
	       int i=0,rank=0,k=0,rank1=0;
  try 
	{	
  String str="select * from tweets where id='"+one+"' "; 
  Statement st=connection.createStatement();
   ResultSet rs=st.executeQuery(str);
   	   
	if ( rs.next() )
	   {
		i  = rs.getInt(1);
		s0 = rs.getString(2);
		s1 = rs.getString(3);
		s2 = rs.getString(4);
		s3 = rs.getString(5);
		s4 = rs.getString(6);
		rank=rs.getInt(8);
		k=rs.getInt(9);
		
	
					String keys = "ef50a0ef2c3e3a5f";
					byte[] keyValue = keys.getBytes();
					Key key = new SecretKeySpec(keyValue, "AES");
					Cipher c = Cipher.getInstance("AES");
					c.init(Cipher.DECRYPT_MODE, key);
					
					String descr = new String(Base64.decode(s3.getBytes()));
									
				
									
	
%>
          </p>
          
 <table border="1" align="center" cellpadding="0" cellspacing="0"  width="600" >
				 				<tr >
								    <td width="148" rowspan="9" bgcolor="#CCFF00" ><div class="style22 style4 style5" style="margin:10px 13px 10px 13px;" > 
									    <div align="center"><a class="#" id="img1" href="#" >
		                        <input  name="image" type="image" src="images.jsp?value=<%="tweet"%>&id=<%=i%>" style="width:120px; height:120px;"  />
								                                  </a> </div>
								  </div></td>
								  	<td width="128" height="27" bgcolor="#CCFF00" >
								  <div align="center" class="style10 style7"><strong>Uploader Name </strong></div></td>
							      <td width="316" bgcolor="#CCFF00"><div align="center" class="style8"><strong> <%= s1%> </strong> </div></td>
		  						<tr/>
									<td width="128" height="27" bgcolor="#CCFF00" >
								  <div align="center" class="style10 style7"><strong>Tweet Name </strong></div></td>
								    <td bgcolor="#CCFF00"><div align="center" class="style8"><strong><%= s0%></strong></div></td>
				    
				    
				    			<tr>
									<td width="128" height="27" bgcolor="#CCFF00">
						  		  <div align="center" class="style10 style7"><strong>Tweet Description </strong></div></td>
								    <td bgcolor="#CCFF00"><div align="center" class="style8"><strong><%= descr%></strong></div></td>
								</tr>
								<tr>
									<td width="128" height="27" bgcolor="#CCFF00">
								  <div align="center" class="style10 style7"><strong>Tweet Uses </strong></div></td>
								    <td bgcolor="#CCFF00"><div align="center" class="style8"><strong><%= s2%></strong></div></td>
				    			</tr>
								<tr>
										<td width="128" height="27" bgcolor="#CCFF00">
								  <div align="center" class="style10 style7"><strong>Uploaded Date </strong></div></td>
								        <td bgcolor="#CCFF00"><div align="center" class="style8"><strong><%= s4%></strong></div></td>
								</tr>
								<tr>
								<tr>
										<td width="128" height="27" bgcolor="#CCFF00">
								  <div align="center" class="style10 style7"><strong>Tweet Rank </strong></div></td>
								        <td bgcolor="#CCFF00"><div align="center" class="style8"><strong><%= rank%></strong></div></td>
								</tr>
								<tr>
										<td width="128" height="27" bgcolor="#CCFF00">
								  <div align="center" class="style10 style7"><strong>Tweet Rate </strong></div></td>
								        <td bgcolor="#CCFF00"><div align="center" class="style8"><strong>  
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
								</tr>
								
						<%
						}
						
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
		</table>
			<p>&nbsp;</p>
		<form name="s" action="U_Re-TweetNewsIns.jsp?name=<%=s0%>&id=<%=one%>&type=<%=type%>&rank=<%=rank%>" method="post"  onSubmit="return valid()"  ons target="_top">
    
	<table width="600" border="0" align="center"  cellpadding="0" cellspacing="0"  style="border-collapse: collapse; display:inline; margin:10px 10px 10px 10px; font-family:Verdana, Arial, Helvetica, sans-serif; font-size:14px;">
					<tr><td></td><td></td>
 						<td   width="200" align="left" valign="middle" height="45" style="color: #2c83b0;"><div align="right" class="style9"  style="margin-left:20px;">Write Re-Tweet </div></td>

						<td  width="100" align="left" valign="middle" height="45" style="color: #2c83b0;"><div align="left"><div align="left" style="margin-left:20px;"><textarea name="com" rows="3" cols="23"></textarea></div></td>
					
					  <td height="45" colspan="2" id="learn_more" align="center"  style="color:#003399;"><span style="font-size: 18px">
				      <input type="submit" value="Add Re-Tweet" style="width:100px; height:35px; background-color:#999999; color:#003399;"/>
					    </span></td>
					</tr>
          </table>


	 </form>
		
				 <h2 align="right">&nbsp;</h2>
			<% 
			if(type.equalsIgnoreCase("allfrdstweets")){%>
            <h2 align="right"><a href="U_TweetDetails.jsp?type=<%=type%>&id=<%=one%>&rank=<%=rank%>&tname=<%=s0%>" class="style4">Back</a></h2>
			<%}
			else if(type.equalsIgnoreCase("frdsTweetsouter")){%>
            <h2 align="right"><a href="U_AllFrdsTweets.jsp" class="style4">Back</a></h2>
			<%}
			else if(type.equalsIgnoreCase("allMyTweets")){%>
            <h2 align="right"><a href="U_AllTweets.jsp" class="style4">Back</a></h2>
			<%}
			else if(type.equalsIgnoreCase("search")){%>
            <h2 align="right"><a href="U_TweetDetails.jsp?type=<%=type%>&id=<%=one%>&rank=<%=rank%>&tname=<%=s0%>" class="style4">Back</a></h2>
			<%}
			else if(type.equalsIgnoreCase("allUserTweets")){%>
            <h2 align="right"><a href="U_AllUserTweets.jsp" class="style4">Back</a></h2>
			<%}
			

			%>
	  
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
