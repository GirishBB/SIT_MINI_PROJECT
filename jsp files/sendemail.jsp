<%@page import="com.mypackage.Msg91Api"%>
<%@page import="com.mypackage.TestApi"%>
<%@page import="com.mypackage.SendEmail"%>
<%@page import="java.lang.*"%>
<%@page import="java.util.*"%>
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
	  </div>
</div>
 
 <%
	String r1="",r2="",r3="", ph_no="",mail="";
	String sem=request.getParameter("sem");
	String yes="y";
	String msg_type=request.getParameter("msg_type");
	//int comp=msg_type.equals("seat");
	String msg="";
	if(msg_type.equals("Results"))
	{
		msg="EXAM_RESULTS";
	}
	if(msg_type.equals("Seat"))
	{
		msg="EXAM_SEAT";
	}
	if(msg_type.equals("Fee"))
	{
		msg="FEES_DETAILS";
	}
	if(msg_type.equals("Time Table"))
	{
		msg="EXAM_TIME_TABLE";
	}
	if(msg_type.equals("Events"))
	{
		msg="EVENTS";
	}
	if(msg_type.equals("Syllabus"))
	{
		msg="SYLLABUS";
	}
	//String username=session.getAttribute("username").toString(); 
	Class.forName("com.mysql.jdbc.Driver").newInstance();
	Connection con1=null; 
	con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/student_alert_database","root","root123"); 
	Statement st1= con1.createStatement(); 
	ResultSet rs=st1.executeQuery("select EMAIL_ID from STUDENT_DETAILS,ACCOUNT_SETTINGS where USN_A=USN_D AND "+msg+"='"+yes+"' AND SEMESTER='"+sem+"' AND MAIL ='"+yes+"'" );
	ResultSetMetaData rsmd = rs.getMetaData();	
	/*while(rs.next()){
		r1=rs.getString(1);
		r2=rs.getString(1);
		r3=rs.getString(1);
	}*/
		int columnsNumber = rsmd.getColumnCount();
		while (rs.next()) {
       for (int i = 1; i <= columnsNumber; i++) {
           if (i > 1) System.out.print(",  ");
           String columnValue = rs.getString(i);%>
           <!--<h1><%=columnValue%> + " " + <%=rsmd.getColumnName(i)%></h1>-->
		   <%
		  
		   mail=mail+columnValue+",";
       }
     
   
	
	}
	int x=mail.length();
	int y=x-1;
	String mail1="";
	if(y!=-1)
	{
		mail1=mail.substring(0,y);
	}
	else
	{
		mail1="SORRY NO STUDENTS MEET THE CRITERIA TO SEND MESSAGE";
	}
	%>
	
	
<%!String message=""; %>
 <%   
 
	String Subject=(String) request.getParameter("Subject");
	String Description=(String) request.getParameter("description");
	//message=Subject+":"+Description;
	String mail2="goutham.s.b.2@gmail.com"+","+"gowtham.1si14cs038@gmail.com";
    
   
   
	TestApi test=new TestApi();
   //test.sendSmstouser(ph_no2, message);
   SendEmail email=new SendEmail();
   email.sendMail(Description,Subject,mail1);
	
   %> 

   
   
   <!-- ####################################################################################################### -->
<div class="wrapper row2">
  <div id="topnav">
    <ul>
      <li><a href="index.jsp">Homepage</a></li>
	  <li><a href="admin_login.jsp">Logout</a></li>
      <li class="last"><a href="gallery.jsp">Gallery</a></li>
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
<h1>Sent Email Successfully</h1><br>
<h1><strong><a href="group_notification.jsp"><u>Click here</u></strong> to send another email notification<h1>
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
   </body> 
  </html>   