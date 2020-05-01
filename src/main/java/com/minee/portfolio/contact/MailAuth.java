package com.minee.portfolio.contact;

import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;

public class MailAuth extends Authenticator {
	
	PasswordAuthentication pa;
	
	public MailAuth() {
		String mailId = "ceres.minee";
		String mailPw = "qqww11@@";
		
		pa = new PasswordAuthentication(mailId, mailPw);
	}
	
	public PasswordAuthentication getPasswordAuthentication() {
		return pa;
	}
}