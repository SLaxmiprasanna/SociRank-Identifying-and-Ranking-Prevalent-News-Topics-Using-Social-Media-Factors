<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User All Tweets Page</title>
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
	font-size: 16px;
	font-weight: bold;
}
.style8 {color: #FF00FF}
.style9 {color: #000000}
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
	  
	   <h2 class="style8">All My Tweets Details...</h2>
	  
         <table width="598" border="1" align="center"  cellpadding="0" cellspacing="0"  >
        <tr bgcolor="#99CCCC">
          <td  width="24" height="34" valign="baseline" bgcolor="#00FFFF" style="color: #2c83b0;"><div align="center" class="style4" >SI NO</div></td>
          <td  width="76" height="34" valign="baseline" bgcolor="#00FFFF" style="color: #2c83b0;"><div align="center" class="style4" > Tweet Image </div></td>
		  <td  width="55" height="34" valign="baseline" bgcolor="#00FFFF" style="color: #2c83b0;"><div align="center" class="style4" >Tweet Name</div></td>
          <td  width="68" height="34" valign="baseline" bgcolor="#00FFFF" style="color: #2c83b0;"><div align="center" class="style4" >Tweeted Date</div></td>
          <td  width="51" height="34" valign="baseline" bgcolor="#00FFFF" style="color: #2c83b0;"><div align="center" class="style4" >SociRank </div></td>
		  <td  width="233" height="34" valign="baseline" bgcolor="#00FFFF" style="color: #2c83b0;"><div align="center" class="style4" >Tweet Rate</div></td>
		  <td  width="233" height="34" valign="baseline" bgcolor="#00FFFF" style="color: #2c83b0;"><div align="center" class="style4" >Re-Tweet </div></td>
        </tr>
         
		 
		    <%@ include file="connect.jsp" %>
            <%
					  
					  String uname=(String)application.getAttribute("uname");
					  String s0="",s1="",s2="",s3="",s4="",s5="",s6="";
					  int i=1,j=0,count=0,rank=0,k=0;
					
						try 
						{
							
						   	String query="select * from tweets where uname='"+uname+"' "; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								j=rs.getInt(1);
								s0=rs.getString(2);
								s1=rs.getString(4);
								s2=rs.getString(5);
								s3=rs.getString(6);
								rank=rs.getInt(8);
								k=rs.getInt(9);
								
								count++;
					%>
            <tr>
              <td height="0"  valign="middle" bgcolor="#99FF33">
                  <div align="center" class="style4" >
                    <div align="center">
                    <%out.println(i);%>
                </div>
              </div></td>
			   
			    <td width="76" valign="middle" bgcolor="#99FF33"><div class="style3 style7 style9 style9" style="margin:10px 13px 10px 13px;" >
                  <input  name="image" type="image" src="images.jsp?value=<%="tweet"%>&id=<%=j%>" style="width:50px; height:50px;" />
              </div></td>
			   
			   <td height="0"  valign="middle" bgcolor="#99FF33">
                  <div align="center" class="style4"  >
                    <div align="center" >
       			   <a href="U_MyTweetDetails.jsp?id=<%=j%>&type=<%="alltweets"%>&tname=<%=s0%>"> <%out.println(s0);%> </a>               </div>
              </div></td>
			  
              <td height="0"  valign="middle" bgcolor="#99FF33">
                  <div align="center" class="style4" >
                 	 <%out.println(s3);%> 
              </div></td>
			  
			  <td height="0"  valign="middle" bgcolor="#99FF33">
                  <div align="center" class="style4" >
                  <%out.println(rank);%>
              </div></td>
			  
			  <td height="0"  valign="middle" bgcolor="#99FF33">
                  <div align="center" class="style4" >
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
              </div></td>
			   <td height="0"  valign="middle" bgcolor="#99FF33">
                  <div align="center" class="style9" ><strong>
                  <a href="U_Re-TweetNews.jsp?id=<%=j%>&type=<%="allMyTweets"%>&tname=<%=s0%>">Re-Tweet</a>			  </strong></div></td>
            </tr>
            <%
					i=i+1;	
						
						}
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					
					if(count==0){out.print("You Have Not Uploaded Any Tweets");}
					
					%>
        </table>
		  
		   <p>&nbsp;</p>
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
