<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Admin All Re-Tweets Details</title>
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
-->
</style>
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
	  
	  <h2 align="center" class="style5">All User Relevant Re-Tweets On The Tweet </h2>
	
		<p><table width="547" border="1.5" align="center"  cellpadding="0" cellspacing="0" >
			<tr bgcolor="#00FF99"><td width="127" height="44" valign="middle" style="color: #2c83b0;">
			<div align="left" class="style5 style14 style7 style6" style="	margin-left:20px;"><strong><strong>Image</strong></strong></div></td>
			<td width="80" height="44" valign="middle" style="color: #2c83b0;">
			<div align="left" class="style7 style14 style5 style6" style="margin-left:20px;"><strong> Re-Tweeted User</strong></div></td>
			<td width="80" height="44" valign="middle" style="color: #2c83b0;">
			<div align="left" class="style7 style14 style5 style6" style="margin-left:20px;"><strong> Re-Tweet </strong></div></td>
			<td width="80" height="44" valign="middle" style="color: #2c83b0;">
			<div align="left" class="style7 style14 style5 style6" style="margin-left:20px;"><strong> Re-Tweeted Date </strong></div></td>
			</tr>
			
<%@ include file="connect.jsp" %>
<%@ page import="org.bouncycastle.util.encoders.Base64"%>

					<%
						
					   int one= Integer.parseInt(request.getParameter("id"));	
						String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13;
						int i=0,count=0,count1=0;
						try 
						{   
							   
						   	String query="select * from re_tweet where tid='"+one+"' "; 
						   	Statement st1=connection.createStatement();
						   	ResultSet rs1=st1.executeQuery(query);
					   		while ( rs1.next() )
					   		{
								int j=rs1.getInt(1);
								String tname=rs1.getString(2);
								String c_user=rs1.getString(3);
								String dt=rs1.getString(5);
							    String retweet=rs1.getString("re_tweet");
								
								count1=0;
							String query2="select * from re_tweet where re_tweet='"+retweet+"' and tid='"+one+"' and id!='"+j+"' "; 
						   	Statement st2=connection.createStatement();
						   	ResultSet rs2=st2.executeQuery(query2);
					   		while ( rs2.next() )
					   		{
								count1++;}
								
							if(count1!=0){	
								count++;
						
					%>
		<tr>
			<td width="50" bgcolor="#CCFF00">
			<div class="style8 style2" style="margin:10px 13px 10px 13px;" ><a class="#" id="img1" href="#" >
			 <input  name="image" type="image" src="images.jsp?value=<%="tweet"%>&id=<%=one%>" style="width:50px; height:50px;"  />
		    </a></div>	</td>
			
			
			<%if(c_user.equalsIgnoreCase("Admin")){%>
			   <td  width="182" height="44" valign="middle" bgcolor="#CCFF00" style="color:#000000;">
			   <div align="left" class="style10 style7 style9 style2" style="margin-left:20px;"><strong><em> <%out.println(c_user);%> 
 		    </em></strong></div></td>
			
			<%}else{%>
			
			 <td  width="182" height="44" valign="middle" bgcolor="#CCFF00" style="color:#000000;">
			   <div align="left" class="style10 style7 style9 style2" style="margin-left:20px;"><strong><em><a href="A_UserProfile.jsp?uname=<%=c_user%>&id=<%=one%>"> <%out.println(c_user);%> 
		    </a></em></strong></div></td>
			<%}%>
			
			
			    <td  width="182" height="44" valign="middle" bgcolor="#CCFF00" style="color:#000000;">
				<div align="left" class="style10 style7 style9 style2" style="margin-left:20px;"><strong><em>
		        <%out.println(retweet);%>
			</em></strong></div></td>
				 <td  width="182" height="44" valign="middle" bgcolor="#CCFF00" style="color:#000000;">
				<div align="left" class="style10 style7 style9 style2" style="margin-left:20px;"><strong><em>
		        <%out.println(dt);%>
			</em></strong></div></td>
</tr>
<%					
					}}
					
						if(count==0){
										out.print("No one User Have frequency Re-Tweeted On This Tweet");
								}
						
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>


			</table>
			
			
            <h2 align="right"><a href="A_TweetFreqCount.jsp" class="style4">Back</a></h2>
		
	  
	  
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
