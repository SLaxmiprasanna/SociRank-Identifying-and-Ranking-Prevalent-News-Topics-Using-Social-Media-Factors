<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User All Friends Page</title>
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
.style9 {color: #FF00FF}
.style10 {font-weight: bold; color: #000000; font-size: 16px; }
.style11 {color: #000000}
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
	  
	   <h2 class="style9">All My Friends...</h2>
	   <p>&nbsp;</p>
		  
	     <table width="600" border="3"  cellpadding="0" cellspacing="0" bgcolor="#FFFF00"  style="border-collapse: collapse; margin:10px 10px 10px 10px; font-family:Verdana, Arial, Helvetica, sans-serif; font-size:14px;">
					<tr bgcolor="#993366">
					  <td  width="120" height="31" align="center" valign="baseline" style="color: #2c83b0;"><div align="center"><b>User Image</b></div></td>
					  <td  width="120" height="31" align="center" valign="baseline" style="color: #2c83b0;"><div align="center"><b>Username</b></div></td>
  						
					  <td  width="100" height="31" align="center" valign="baseline" style="color: #2c83b0;"><div align="center"><b>Route Map</b></div></td>
					</tr>
								
<%@ include file="connect.jsp" %>
					<%String user=(String )application.getAttribute("uname");
						String s1="",s2="",s3="";
						int i=0,count=0,j=0;
						try 
						{
				String sql1="select * from req_res where (requestfrom='"+user+"'||requestto='"+user+"')&& status='Accepted' ";
								Statement st2=connection.createStatement();
								ResultSet rs2=st2.executeQuery(sql1);
					   			while( rs2.next() )
								{
								i=rs2.getInt(1);
								String rf=rs2.getString(2);
								String rt=rs2.getString(3);
								
								count++;
								
								if(rf.equalsIgnoreCase(user))
								{
								
							String query1="select * from user where username='"+rt+"'"; 
						   	Statement st1=connection.createStatement();
						   	ResultSet rs1=st1.executeQuery(query1);
					   		if ( rs1.next() )
					   		{
								j=rs1.getInt(1);
								s1=rs1.getString(9);
								
					%>
					<tr bgcolor="#CCFF33">
					<td  width="100" height="40"align="center" valign="middle" style="color:#000000;">
							<input  name="image" type="image" src="images.jsp?value=<%="user"%>&id=<%=j%>" style="width:50px; height:50px;" /> </td>
						<td  width="120" height="40" align="center" valign="middle" style="color:#000000;"><a href="U_UserProfile.jsp?uname=<%=rt%>&type=<%="user1"%>" class="style11" ><strong>
		                <%out.println(rt);%>
					    </strong> </a> </td>
						<td  width="100" height="40"align="center" valign="middle" style="color:#000000;">
							<a href="U_RouteMap.jsp?loc=<%=s1%>&name=<%=rt%>" class="style11" > Route Map </a> </td>
						<%
						}//application.setAttribute("name",rt);
						}
						else 
						{
						
							String query1="select * from user where username='"+rf+"'"; 
						   	Statement st1=connection.createStatement();
						   	ResultSet rs1=st1.executeQuery(query1);
					   		if ( rs1.next() )
					   		{
								j=rs1.getInt(1);
								s1=rs1.getString(9);
						
						%>	
						<td  width="100" height="40"align="center" valign="middle" style="color:#000000;">
					  <input  name="image" type="image" class="style11" style="width:50px; height:50px;" src="images.jsp?value=<%="user"%>&id=<%=j%>" /> </td>
						<td  width="100" height="40" align="center" valign="middle"><a href="U_UserProfile.jsp?uname=<%=rf%>&type=<%="user1"%>" class="style11" ><strong>
		                <%out.println(rf);%>
					    </strong> </a> </td>
						<td  width="100" height="40"align="center" valign="middle" style="color:#000000;">
							<a href="U_RouteMap.jsp?loc=<%=s1%>&name=<%=rf%>" class="style11"> Route Map </a> </td>
						<%
						}//application.setAttribute("name",rf);
						}
						
						%>
		  </tr>
					<%
						}
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					
					if(count==0){out.print("You Have No Friends");}
					
					%>
		</table>
	  <h2>&nbsp;</h2>
			<p align="right"><a href="U_Main.jsp" class="style2">Back</a></p>
			
		<h3 align="center"><span class="style10">View All My Friends Place Details In Multiple Marker </span><a href="U_FrdsMaps.jsp">Click Here</a></h3>
	  
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
