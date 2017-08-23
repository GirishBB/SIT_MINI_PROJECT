package com.mypackage;
import java.io.BufferedReader;
 import java.io.IOException;
 import java.io.InputStreamReader;
 import java.net.HttpURLConnection;
 import java.net.URL; 
 import java.net.URLEncoder;
 import java.util.Date; 
 public class SendSms {
     public void sendSmstouser(String mobnumber,String type,String msg) 
	 {    
	 try
	 { 
	 Date mydate = new Date(System.currentTimeMillis());
	 String data = ""; 
	 data += "method=sendMessage"; 
	 data += "&userid=2000167496"; 
	 // your loginId 
	 data += "&password=" +URLEncoder.encode(" IcGjHfKnn", "UTF-8"); 
	 // your password
	 data+= "&msg=" + URLEncoder.encode("Type of Message: " +type+" Message: "+msg+" Date "+ mydate.toString(), "UTF-8"); 
	 data += "&send_to=" +URLEncoder.encode(mobnumber, "UTF-8");
	 // a valid 10 digit phone no. 
	 data += "&v=1.1" ; 
	 data = data + "&msg_type=TEXT";
	 URL url = new URL("http://enterprise.smsgupshup.com/GatewayAPI/rest?" + data); 
	 HttpURLConnection conn = (HttpURLConnection)url.openConnection(); 
	 conn.setRequestMethod("GET"); 
	 conn.setDoOutput(true); 
	 conn.setDoInput(true);
	 conn.setUseCaches(false); 
	 conn.connect(); 
	  try (BufferedReader rd = new BufferedReader(new  InputStreamReader(conn.getInputStream()))) 
	  {          
      String line;    
	  StringBuilder buffer = new StringBuilder();    
	  while ((line = rd.readLine()) != null)
	  {      
	  buffer.append(line).append("\n");    
	  }       
	  System.out.println(buffer.toString()); 
	  }  
		conn.disconnect(); 
	} 
		catch(IOException e){
			}   
		} 
	} 