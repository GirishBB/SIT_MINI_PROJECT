<%@page import="com.util.*"%>
<%@page import="java.sql.*"%>
<%

 //Student details

 String NAME=request.getParameter("name");
 String USN=request.getParameter("usn");
 String Branch=request.getParameter("branch");
 String sem=request.getParameter("sem");
 String email=request.getParameter("mailid");
 String phno=request.getParameter("phno");

 
 
 //login details
String password=request.getParameter("password");

//Account settings

String r1=request.getParameter("g1");
String r2=request.getParameter("g2");
String r3=request.getParameter("g3");
String r4=request.getParameter("g4");
String r5=request.getParameter("g5");
String r6=request.getParameter("g6");
String r7=request.getParameter("g7");
String r8=request.getParameter("g8");


String pass=request.getParameter("password");

PreparedStatement st = connection.prepareStatement("DELETE FROM Table WHERE name = ?");
st.setString(1,name);
st.executeUpdate();

 
 
 
 Class.forName("com.mysql.jdbc.Driver").newInstance();
 Connection con1=null; 
 con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/student_alert_database","root","root123");
 Statement st1=con1.createStatement();
 PreparedStatement st2=con1.prepareStatement("DELETE from LOGIN (USN,PASSWORD)"+" values(?,?)") ;
st2.setString(1,USN);
st2.setString(2,pass);
st2.executeUpdate();
PreparedStatement st3=con1.prepareStatement("DELETE From STUDENT_DETAILS (NAME,USN_D,BRANCH,SEMESTER,EMAIL_ID,PHONE_NUM)"+" values(?,?,?,?,?,?)") ;
st3.setString(1,NAME);
st3.setString(2,USN);
st3.setString(3,Branch);
st3.setString(4,sem);
st3.setString(5,email);
st3.setString(6,phno);
st3.executeUpdate();
PreparedStatement st4=con1.prepareStatement("Insert into ACCOUNT_SETTINGS (NAME_A,USN_A,EXAM_RESULTS,EXAM_SEAT,FEES_DETAILS,EXAM_TIME_TABLE,SYLLABUS,EVENTS,MAIL,MOBILE)"+" values(?,?,?,?,?,?,?,?,?,?)") ;
st4.setString(1,NAME);
st4.setString(2,USN);
st4.setString(3,r1);
st4.setString(4,r2);
st4.setString(5,r3);
st4.setString(6,r4);
st4.setString(7,r5);
st4.setString(8,r6);
st4.setString(9,r7);
st4.setString(10,r8);
st4.executeUpdate();
 /*int rs1=st1.executeUpdate("INSERT INTO LOGIN('"+USN+"','"+pass+"')");	
 int rs2=st1.executeUpdate("UPDATE STUDENT_DETAILS SET EMAIL_ID='"+email+"',PHONE_NUM='"+phno+"',SEMESTER='"+sem+"' WHERE USN_D='"+username+"'");
 int rs3=st1.executeUpdate("INSERT INTO ACCOUNT_SETTINGS (SET EXAM_RESULTS='"+r1+"',EXAM_SEAT='"+r2+"',FEES_DETAILS='"+r3+"',EXAM_TIME_TABLE='"+r4+"',SYLLABUS='"+r5+"',EVENTS='"+r6+"',MAIL='"+r7+"', MOBILE='"+r8+"' WHERE USN_A='"+username+"'"); */
	

 response.sendRedirect("addstudents.jsp");


%>