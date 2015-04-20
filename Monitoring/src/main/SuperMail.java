package main;

import java.util.Properties;
import javax.mail.*;
import javax.mail.Message.RecipientType;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import javax.mail.Session;

public class SuperMail {

	static String from = "vyom.jhs@gmail.com";
	static String host = "smtp.gmail.com";
	static String password = "preamkumar.jj.vyom.jhs828";
	static String port = "587";
	static String protocol = "smtp";
	static String smtpAuth = "true";
	static String sslEnable = "true";
	static String userName = from;

	public static String getFrom() {
		return from;
	}

	public static String getHost() {
		return host;
	}

	public static String getPassword() {
		return password;
	}

	public static String getPort() {
		return port;
	}

	public static String getProtocol() {
		return protocol;
	}

	public static String getSmtpAuth() {
		return smtpAuth;
	}

	public static String getSslEnable() {
		return sslEnable;
	}

	public static String getUserName() {
		return userName;
	}

	public static boolean sendMail(String to, String subject, String body)
			throws Exception {
		Properties prop;
		prop = new Properties();
		prop.put("mail.smtp.host", host);
		prop.put("mail.transport.protocol", protocol);
		prop.put("mail.smtp.port", port);
		prop.put("mail.smtp.auth", smtpAuth);
		prop.put("mail.smtp.starttls.enable", sslEnable);
		prop.put("mail.smtp.debug", "true");

		System.out.println(userName+password);

		MimeMessage message = new MimeMessage(setSession(userName, password,
				prop));

		message.setFrom(new InternetAddress(from));
		message.setSubject(subject);
		message.addRecipient(RecipientType.TO, new InternetAddress(to));

		Multipart multipart = new MimeMultipart();

		MimeBodyPart messageBodyPart = new MimeBodyPart();
                
		messageBodyPart.setText(body);
                
                
		// body part
		multipart.addBodyPart(messageBodyPart);
                message.saveChanges();
		message.setContent(multipart);
		Transport.send(message);
		System.out.println("Sent mail successfully....");
		return true;
	}

	public static void setFrom(String from) {
		SuperMail.from = from;
	}

	public static void setHost(String host) {
		SuperMail.host = host;
	}

	public static void setPassword(String password) {
		SuperMail.password = password;
	}

	public static void setPort(String port) {
		SuperMail.port = port;
	}

	public static void setProtocol(String protocol) {
		SuperMail.protocol = protocol;
	}

	static Session setSession(final String userName, final String password,
			Properties prop) {

		Session mailSession = Session.getInstance(prop, new Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(userName, password);
			}
		});
		mailSession.setDebug(true);
		return mailSession;

	}

	public static void setSmtpAuth(String smtpAuth) {
		SuperMail.smtpAuth = smtpAuth;
	}

	public static void setSslEnable(String sslEnable) {
		SuperMail.sslEnable = sslEnable;
	}

	public static void setUserName(String userName) {
		SuperMail.userName = userName;
	}

}
