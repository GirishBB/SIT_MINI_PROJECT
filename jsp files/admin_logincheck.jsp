<%@page contentType="text/html" pageEncoding="UTF-8" import="java.util.*" import="java.sql.*"%>
 <%@page import="com.util.*"%>
<%@page import="java.sql.*"%>
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
  </div>
</div>
 <%
 String username=request.getParameter("username");
 String password=request.getParameter("password");
 session.putValue("username",username); 
 String pwd=request.getParameter("password"); 
 Class.forName("com.mysql.jdbc.Driver").newInstance();
 Connection con=null; 
 con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student_alert_database","root","root123"); 
	Statement st= con.createStatement(); 
ResultSet rs=st.executeQuery("select * from ADMIN_LOGIN where USERNAME='"+username+"' && PASSWORD='"+password+"'"); 
 if(rs.next()) 
 { 
  if(rs.getString(2).equals(password)) 
	{ 
		session.setAttribute("username",username);
		response.sendRedirect("admin_interface.jsp");

	} 
	else if(!rs.getString(2).equals(password))
	{ 
		 response.sendRedirect("admin_login.jsp");

	} 
 } 
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

<h1><strong>Sorry wrong password <a href="admin_login.jsp"><u>try again</u></a>!!!</strong><h1>
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


