package com.minee.portfolio.contact;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ContactController {
	
	@RequestMapping(value = "contact", method = RequestMethod.POST)
	public String Contact() {
		return "contact/contact";
	}

}
