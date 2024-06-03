package controler;


import java.util.Properties;
import java.util.Random;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.activation.DataHandler;
import javax.activation.DataSource;


/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
/**
 *
 * @author hoangduc
 */
public class SendEmail {

    public String getRandom() {
        Random rnd = new Random();
        int number = rnd.nextInt(999999);
        return String.format("%06d", number);
    }

    public boolean sendEmail(String toEmail, String code) {
        boolean test = false;
        String fromEmail = "hoangvietduc19602@gmail.com";
        String password = "ywpcpmfyqgadmwui";

        try {
            Properties pr = new Properties();

            pr.put("mail.smtp.host", "smtp.gmail.com");
            pr.put("mail.smtp.port", "587");
            pr.put("mail.smtp.auth", "true");
            pr.put("mail.smtp.starttls.enable", "true");
//            pr.put("mail.smtp.socketFactory.port", "857");
//            pr.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
//            
            Authenticator auth = new Authenticator() {
                @Override
                protected PasswordAuthentication getPasswordAuthentication() {
                    return new PasswordAuthentication(fromEmail, password);
                }
            };

            Session session = Session.getInstance(pr, auth);

            // tạo 1 tin nhắn
            MimeMessage mess = new MimeMessage(session);
            mess.addHeader("Content-type", "text/HTML");
            mess.setFrom(new InternetAddress(fromEmail));
            mess.setRecipients(Message.RecipientType.TO, InternetAddress.parse(toEmail, false));
            // tieu de
            mess.setSubject("user mail verification ");
            // noi dung 
            mess.setText("code is : " + code);
            Transport.send(mess);
            test = true;
        } catch (Exception e) {
        }
        return test;
    }

    public static void main(String[] args) {
        String fromEmail = "hoangvietduc19602@gmail.com";
        String password = "ywpcpmfyqgadmwui";
        final String toEmail = "duchvhe176767@fpt.edu.vn";
        try {
            Properties pr = new Properties();

            pr.put("mail.smtp.host", "smtp.gmail.com");
            pr.put("mail.smtp.port", "587");
            pr.put("mail.smtp.auth", "true");
            pr.put("mail.smtp.starttls.enable", "true");
            Authenticator auth = new Authenticator() {
                @Override
                protected PasswordAuthentication getPasswordAuthentication() {
                    return new PasswordAuthentication(fromEmail, password);
                }
            };

            Session session = Session.getInstance(pr, auth);

            // tạo 1 tin nhắn
            MimeMessage mess = new MimeMessage(session);
            mess.addHeader("Content-type", "text/HTML; charset=UTF-8");
            mess.setFrom(new InternetAddress(fromEmail));
            mess.setRecipients(Message.RecipientType.TO,  InternetAddress.parse(toEmail));
            // tieu de
            mess.setSubject("user mail verification ");
            // noi dung 
            mess.setText("code is : ", "UTF-8");
            Transport.send(mess);
            System.out.println("done.");
        } catch (Exception e) {
            System.out.println(e.getMessage());
            e.printStackTrace();
        }
    }
}
