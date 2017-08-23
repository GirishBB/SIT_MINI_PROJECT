<%@page import="com.util.*"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>SIT Student Notification Portal</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />

<script type="text/javascript" src="pages/layout/scripts/jquery.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="layout/styles/layout.css" type="text/css" />
</head>
<body id="top">
<div class="wrapper row1">
  <div id="header" class="clear">
    <div class="fl_left">
      <h1><a href="index.jsp">Siddaganga Institute of Technology</a></h1>
      
    </div>
    <form action="LoginCheck.jsp" method="post" id="login">
      <fieldset>
        <legend>Student Login</legend>
		<p>  &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp; USN:&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Password:</p></br>
        <input type="password" name="password" />
        <input type="text" name="username" />
        <div id="forgot"><a href="Forgotpassword.html">&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;Forgot Your Details?</a></div>
        <input type="submit" id="signin" alt="Sign In" value="LogIn" />
      </fieldset>
    </form>
  </div>
</div>

<%
 String username=session.getAttribute("username").toString();
 String username1=(String) request.getParameter("username");
 
 


String r1=request.getParameter("g1");
String r2=request.getParameter("g2");
String r3=request.getParameter("g3");
String r4=request.getParameter("g4");
String r5=request.getParameter("g5");
String r6=request.getParameter("g6");
String r7=request.getParameter("g7");
String r8=request.getParameter("g8");
String email=request.getParameter("id");
String phno=request.getParameter("no");
String sem=request.getParameter("sem");
String pass=request.getParameter("password");



 
 
 
 Class.forName("com.mysql.jdbc.Driver").newInstance();
 Connection con1=null; 
 con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/student_alert_database","root","root123");
 Statement st1=con1.createStatement();   
 int rs=st1.executeUpdate("UPDATE ACCOUNT_SETTINGS SET EXAM_RESULTS='"+r1+"',EXAM_SEAT='"+r2+"',FEES_DETAILS='"+r3+"',EXAM_TIME_TABLE='"+r4+"',SYLLABUS='"+r5+"',EVENTS='"+r6+"',MAIL='"+r7+"', MOBILE='"+r8+"' WHERE USN_A='"+username+"'"); 
	int rs2=st1.executeUpdate("UPDATE STUDENT_DETAILS SET EMAIL_ID='"+email+"',PHONE_NUM='"+phno+"',SEMESTER='"+sem+"' WHERE USN_D='"+username+"'");
int rs3=st1.executeUpdate("UPDATE LOGIN SET PASSWORD='"+pass+"' WHERE USN='"+username+"'");	
 


%>

<!-- ####################################################################################################### -->
<div class="wrapper row2">
  <div id="topnav">
    <ul>
      <li><a href="index.jsp">Homepage</a></li>
	  <li><a href="style-demo.jsp">About this project</a></li>
    </ul>
    <div  class="clear"></div>
  </div>
</div>
<!-- ####################################################################################################### -->

<div class="wrapper row4" >
  <div id="container" class="clear"> 
    <!-- ####################################################################################################### -->
    <div id="content">

<br>
<br>
<br>
<br>
<br>
<h1><strong>Settings saved successfully!!!!</strong><h1>
<br>
<br>
<br>
</div>
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
  </div>
</div>
</body>
</html>


