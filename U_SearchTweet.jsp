<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Search Tweet Page</title>
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
.style5 {color: #000000}
.style6 {color: #FF00FF}
.style7 {font-weight: bold}
.style8 {color: #0000FF}
.style9 {font-weight: bold; }
.style11 {font-weight: bold; color: #000000; font-size: 16px; }
-->
</style>
<script language="javascript" type="text/javascript">      
function valid()
{
var na3=document.s.keyword.value;
if(na3=="")

{
alert("Please Enter keyword");
document.s.keyword.focus();
return false;
}
else
{

}
}
</script>
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
	  
	   <h2 class="style6">Search Tweets</h2>
					  
               <form name="s" action="U_SearchTweet.jsp" method="post" onSubmit="return valid()"  ons target="_top">   
                <DIV STYLE="width:600px;">
                  <TABLE ALIGN="center" STYLE="margin:0 0 0 30px;">
                    <TR>
                      <TD width="174"><div align="center" class="header">
                        <div align="right" class="style12">
                          <div align="center" class="style4">Enter Fuzzy Keyword</div>
                        </div>
                      </div></TD>
                      <TD width="152">
                      <div align="left"><INPUT TYPE="text" name="keyword" /></div></TD>
					  <TD width="155"><INPUT name="submit" TYPE="submit" STYLE="width:50px; height:25px;" VALUE="GO"/></TD>
                    </TR>
                    <TR>
                      <TD COLSPAN="3"><div class="style2">
                        <div align="center" class="style13 style5">( searching content Based on Tweet name,Description)</div>
                      </div></TD>
                    </TR>
                  </TABLE>
               </DIV>
                <P>&nbsp; </P>
            </FORM>
			
			
				 <p><%
	  					
	 				 try
						{
							String user=(String)application.getAttribute("uname");
								String s10="",keyword="",s20="",s30="",s50="",s60="";
								String strDate="",strTime="",dt="";
								int rank=0,i=0;
								double found=0,total=0,ratio=0;
								
							    String	input= request.getParameter("keyword");	
								keyword = input.toLowerCase();
								
								SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
								SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");

								Date now = new Date();
						
								strDate = sdfDate.format(now);
								strTime = sdfTime.format(now);
								dt = strDate + "   " + strTime;
								
								String sql8="select * from tweets where uname!='"+user+"' ";
								Statement st8=connection.createStatement();
								ResultSet rs8=st8.executeQuery(sql8);
								while(rs8.next())
										{
									i=rs8.getInt(1);
								    s10 = rs8.getString(2);
									s20 = rs8.getString(3); //
									s30 = rs8.getString(5); //
									
					
					String keys = "ef50a0ef2c3e3a5f";
					byte[] keyValue = keys.getBytes();
					Key key = new SecretKeySpec(keyValue, "AES");
					Cipher c = Cipher.getInstance("AES");
					c.init(Cipher.DECRYPT_MODE, key);
					
					
					String descr = new String(Base64.decode(s30.getBytes())).toLowerCase();
									
									
									int s40 = rs8.getInt(8); //rank
								      total++;

									   String nam=s10.toLowerCase();
					
					if ( (nam.contains(keyword)) || (descr.contains(keyword)) )
									{
									
					String str1="select * from req_res where ((requestfrom='"+s20+"'&&requestto='"+user+"') || (requestfrom='"+user+"'&&requestto='"+s20+"'))&& status='Accepted'"; 
						Statement st1=connection.createStatement();
						ResultSet rs1=st1.executeQuery(str1);
						if ( rs1.next() )
	   					{
									
										 found++ ;
								
				
									%>
          </P>
 </p>
              <td width="86">
			<div align="center" class="style7" style="margin:10px 13px 10px 13px;" ><a class="#" id="img1" href="#" >
			 <input  name="image" type="image" src="images.jsp?id=<%=i%>&value=<%="tweet"%>" style="width:50px; height:50px;"  />
			 </a></div>	</td>
               <p> <div align="center" class="style9" ><span class="style5">Tweet Name :</span> <span class="style8"><%=s10%></span>
                 </p>
</div>
               <p class="style4"><div align="center" ><strong><span class="style5">Tweet SociRank :</span> <span class="style8"> <%=s40%> </span> </strong></div>
               </p>
                <p><div align="center" class="style5"><strong>View <a href="U_TweetDetails.jsp?id=<%=i%>&type=<%="search"%>&rank=<%=s40%>">Details</a></strong></div>
                </p>
                <p></p>
				<div>
				  <div align="center">--------------------------------------------------------</div>
				</div>
				 <p></p>
				<%
								}
						  	}
						 }
					if(found==0){out.print("There Is No Tweet Found For Keyword "+keyword);}
					%><h3 align="right"><span class="style11">View All Tweets</span> <a href="U_AllUserTweets.jsp">All Tweets</a></h3>
			
			<p>&nbsp;</p>
						
				<%	}
					
					catch(Exception e)
					{						  
						e.printStackTrace();
					}
					%>	  
	  
	  </p>        
                  <div align="right"><a href="U_Main.jsp">Back</a></div>
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
