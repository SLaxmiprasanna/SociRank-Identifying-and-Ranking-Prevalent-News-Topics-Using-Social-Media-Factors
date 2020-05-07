<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Admin User Profile Page</title>
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
.style5 {font-size: 14px}
.style6 {color: #FF00FF}
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
	  
	  <h2 class="style6">User <%=request.getParameter("uname")%>'s Profile...</h2>
          <div class="clr"></div>
          <p>&nbsp;</p>
          <table width="533" border="1.5" align="center"  cellpadding="0" cellspacing="0"  >
            <%@ include file="connect.jsp" %>
            
            <%
						String user=request.getParameter("uname");
						String type=request.getParameter("type");
						String name=request.getParameter("name");
						
						String s1,s2,s3,s4,s5,s6,s7,s8;
						int i=0;
						try 
						{
						   	String query="select * from user where username='"+user+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		if ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(4);
								s2=rs.getString(5);
								s3=rs.getString(9);
								s4=rs.getString(6);
								s5=rs.getString(7);
								s6=rs.getString(12);
								
					%>
            <tr>
              <td width="226" rowspan="8" ><div class="style7 style26" style="margin:10px 13px 10px 13px;" ><strong><a class="#" id="img1" href="#" >
                  <input  name="image" type="image" src="images.jsp?value=<%="user"%>&amp;id=<%=i%>" style="width:200px; height:200px;" />
              </a></strong></div></td>
            </tr>
            <tr>
              <td  width="141" height="37" valign="middle" style="color: #2c83b0;"><div align="left" class="style15 style42 style60 style61 style7 style8 style5" style="margin-left:10px;"><strong>E-Mail</strong></div></td>
              <td  width="158" valign="middle" style="color:#000000;"><div align="left" class="style40 style62 style4 style3 style9 style7 style5" style="margin-left:10px;"><strong>
                  <%out.println(s1);%>
              </strong></div></td>
            </tr>
            <tr>
              <td  width="141" height="40" valign="middle" style="color: #2c83b0;"><div align="left" class="style15 style42 style60 style61 style7 style8 style5" style="margin-left:10px;"><strong>Mobile</strong></div></td>
              <td  width="158" valign="middle" ><div align="left" class="style40 style62 style4 style3 style9 style7 style5" style="margin-left:10px;"><strong>
                  <%out.println(s2);%>
              </strong></div></td>
            </tr>
            <tr>
              <td height="43" align="left" valign="middle" style="color: #2c83b0;"><div align="left" class="style15 style42 style60 style61 style7 style8 style5" style="margin-left:10px;"><strong>Location</strong></div></td>
              <td align="left" valign="middle"><div align="left" class="style40 style62 style4 style3 style9 style7 style5" style="margin-left:10px;"><strong>
                  <%out.println(s3);%>
              </strong></div></td>
            </tr>
            <tr>
              <td  width="141" height="43" align="left" valign="middle" style="color: #2c83b0;"><div align="left" class="style15 style42 style60 style61 style7 style8 style5" style="margin-left:10px;"><strong>Date of Birth</strong></div></td>
              <td  width="158" align="left" valign="middle"><div align="left" class="style40 style62 style4 style3 style9 style7 style5" style="margin-left:10px;"><strong>
                  <%out.println(s4);%>
              </strong></div></td>
            </tr>
            <tr>
              <td  width="141" height="47" align="left" valign="middle" style="color: #2c83b0;"><div align="left" class="style15 style42 style60 style61 style7 style8 style5" style="margin-left:10px;"><strong>Gender</strong></div></td>
              <td  width="158" align="left" valign="middle" ><div align="left" class="style40 style62 style4 style3 style7 style9 style5" style="margin-left:10px;"><strong>
                  <%out.println(s5);%>
              </strong></div></td>
            </tr>
			
			
            <%
						}
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e);
					}
					%>
          </table>
		  
		   <%String id=request.getParameter("id");%>
		  
		 	 <h2 align="right">&nbsp;</h2>
			<% 
			if(type.equalsIgnoreCase("user1")){%>
            <h2 align="right"><a href="A_AllUserTweets.jsp" class="style4">Back</a></h2>
			<%}
			else if(type.equalsIgnoreCase("alltweets")){%>
            <h2 align="right"><a href="A_TweetDetails.jsp?id=<%=id%>&type=<%=type%>&tname=<%=name%>" class="style4">Back</a></h2>
			<%}
			else if(type.equalsIgnoreCase("namecluster")){%>
            <h2 align="right"><a href="A_ClustersByUname.jsp" class="style4">Back</a></h2>
			<%}
			else if(type.equalsIgnoreCase("cluster")){%>
            <h2 align="right"><a href="A_TweetDetails.jsp?id=<%=id%>&type=<%=type%>&tname=<%=name%>" class="style4">Back</a></h2>
			<%}
			else if(type.equalsIgnoreCase("clusters")){%>
            <h2 align="right"><a href="A_Re-Tweets.jsp?id=<%=id%>&type=<%=type%>" class="style4">Back</a></h2>
			<%}
			else if(type.equalsIgnoreCase("user2")){%>
            <h2 align="right"><a href="A_TweetFreqCount.jsp" class="style4">Back</a></h2>
			<%}
			else if(type.equalsIgnoreCase("allfrqtweets")){%>
            <h2 align="right"><a href="A_TweetDetails.jsp?id=<%=id%>&type=<%=type%>&tname=<%=name%>" class="style4">Back</a></h2>
			<%}
			else if(type.equalsIgnoreCase("relevant")){%>
            <h2 align="right"><a href="A_TweetDetails.jsp?id=<%=id%>&type=<%=type%>&tname=<%=name%>" class="style4">Back</a></h2>
			<%}
			else if(type.equalsIgnoreCase("user3")){%>
            <h2 align="right"><a href="A_Relevent.jsp" class="style4">Back</a></h2>
			<%}
			else if(type.equalsIgnoreCase("user4")){%>
            <h2 align="right"><a href="A_RelevRetweets.jsp?id=<%=id%>&type=<%=type%>" class="style4">Back</a></h2>
			<%}
			else if(type.equalsIgnoreCase("user5")){%>
            <h2 align="right"><a href="A_OutlierTweets.jsp?id=<%=id%>&type=<%=type%>" class="style4">Back</a></h2>
			<%}
			else if(type.equalsIgnoreCase("outlier")){%>
            <h2 align="right"><a href="A_TweetDetails.jsp?id=<%=id%>&type=<%=type%>&tname=<%=name%>" class="style4">Back</a></h2>
			<%}
			else if(type.equalsIgnoreCase("user6")){%>
            <h2 align="right"><a href="A_OutlierRetweets.jsp?id=<%=id%>&type=<%=type%>" class="style4">Back</a></h2>
			<%}
			else if(type.equalsIgnoreCase("frequency")){%>
            <h2 align="right"><a href="A_Re-Tweets.jsp?id=<%=id%>&type=<%=type%>" class="style4">Back</a></h2>
			<%}
			
			

			%> 
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
