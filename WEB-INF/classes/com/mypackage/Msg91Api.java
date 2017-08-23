 package com.mypackage;
import java.io.*;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;


public class Msg91Api{

        public void sendSmstouser(String mob,String msg)
    	{
            //Your authentication key
            String authkey = "145978A59i6fohf1Bj58d2a4bf";
            //Multiple mobiles numbers separated by comma
            String mobiles = "";
			mobiles=mob;
            //Sender ID,While using route4 sender id should be 6 characters long.
            String senderId = "SITSAS";
            //Your message to send, Add URL encoding here.
            String message = "";
			message=msg;
            //define route
            String route="4";

            //Prepare Url
            URLConnection myURLConnection=null;
            URL myURL=null;
            BufferedReader reader=null;

            //encoding message
           // String encoded_message=URLEncoder.encode(message);

            //Send SMS API
            String mainUrl="https://control.msg91.com/api/sendhttp.php?";
            //Prepare parameter string
            StringBuilder sbPostData= new StringBuilder(mainUrl);
			sbPostData.append("authkey="+authkey);
            sbPostData.append("&mobiles="+mobiles);
            sbPostData.append("&message="+message);
            sbPostData.append("&route="+route);
            sbPostData.append("&sender="+senderId);

            //final string
            mainUrl = sbPostData.toString();
            try
            {
                //prepare connection
                myURL = new URL(mainUrl);
                myURLConnection = myURL.openConnection();
                myURLConnection.connect();
                reader= new BufferedReader(new InputStreamReader(myURLConnection.getInputStream()));
                //reading response
                String response;
                while ((response = reader.readLine()) != null)
                //print response
                System.out.println(response);

                //finally close connection
                reader.close();
            }
            catch (IOException e)
            {
                    e.printStackTrace();
            }
        }
}