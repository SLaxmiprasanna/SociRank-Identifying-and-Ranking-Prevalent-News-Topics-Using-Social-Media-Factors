<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Admin Authorized user Page</title>
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
.style6 {color: #FF0000}
.style7 {color: #FF00FF}
.style10 {color: #000000; font-weight: bold; }
.style11 {color: #000000; }
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
	   <div class="mainbar">
	   
	   <h2 class="style7">All Authorized Users And Authoze Users </h2>
	   
        <table width="913" align="center"  cellpadding="0" cellspacing="0">
            <tr>
              <td width="51" height="37" valign="middle" bgcolor="#00FFFF" style="color: #2c83b0;"><div align="center" class="style27 style105 style65 style2 style6"><em><strong>ID</strong></em></div></td>
              <td width="157" valign="middle" bgcolor="#00FFFF" style="color: #2c83b0;"><div align="center" class="style27 style105 style65 style2 style6"><em><strong>User Image</strong></em></div></td>
              <td width="121" valign="middle" bgcolor="#00FFFF" style="color: #2c83b0;"><div align="center" class="style27 style105 style65 style2 style6"><em><strong>User Name</strong></em></div></td>
              <td width="142" valign="middle" bgcolor="#00FFFF" style="color: #2c83b0;"><div align="center" class="style27 style105 style65 style2 style6"><em><strong>Email</strong></em></div></td>
              <td width="135" valign="middle" bgcolor="#00FFFF" style="color: #2c83b0;"><div align="center" class="style27 style105 style65 style2 style6"><em><strong>Mobile</strong></em></div></td>
              <td width="121" valign="middle" bgcolor="#00FFFF" style="color: #2c83b0;"><div align="center" class="style27 style105 style65 style2 style6"><em><strong>Location</strong></em></div></td>
              <td width="108" valign="middle" bgcolor="#00FFFF" style="color: #2c83b0;"><div align="center" class="style27 style105 style65 style2 style6"><em><strong>Status</strong></em></div></td>
			  <td width="108" valign="middle" bgcolor="#00FFFF" style="color: #2c83b0;"><div align="center" class="style27 style105 style65 style2 style6"><em><strong>Map</strong></em></div></td>            
			</tr>
            <%@ include file="connect.jsp" %>
            <%
					  
						String s1,s2,s3,s4,s5,s6,s7;
						int i=0;
						try 
						{
						   	String query="select * from user"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(4);
								s5=rs.getString(5);
								s3=rs.getString("location");
								s4=rs.getString(12);
								
					%>
            <tr bgcolor="#99CCFF">
              <td height="122" align="center"  valign="middle" bgcolor="#00FFCC"><div align="center" class="style10" >
                  <%out.println(i);%>
              </div></td>
              <td  rowspan="1" align="center" valign="middle" bgcolor="#00FFCC" ><div class="style10" " style="margin:10px 13px 10px 13px;" >
                  <input  name="image" type="image" src="images.jsp?value=<%="user"%>&id=<%=i%>" style="width:120px; height:100px;" />
              </div></td>
              <td  align="center"  valign="middle" bgcolor="#00FFCC"><div align="center" class="style10">
                  <%out.println(s1);%>
              </div></td>
              <td  align="center"  valign="middle" bgcolor="#00FFCC"><div align="center" class="style10">
                  <%out.println(s2);%>
              </div></td>
              <td align="center"  valign="middle" bgcolor="#00FFCC"><div align="center" class="style10" >
                  <%out.println(s5);%>
              </div></td>
              <td  align="center"  valign="middle" bgcolor="#00FFCC"><div align="center" class="style10">
                  <%out.println(s3);%>
              </div></td>
               <%
						if(s4.equalsIgnoreCase("waiting"))
						{
						
						%>
              <td align="center" valign="middle" bgcolor="#00FFCC"  style="color:#000000;"><div align="center" class="style11">
                  <div align="center"><a href="Authentication.jsp?value=<%="userstatus"%>&amp;id=<%=i%>">waiting</a></div>
              </div></td>
              <%
						}
						else
						{
						%>
              <td width="76" align="center"  valign="middle" bgcolor="#00FFCC"><div align="center" class="style11">
                  <%out.println(s4);%>
              </div></td>
              <%
						}
						
						%>
		
						
						
						<td width="76" align="center"  valign="middle" bgcolor="#00FFCC"><div align="center">
            <div align="center" class="style11"><a href="A_GoogleMap.jsp?address1=<%=s3%>&username1=<%=s1%>">View Map </a></div></td>
        </td>
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
	<h3 align="center">View All Users Place Details In Multiple Marker <a href="A_UserMaps.jsp">Click Here</a></h3>
	  <p align="right"><a href="A_Main.jsp">Back</a></p>
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
