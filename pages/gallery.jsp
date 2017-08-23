<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>SIT Student Notification Portal</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="pages/layout/styles/layout.css" type="text/css" />
<script type="text/javascript" src="pages/layout/scripts/jquery.min.js"></script>
<!-- prettyPhoto -->
<link rel="stylesheet" href="pages/layout/scripts/prettyphoto/prettyPhoto.css" type="text/css" />
<script type="text/javascript" src="pages/layout/scripts/prettyphoto/jquery.prettyPhoto.js"></script>
<script type="text/javascript">
$(document).ready(function() {
    $("a[rel^='prettyPhoto']").prettyPhoto({
        theme: 'dark_rounded',
        overlay_gallery: false,
        social_tools: false
    });
});
</script>
<!-- / prettyPhoto -->
</head>
<body id="top">
<div class="wrapper row1">
  <div id="header" class="clear">
    <div class="fl_left">
      <h1><a href="../index.html">Siddaganga Institute of Technology</a></h1>
      </div>
     <form action="../LoginCheck.jsp" method="post" id="login">
      <fieldset>
        <legend>Student Login</legend>
		<p>  &nbsp; &nbsp; USN:&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Password:</p></br>
        <input type="password" name="password" />
        <input type="text" name="username" />
        <div id="forgot"><a href="Forgotpassword.html">Forgot Your Details?</a></div>
        <input type="submit" id="signin" alt="Sign In" value="LogIn" />
      </fieldset>
    </form>
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper row2">
  <div id="topnav">
    <ul>
      <li><a href="../index.jsp">Homepage</a></li>
      <li><a href="style-demo.jsp">About this project</a></li>
      <li class="active last"><a href="#">Gallery</a></li>
    </ul>
    <div  class="clear"></div>
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper row4">
  <div id="container" class="clear"> 
    <!-- ####################################################################################################### -->
    <div id="gallery" class="clear">
      <div class="gallerycontainer clear">
        <div class="fl_left">
          <h2 class="title">Latest Videos</h2>
          <p>Nullapretium ipsum maurien nulla nunc ut ametur montes habitur habitur at. Disseaenean aliquam molesuada ristibulum consectetus quis ipsum tor sed aliquam sem.</p>
          <p class="readmore"><a href="#">View All &raquo;</a></p>
        </div>
        <div class="fl_right">
          <ul>
            <li><a href="http://www.youtube.com/watch?v=TIMmp6XWiG0" rel="prettyPhoto[gallery1]" title="Video 1"><img src="../images/demo/video.gif" alt="" /></a></li>
            <li class="last"><a href="http://www.youtube.com/watch?v=TIMmp6XWiG0" rel="prettyPhoto[gallery1]" title="Video 2"><img src="../images/demo/video.gif" alt="" /></a></li>
          </ul>
        </div>
      </div>
      <!-- ########### -->
      <div class="gallerycontainer clear">
        <div class="fl_left">
          <h2 class="title">Latest Images</h2>
          <p>Nullapretium ipsum maurien nulla nunc ut ametur montes habitur habitur at. Disseaenean aliquam molesuada ristibulum consectetus quis ipsum tor sed aliquam sem.</p>
          <p class="readmore"><a href="#">View All &raquo;</a></p>
        </div>
        <div class="fl_right">
          <ul>
            <li><a href="../images/demo/440x215.gif" rel="prettyPhoto[gallery2]" title="Image 1"><img src="../images/demo/310x165.gif" alt="Title Here" /></a></li>
            <li class="last"><a href="../images/demo/440x215.gif" rel="prettyPhoto[gallery2]" title="Image 2"><img src="../images/demo/310x165.gif" alt="Title Here" /></a></li>
          </ul>
        </div>
      </div>
      <!-- ########### --> 
    </div>
    <!-- ####################################################################################################### -->
    <div class="pagination">
      <ul>
        <li class="prev"><a href="#">&laquo; Previous</a></li>
        <li><a href="#">1</a></li>
        <li><a href="#">2</a></li>
        <li class="splitter">&hellip;</li>
        <li><a href="#">6</a></li>
        <li class="current">7</li>
        <li><a href="#">8</a></li>
        <li><a href="#">9</a></li>
        <li class="splitter">&hellip;</li>
        <li><a href="#">14</a></li>
        <li><a href="#">15</a></li>
        <li class="next"><a href="#">Next &raquo;</a></li>
      </ul>
    </div>
    <!-- ####################################################################################################### -->
    <div class="clear"></div>
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper row5">
  <div id="footer" class="clear"> 
    <!-- ####################################################################################################### -->
    <div class="foot_contact">
     <h2>Siddaganga Institute of Technology</h2>
      <address>
      Siddaganga Institute of Technology,<br />
      B.H. Road,<br />
      Tumakuru,<br />
      572 103
      </address>
	  </div>
	  </br></br>
        <p><strong>Tel:</strong> 0816-2214001</p>
        <p><strong>Fax:</strong> 0816-2282994</p>
        <p class="last"><strong>Email:</strong> <a href="#">principal@sit.ac.in</a></p>
		<p><strong>Visit:</strong>www.sit.ac.in</p>
    </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper">
  <div id="copyright" class="clear">
    <p class="fl_left">Copyright &copy; 2017 - All Rights Reserved - <a href="#">Student alert system</a></p>
   
  </div>
</div>
</body>
</html>