package com.mypackage;
import java.util.*;
import javax.mail.*;
import javax.mail.internet.*;
import javax.activation.*;

public class SendEmailtuts {

   public static void main(String args[]) {    
      // Recipient's email ID needs to be mentioned.
      String to = "goutham.s.b.2@gmail.com";

      // Sender's email ID needs to be mentioned
      String from = "gowtham.1si14cs038@gmail.com";
	  

      // Assuming you are sending email from localhost
      String host = "smtp.gmail.com";

      // Get system properties
      Properties properties = System.getProperties();

      // Setup mail server
     // properties.setProperty("mail.smtp.host", host);
	  
	    properties.put("mail.smtp.starttls.enable", "true"); 
		properties.put("mail.smtp.host", "smtp.gmail.com");
		properties.put("mail.smtp.user", "gowtham.1si14cs038@gmail.com"); // User name
		properties.put("mail.smtp.password", "Gouthamsb@13"); // password
		properties.put("mail.smtp.port", "587");
		properties.put("mail.smtp.auth", "true");
	
      // Get the default Session object.
      Session session = Session.getDefaultInstance(properties);

      try {
         // Create a default MimeMessage object.
         MimeMessage message = new MimeMessage(session);

         // Set From: header field of the header.
         message.setFrom(new InternetAddress(from));

         // Set To: header field of the header.
         message.addRecipient(Message.RecipientType.TO, new InternetAddress.parse("goutham.s.b.2@gmail,gowtham.1si14cs038@gmail"));

         // Set Subject: header field
         message.setSubject("This is the Subject Line!");
		 
         // Now set the actual message
         message.setText("This is actual message");

         // Send message
         Transport.send(message);
         System.out.println("Sent message successfully....");
      }catch (MessagingException mex) {
         mex.printStackTrace();
      }
   }
}