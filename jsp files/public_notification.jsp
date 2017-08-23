<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="EN" lang="EN" dir="ltr">
<head profile="http://gmpg.org/xfn/11">
<title>SIT ADMIN PORTAL</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<meta http-equiv="imagetoolbar" content="no" />
<link rel="stylesheet" href="layout/styles/layout.css" type="text/css" />
</head>
<body id="top">
<div class="wrapper row1">
<div id="header" class="clear">
<div class="fl_left">
<h1><a href="index.jsp">SIDDAGANGA INSTITUTE OF TECHNOLOGY</a></h1>
</div>
</div>
</div>


<div class="wrapper row2">
  <div id="topnav">
    <ul>
      <li><a href="index.jsp">Homepage</a></li>
      <li><a href="about.jsp">About this project</a></li>
	  <li><a href="admin_login.jsp">Logout</a></li>
    </ul>
    <div  class="clear"></div>
  </div>
</div>

<div class="wrapper row4">
<div id="container" class="clear">
<div id="content">
<ul>
<h1 align="center"><b>SMS NOTIFICATIONS</b></h1>

<form name="myForm" action="sendmessage.jsp" method="post">
<table>

<tr> <td>Type of message</td><td> <select style="height:25px;font-size:14pt;width:200px"name="msg_type">
<option>Results</option>
<option>Seat</option>
<option>Fee</option>
<option>Time Table</option>
<option>Syllabus</option>
<option>Events</option>
</select></td></tr>

<tr> <td>Semester</td><td> <select style="height:25px;font-size:14pt;width:200px" name="sem">
<option  name="o1" id="o1">S1</option>
<option  name="o2" id="o2">S2</option>
<option  name="o3" id="o3">S3</option>
<option  name="o4" id="o4">S4</option>
<option  name="o5" id="o5">S5</option>
<option  name="o6" id="o6">S6</option>
<option  name="o7" id="o7">S7</option>
<option  name="o8" id="o8">S8</option>
</select></td></tr>
<tr><td>Notification Subject:</td><td><input type='text' style="height:25px;font-size:14pt;" name='Subject' id='Subject' /></td></tr>
  
 <!-- <tr><td>Date: </td><td><input type='text' name='date' id='date' /></td></tr> -->
  <tr><td>Description:</td><td>
  
  <textarea style="height:100px;font-size:14pt;width:200px"  name='description' id='description'></textarea></td></tr>

  

  <tr><td></td><td><input style="height:25px;font-size:14pt;width:100px" type='submit' value='Send' /></td ></tr>
</table>  
</form>

</ul>
</div>
<div id="column">
<div class="subnav">
<h2>App Navigation</h2>
<ul>
<li><a href="admin_interface.jsp">go Back to Admin interface</a></li>

</ul>

</div>

<div id="featured">
</div>
</div>
<div class="clear"></div>
</div>
</div>
<div class="wrapper row5">
<div id="footer" class="clear">
<!--
###############################################################################
######################## -->
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
   <!-- <p class="fl_right">Template by <a target="_blank" href="http://www.os-templates.com/" title="Free Website Templates">OS Templates</a></p>-->
  </div>
</div>
<body>
</html>