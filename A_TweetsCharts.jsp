<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Admin All Tweets Charts by Date </title>
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
.style7 {
	color: #FF00FF;
	font-weight: bold;
}
-->
</style>
</head>
<%@ include file="connect.jsp"%>
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
	  
	   <h2 class="style7">All Re-Tweets For Tweets Daily Counts In Chart...</h2>
          <div class="clr"></div>
                  <p>&nbsp;</p>
                 <table width="572" border="1">
				  <tr bgcolor="#00FFFF">
					<td width="146" ><div align="left" class="style4" >
						<div align="center">Tweet Name</div>
					</div></td>
					<td width="128"><div align="left" class="style4">
						<div align="center">Tweets Count Chart</div>
					</div></td>
				  </tr>
			<%
			int count=0;
			String s11="",s21="",s31="",s41="";
				String query2="select distinct tname from re_tweet order by tname"; 
				Statement st2=connection.createStatement();
				ResultSet rs2=st2.executeQuery(query2);
				while ( rs2.next() )
				  {
					s11=rs2.getString(1);
						
						count++;
						%>
						<tr>
								<td width="174" height="0"  style="color:#000000;"><div align="center" class="style4"> <%=s11%></div></td>
								<td width="128" height="0"  style="color:#000000;"><div align="center" class="style4"> <a href="A_TweetsCharts1.jsp?tname=<%=s11%> ">Counts In Chart</a> </div></td>
			  </tr>
							
				<%
					 }
			       %></table> 
				   
				   <%if(count==0){out.print("No Re-Tweets Found For Tweets");}%>
                  <p align="right"><a href="A_Main.jsp">Back</a></p>
	  
	  
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
