<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Admin Main Page</title>
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
	  
	  
	  <h2 class="style5">Wel-Come To Admin Main Page</h2>
	  <p class="style5"><img src="images/Admin.jpg" width="534" height="495" /></p>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2>Admin Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu style4">
            <li><em><a href="A_AuthorizeUsers.jsp">View All Users And Authorize</a></em></li>
            <li><em><a href="A_AllFrdReqResp.jsp">View Friends Request And Responses</a></em></li>
			<li><em><a href="A_TweetFilters.jsp">Add Tweet Filters</a></em></li>
            <li><em><a href="A_AllUserTweets.jsp">View All Users Time Line Tweet Details </a></em></li>
            <li><em><a href="A_ClustersByUname.jsp">View All tweets by Cluster</a></em></li>
		    <li><em><a href="A_Relevent.jsp">View All Relevant Term Identification on All Tweets</a></em></li>
			<li><em><a href="A_OutlierTweets.jsp">View All Users Outlier detection tweet </a></em></li>
			<li><em><a href="A_TweetFreqCount.jsp">View All Term Frequency On All Tweets Count</a></em></li>
			<li><em><a href="A_TweetsRankInchart.jsp">View All Tweet News Socirank In chart</a></em></li>
			<li><em><a href="A_TweetsCharts.jsp">View All Tweet Term Frequency Count In Chart</a></em></li>
		    <li><em><a href="A_TweetsTweetedInchart.jsp">View All tweets tweeted Socirank (Re-Tweets counts) in chart</a></em></li>
			<li><em><a href="A_Login.jsp">Logout</a></em></li>
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
