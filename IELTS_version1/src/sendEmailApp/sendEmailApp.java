package sendEmailApp;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet(name = "sendEmailApp", urlPatterns = {"/sendemail"})
 
public class sendEmailApp extends HttpServlet {
	 private static final long serialVersionUID = 1L;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        PrintWriter out = response.getWriter();
        try {
            
            /*Get parameters from screen */
            String Email_Id = request.getParameter("emailId").trim();  
            String Email_password =request.getParameter("emailPassword").trim();
            String recipient_mail_id = request.getParameter("recipientEmailId");
            String mail_subject = request.getParameter("emailSubject").trim();
            String mail_body = request.getParameter("emailBody").trim();
            
            //Set mail properties
            Properties props = System.getProperties();
            String host_name = "smtp.gmail.com";
            props.put("mail.smtp.starttls.enable", "true");
            props.put("mail.smtp.host", host_name);
            props.put("mail.smtp.user", Email_Id);
            props.put("mail.smtp.password", Email_password);
            props.put("mail.smtp.port", "587");
            props.put("mail.smtp.auth", "true");
 
        Session session = Session.getDefaultInstance(props);
        MimeMessage message = new MimeMessage(session);
 
        try {
            //Set mail data 
            message.setFrom(new InternetAddress(Email_Id));
            message.addRecipient(Message.RecipientType.TO,new InternetAddress(recipient_mail_id));
            message.setSubject(mail_subject);
            message.setText(mail_body);
            
            //Conect to smtp server
            Transport transport = session.getTransport("smtp");            
            transport.connect(host_name, Email_Id, Email_password);
            transport.sendMessage(message, message.getAllRecipients());
            transport.close(); 
         
        }
            catch (MessagingException ex) {
                Logger.getLogger(sendEmailApp.class.getName()).log(Level.SEVERE, null, ex);
            }        catch (Exception ae) {
            ae.printStackTrace();
        }  
        }   
        catch(Exception exception)
        {
            exception.printStackTrace();
        }
    }
}

