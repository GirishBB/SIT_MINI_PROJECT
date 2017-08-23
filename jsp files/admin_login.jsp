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
<h1><a href="#">SIDDAGANGA INSTITUTE OF TECHNOLOGY</a></h1>
</div>
</div>
</div>
<!--
###############################################################################
######################## -->
<div class="wrapper row2">
  <div id="topnav">
    <ul>
      <li><a href="index.jsp">Homepage</a></li>
      <li><a href="about.jsp">About this project</a></li>
	  <li class="active"><a href="admin_login.jsp">Admin</a></li>
    </ul>
    <div  class="clear"></div>
  </div>
</div>


<!--
###############################################################################
######################## -->
<div class="wrapper row4">
<div id="container" class="clear">
<!--
###############################################################################
######################## -->
<div id="content">
<ul>

<h1>Admin Login</h1>
<form name="myForm" action="admin_logincheck.jsp" method="post">
<table>
 <tr><td>Username:</td><td><input type="text" style="height:25px;font-size:14pt;" name="username" id="username" size="25" /></td></tr>
  <tr><td>Password</td><td><input type="password" style="height:25px;font-size:14pt;" name="password" id="password" size="25"/></td></tr>
	<tr><td></td><td><input style="height:25px;font-size:14pt;width:100px;" type="submit" id="signin" alt="Sign In" value="LogIn" onClick="return validate(username,password);"/></td>  </tr>
  </table>
</form>


</ul>
</div>
<div id="column">

<div class="holder">
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
<script>
function validate(username,password)
      {
			var error="";
          

          
			 if(username.value.length==0 && password.value.length==0 )
			 {
				 alert("Please enter your username and password");
				 return false;
			 }
			  
			 if (username.value.length==0)
             {
                alert("Please enter the Username!");
				return false;
             }
			 
			 if (password.value.length==0)
             {
                alert("Please enter the password!");
				return false;
             }
			 
			 
			 
			 
      }
</script>
<body>
</html>