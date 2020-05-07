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
	   <h2 class="style5">Search Results:</h2>
            
          <table width="500" border="1.5" align="center"  cellpadding="0" cellspacing="0"  >
        <%@ include file="connect.jsp" %>
		<%@ page import="java.util.Date,java.lang.*" %>
		<%@ page import="java.text.SimpleDateFormat, java.util.Date"%>
		<%
    
						String s1,s2,s3,s4;
						int i=0,count=0;
						String keyword=request.getParameter("keyword");
						String user=(String)application.getAttribute("uname");
       
						try 
						{
							String status1=null;
						   	String status=null;
						   	String query="select * from user where username LIKE '%"+keyword+"%'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while(rs.next()==true)
					   		{
								i=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(4);
								s3=rs.getString(5);
								
								status ="request";
								if(s1.equalsIgnoreCase(user)){}
								else
								{
									count++;
									
									String query7="select * from req_res where (requestfrom='"+user+"'||requestto='"+user+"')" ; 
									Statement st7=connection.createStatement();
									ResultSet rs7=st7.executeQuery(query7);
									while(rs7.next())
									{
										String rfrom =rs7.getString(2);
										String rto =rs7.getString(3);
										status1 = rs7.getString(4);
										
										if((!status1.equalsIgnoreCase("Accepted"))&&(rfrom.equalsIgnoreCase(s1)||(rto.equalsIgnoreCase(s1))))
										{
											status="sent";
										}
										else if((status1.equalsIgnoreCase("Accepted"))&&(rfrom.equalsIgnoreCase(s1)||(rto.equalsIgnoreCase(s1))))
										{
											status="Already Friend";
										}
										
									}	
								
					%>
          
			<tr>
					<td width="129" rowspan="3" valign="middle" >
						<div class="style7" style="margin:10px 13px 10px 13px;" ><a class="#" id="img1" href="#" >
						 <input  name="image" type="image" src="images.jsp?id=<%=i%>&value=<%="user"%>" style="width:100px; height:100px;"  />
			  </a></div>					</td>
		  </tr>
             
             <tr> <td width="105" valign="middle" height="80" style="color:#000000;"><div align="center" class="style4 style2">Name:</div></td>
			 <td width="90" valign="middle" height="80" style="color:#000000;">&nbsp;&nbsp;
              <div align="center" class="style4"> <%out.println(s1);%> </div></td></tr>
				   <tr>
				    <td width="105" valign="middle" height="26" style="color:#000000;"><div align="center" class="style7 style4 style2">Status:</div></td>
              <%
						if(status.equals("Already Friend")){
						%>
              <td  width="90" valign="middle" height="26" style="color:#000000;"align="center"><%=status %>&nbsp;</td>
              <%
						}else if(status.equals("sent")){
						%>
              <td  width="57" valign="middle" height="26" style="color:#000000;"align="center"><%=status %>&nbsp;</td>
              <%
						}else{
						
						%>
              <td  width="107" valign="middle" height="26" style="color:#000000;"align="center"><a href="U_UpdateStatus.jsp?username=<%=s1%>&id=<%=i%>"><%=status %>&nbsp;</a></td>
              <%}
						%>
            </tr>
            <%
					
						}
					
 	    			
					}
					connection.close();
					//out.print("There is no Friends with " +keyword);
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
				
				if(count==0)
				{out.print("There Is No Other User With Keyword "+keyword);}
					
					
					
					%>
      </table>
            
            <p align="right">&nbsp;</p>
			<p align="right"><a href="U_FrdSearchReq.jsp" class="style2">Back</a></p>
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
