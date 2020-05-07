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
.style9 {
	font-size: 18px;
	color: #000000;
	font-weight: bold;
}
.style12 {font-size: 18px}
.style18 {font-size: 18px; font-weight: bold; }
.style19 {color: #000000}
-->
</style>
<script language="javascript" type="text/javascript">      <!--Start Reg Validation Jai Siddalinga-->
function valid()
{
var na3=document.s.rate.value;
if(na3=="")

{
alert("Please Enter Rating");
document.s.rate.focus();
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
	  
	   <h2 align="center" class="style2 style19">Rate Tweet </h2>
		<p><table align="center"  cellpadding="0" cellspacing="0"  >
					
					<%
					String type=request.getParameter("type");
					String name=request.getParameter("tname");
					String rank=request.getParameter("rank");
					int one= Integer.parseInt(request.getParameter("id"));
					%> 
					<tr bgcolor="#CCCCCC"><td width="400" bgcolor="#99FF00">
					
			<div align="left" class="style7" style="margin:10px 13px 10px 13px;" ><a class="#" id="img1" href="#" >
			 <input  name="image" type="image" src="images.jsp?id=<%=one%>&value=<%="tweet"%>" style="width:100px; height:100px;"  />
			 </a></div>	
					<span class="style3"><span class="style2 style19"><span class="style12 style2"><strong>Tweet Name </strong></span><span class="style18">:</span></span><span class="style9"><%=name%>	</span></span>
					<span class="style9"></br>
					<strong>Tweet</strong> Rank :<%=rank%>	</span>
					</td>
					</tr><tr><td bgcolor="#99FF00">
					<p>&nbsp;</p>
					<form name="s" action="U_RateTweet1.jsp?id=<%=one%>&tname=<%=name%>&type=<%=type%>&rank=<%=rank%>" method="post" onSubmit="return valid()"  ons target="_top">
					    <label>
					      <input type="text" name="rate" id="rate" />
				        </label>
					    <input type="submit" name="Submit" value="Rate" />
					 
					</form></td>
				</table>
			
	  <h2>&nbsp;</h2>
			<p align="right"><a href="U_TweetDetails.jsp?id=<%=one%>&tname=<%=name%>&type=<%=type%>&rank=<%=rank%>" class="style4">Back</a></p>
	  
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
