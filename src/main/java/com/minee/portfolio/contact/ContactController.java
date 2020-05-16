package com.minee.portfolio.contact;

import java.text.SimpleDateFormat;
import java.util.Calendar;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.minee.portfolio.common.ClientUtils;

@Controller
@RequestMapping("contact")
public class ContactController {
	
	private final Logger logger = LoggerFactory.getLogger(ContactController.class);
	private final SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	
	@RequestMapping(value = "", method = {RequestMethod.POST, RequestMethod.GET})
	public String Contact(HttpServletRequest request) {
		String currentTime = sdf.format(Calendar.getInstance().getTime());
		logger.info("[{}] {} accesses to Contact page.", currentTime, ClientUtils.getRemoteIP(request));
		
		return "contact/contact";
	}
	
	@RequestMapping(value = "/sendMail.do", method = RequestMethod.POST)
	@ResponseBody
	public String sendMail(HttpServletRequest request, 
						@RequestParam(value="name") String name, 
						@RequestParam(value="mail") String mail, 
						@RequestParam(value="msg") String msg) {
		String result = "success";
		
		String currentTime = sdf.format(Calendar.getInstance().getTime());
		logger.info("[{}] {} send a mail.", currentTime, ClientUtils.getRemoteIP(request));
		/*
		if (name != null && mail != null && msg != null && !(name.equals("")) && !(mail.equals("")) && !(msg.equals(""))) {
			MailSend ms = new MailSend(name, mail, msg);
			logger.info("> Complete to send");
		} else {
			logger.info("> FAIL");
			result = "fail";
		}*/
		
		return result;
	}

}
