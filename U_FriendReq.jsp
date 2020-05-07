<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Page</title>
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
.style6 {color: #000000}
.style7 {font-size: 18px}
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
	  
	   <h2 align="left" class="style5">All Friend Requests And Give Responses:</h2>
             
          
        <div align="center">
          <table width="505" border="1.5" align="center"  cellpadding="0" cellspacing="0"  >
            <%@ include file="connect.jsp" %>
            <%
					String user=(String)application.getAttribute("uname");
						
						String s1,s2,s3,s4,s5,s6;
						int i=0,count=0;
						try 
						{
							String query="select * from req_res where (requestto='"+user+"')"; 	   					
							Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next())
					   		{
								i=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(3);
								s3=rs.getString(4);
								
									
									String query1="select * from user where username='"+s1+"' "; 
									Statement st1=connection.createStatement();
									ResultSet rs1=st1.executeQuery(query1);
									while ( rs1.next() )
									{
										int j=rs1.getInt(1);
								
							count++;
					%>
            <tr>
              <td width="185" rowspan="3" bgcolor="#CCFF66"><div class="style7" style="margin:10px 13px 10px 13px;" ><a class="#" id="img1" href="#" >
                  <input  name="image" type="image" src="images.jsp?id=<%=j%>&value=<%="user"%>&name=<%=s1%>" style="width:150px; height:150px;" />
              </a></div></td>
            </tr>
            <tr>
              <td  width="111" height="125" valign="middle" bgcolor="#CCFF66" style="color: #2c83b0;"><div align="left" class="style3 style4 style14 style6 style7" style="margin-left:20px;"> <strong>Name</strong></div></td>
              <td  width="104" height="125" valign="middle" bgcolor="#CCFF66" style="color:#000000;"><div align="left" class="style10 style6 style7" style="margin-left:20px;">
                <%out.println(s1);%>
              </div></td>
            </tr>
                
            <tr>
              <td height="38" align="left" valign="middle" bgcolor="#CCFF66" style="color: #2c83b0;"><div align="left " class="style3 style4 style14 style6 style7" style="margin-left:20px;">Status</div></td>
		      <%
			  if(s3.equalsIgnoreCase("waiting"))
			  {%>
              <td height="38" align="left" valign="middle" bgcolor="#CCFF66"><div align="left" class="style11 style6 style7" style="margin-left:20px;">
                  <a href="U_UpdateReq.jsp?id=<%=i%>&fname=<%=s1%>">Accept</a>
              </div></td>
				      <%
					  }else
					  {
					  %><td  width="95" height="37" align="left" valign="middle" bgcolor="#CCFF66"><div align="left" class="style11 style6 style7" style="margin-left:20px;"><%out.println(s3);}%></div></td>
            </tr>
                
            <%				}     		
					}
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					
					if(count==0)
				{out.print("There Is No Friend Requests For You");}
					%>
          </table>
        </div>
            <p align="left">&nbsp;</p>
			<p align="left"><a href="U_FrdSearchReq.jsp" class="style2">Back</a></p>
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
