<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Login Page</title>
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
.style5 {
	font-size: 36px;
	color: #FF00FF;
}
.style10 {
	color: #9933FF;
	font-size: 18;
	font-weight: bold;
}
.style13 {color: #9933FF; font-weight: bold; font-size: 24px; }
-->
</style>
<script language="javascript" type="text/javascript">      <!--Start Reg Validation Jai Siddalinga-->
function valid()
{
var na3=document.s.userid.value;
if(na3=="")

{
alert("Please Enter User Name");
document.s.userid.focus();
return false;
}
else
{

}
var na4=document.s.pass.value;
if(na4=="")

{
alert("Please Enter Password");
document.s.pass.focus();
return false;
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
	   <h2 class="style5">Welcome To User Login Page</h2>
	   <p><img src="images/ULogin.jpg" width="173" height="129" /></p>
      <form name="s" action="Authentication.jsp?value=<%="userlogin"%>" method="post" onSubmit="return valid()"  ons target="_top"> 
            <table width="504" border="0" cellpadding="2" cellspacing="2">
              <tr>
                <td width="212" height="51" align="center" bgcolor="#FFFF00"><div align="center" class="style13" >User Name<span class="style31"> *</span></div></td>
                <td width="228" bgcolor="#FFFF00"><input name="userid" type="text" class="text " id="userid" /></td>
              </tr>
              <tr>
                <td height="46" align="center" bgcolor="#FFFF00"><div align="center" class="style13" >Password<span class="style31"> * </span></div></td>
                <td bgcolor="#FFFF00"><input name="pass" type="password" class="text " id="pass" /></td>
              </tr>
              <tr>
                <td height="44" bgcolor="#FFFF00">&nbsp;</td>
                <td bgcolor="#FFFF00"><span class="style19 style10">
                 <input name="imageField2" type="submit"  class="LOGIN" id="imageField2" value="Login" />
                   New User?</span><span class="style10"><a href="U_Register.jsp" class="style21"> Register </a></span></td>
              </tr>
            </table>
            <div align="right"><a href="index.html" class="style21" style="text-decoration:underline">Back</a> </div>
        </form>
	  </div>
      <div class="sidebar">
        <div class="gadget">
          <h2>Sidebar Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu style4">
            <li><a href="index.html">Home</a></li>
            <li><a href="A_Login.jsp">Admin</a></li>
            <li><a href="U_Login.jsp">End User </a></li>
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
