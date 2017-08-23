import java.util.*;
import javax.mail.*;
import javax.mail.internet.*;
import javax.activation.*;

public class SendEmail{

   public static void main(String args[]) {    
      // Recipient's email ID needs to be mentioned.
      String to = "goutham.s.b.2@gmail.com";

      // Sender's email ID needs to be mentioned
      String from = "gowtham.1si14cs038@gmail.com";
	  

      // Assuming you are sending email from localhost
      //String host = "smtp.gmail.com";

      // Get system properties
      Properties properties = System.getProperties();

      // Setup mail server
    // properties.setProperty("mail.smtp.host", host);
	 /*Session session = Session.getDefaultInstance(properties, 
    new javax.mail.Authenticator(){
        protected PasswordAuthentication getPasswordAuthentication() {
            return new PasswordAuthentication(
                "gowtham.1si14cs038@gmail.com", "Gouthamsb@13");// Specify the Username and the PassWord
        }
		});*/
	 
	  
	    properties.put("mail.smtp.starttls.enable", "true"); 
		properties.put("mail.smtp.ssl.enable", "true");
		properties.put("mail.smtp.host", "smtp.gmail.com");
		properties.setProperty("mail.smtp.user", "gowtham.1si14cs038@gmail.com"); // User name
		properties.setProperty("mail.smtp.password", "Gouthamsb@13"); // password
		properties.put("mail.smtp.port", "465");
		properties.put("mail.smtp.auth", "true");
		properties.setProperty("mail.smtp.auth", "true");
		
		  
		// properties.put("mail.smtp.socketFactory.fallback", "true");
	
      // Get the default Session object.
      Session session = Session.getInstance(properties);
	  	

      try {
         // Create a default MimeMessage object.
         MimeMessage message = new MimeMessage(session);

         // Set From: header field of the header.
         message.setFrom(new InternetAddress(from));

         // Set To: header field of the header.
         message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));

         // Set Subject: header field
         message.setSubject("This is the Subject Line!");

         // Now set the actual message
         message.setText("This is actual message");

         // Send message
         Transport.send(message,"gowtham.1si14cs038@gmail.com","Gouthamsb@13");
         System.out.println("Sent message successfully....");
      }catch (MessagingException mex) {
         mex.printStackTrace();
      }
   }
}