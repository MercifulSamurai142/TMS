package bean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class CreateUser {
	private static int response=0;
	public int newUser(Credentials crds) throws SQLException {
		Connection conn=new ConnectDB().connect();
		PasswordGenerator psgen = new PasswordGenerator();
		psgen.generate();
		crds.setPassword(psgen.getPass());
		String sql_add_user="insert into login (password, type, name, gender, email, number) values (? ,? , ?, ?, ?, ?);";
		PreparedStatement ps = conn.prepareStatement(sql_add_user);
		ps.setString(1, (crds.getPassword()));
		ps.setString(2, (crds.getType()));
		ps.setString(3, (crds.getName()));
		//ps.setDate(4 , null);
		ps.setString(4, (crds.getGender()));
		ps.setString(5, (crds.getEmail()));
		ps.setString(6, (crds.getPhone()));
		response=ps.executeUpdate();
		return response;
	}
	
	public int newTable(Credentials crds) throws SQLException {//create new table to store schedule of new user
		Connection conn=new ConnectDB().connect();
		String sql_add_table="create table ? (date DATE ,time INT(1) ,purpose VARCHAR(50) NOT NULL,priority VARCHAR(1),PRIMARY KEY(date ,time));";
		String sql_get_uid="select uid from login where email = ?";
		String table_name="";
		
		
		PreparedStatement ps_uid = conn.prepareStatement(sql_get_uid);
		ps_uid.setString(1,crds.getEmail());
		
		
		ResultSet rs = ps_uid.executeQuery();
		while(rs.next()) {
			crds.setUid(Long.toString(rs.getLong("uid")));
		}
		
		table_name=(crds.getType().toLowerCase())+crds.getUid();
		sql_add_table=sql_add_table.replace("?", table_name);
		System.out.println(sql_add_table);
		PreparedStatement ps_table = conn.prepareStatement(sql_add_table);
		response=ps_table.executeUpdate();//response = 0 always
//		if(response==1) {
//			
//		}
		System.out.println(response);
		sendNotification(crds);
		System.out.println(response);
		return response;
	}
	public void sendNotification(Credentials crds) {
		String subject="TMS Account Details";
        // Mention the Recipient's email address
        String to = crds.getEmail();
        // Mention the Sender's email address
        String from = "arka.chowdhury.2001@gmail.com";
        // Mention the SMTP server address. Below Gmail's SMTP server is being used to send email
        String host = "smtp.gmail.com";
        
        // Get system properties
        Properties properties = System.getProperties();
        // Setup mail server
        properties.put("mail.smtp.host", host);
        properties.put("mail.transport.protocol", "smtp");
        properties.put("mail.smtp.port", "465");
        properties.put("mail.smtp.ssl.enable", "true");
        properties.put("mail.smtp.auth", "true");
        properties.put("mail.smtp.ssl.protocols", "TLSv1.2");
        
        
        // Get the Session object.// and pass username and password
        Session session = Session.getInstance(properties, new javax.mail.Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication("arka.chowdhury.2001@gmail.com", "ngjwiucwklaslkrq");
            }
        });
        // Used to debug SMTP issues
        session.setDebug(true);
        try {
            // Create a default MimeMessage object.
            MimeMessage message1 = new MimeMessage(session);
            // Set From: header field of the header.
            message1.setFrom(new InternetAddress(from));
            // Set To: header field of the header.
            message1.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
			// Set Subject: header field
            message1.setSubject(subject);
            // Now set the actual message
            message1.setText("Thank you "+ crds.getName() +"\nYour uid is "+crds.getUid() +"\nYour password to login to TMS is "+crds.getPassword());
            System.out.println("sending...");
            // Send message
            Transport.send(message1);
            System.out.println("Sent message successfully....");
        } 
        catch (MessagingException mex) {
            mex.printStackTrace();
        }
    }
}