<%@page import="com.util.*"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="EN" lang="EN" dir="ltr">
<head profile="http://gmpg.org/xfn/11">
<title>STUDENT ALERT SYSTEM</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<meta http-equiv="imagetoolbar" content="no" />
<link rel="stylesheet" href="layout/styles/layout.css" type="text/css" />
<style>

button{
	background:none;
	border:none;
	padding:0;
	margin:0;
	font-size:12px; 
	font-family:Georgia, "Times New Roman", Times, serif;
}
</style>
<%!String r1=null,r2=null,r3=null,r4=null,r5=null,r6=null,r7=null,r8=null,r9=null;%>
<%

String username1=request.getParameter("username");
Class.forName("com.mysql.jdbc.Driver").newInstance();
 Connection con=null; 
 con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root123"); 
Statement st=con.createStatement();
ResultSet rs1=st.executeQuery("select * from users where username='"+username1+"'");
while(rs1.next()){
	r9=rs1.getString(2);
r1=rs1.getString(3);
r2=rs1.getString(4);
r3=rs1.getString(5);
r4=rs1.getString(6);
r5 =rs1.getString(7);
r6=rs1.getString(8);
r7=rs1.getString(9);
r8=rs1.getString(10);
}
System.out.print(r1);
%>


</head>
<body id="top" onload="loaddata();">
<div class="wrapper row1">
<div id="header" class="clear">
<div class="fl_left">
<h1><a href="#">STUDENT ALERT SYSTEM</a></h1>
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
<li class="last"><a href="admin_login.jsp">Logout</a></li>
</ul>
<div class="clear"></div>
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
<%
String username=request.getParameter("username");
Class.forName("com.mysql.jdbc.Driver").newInstance();
 Connection con1=null; 
 con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/student_alert_database","root","root123"); 
 Statement st1= con1.createStatement(); 
ResultSet rs=st1.executeQuery("select * from STUDENT_DETAILS "); 
/*String name=null;*/
String email=null;
String sem=null;
String branch=null;
String ph=null;
String name[]=new String[100];
int i=1;
int count=0;
while(rs.next() && i!=0)
{
	name[i]=rs.getString(1);
	i++;
	count++;
}

%>

<h1><b><center>WELCOME &nbsp;Admin </center></b> </h1>
<br/>

<h3>REGISTERED STUDENTS</h3>


</br>


</table>
<table border="1">
<thead>
<tr>
</tr>

<tr>
<th>SL.NO</th>
<th> STUDENT REGISTERED </th>

</thead>
<tbody>

<% 
for(int row=1; row<=count; row++) { %>
    <TR>
		<td><center><%=row%></center></td>
		<td><center><%=name[row]%></center></td>
		
        
    </TR>
<% } %>


</tbody>
</table>

<div id="comments">
</br>
</br>
</div><div id="respond">
</div>
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
<!--
###############################################################################
######################## -->
<div class="wrapper row5">
<div id="footer" class="clear">
<div class="foot_contact">
<h2>SIDDAGANGA INSTITUTE OF TECHNOLOGY</h2>
<address>
COMPUTER MAINTAINENCE CELL</br>
DEPARTMENT OF COMPUTER SCIENCE</br>
BH ROAD<br />
TUMKUR<br />
572 103
</address>
</div>
<div class="footbox">
</div>

<!--
###############################################################################
######################## -->
<div class="footbox">
</div>
<div>
</div>
</div>
</div>
<!--
###############################################################################
######################## -->
<div class="wrapper">
<div id="copyright" class="clear">
<p class="fl_left">Copyright &copy; 2017 - All Rights Reserved - Computer maintainence Cell </p>
</div>
</div>
</body>
</html>
