package com.minee.portfolio.about;

import java.text.SimpleDateFormat;
import java.util.Calendar;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.minee.portfolio.common.ClientUtils;

@Controller
public class AboutController {
	
	private final Logger logger = LoggerFactory.getLogger(AboutController.class);
	private final SimpleDateFormat sdf = new SimpleDateFormat ( "yyyy-MM-dd HH:mm:ss");
	
	@RequestMapping(value = "about", method = RequestMethod.GET)
	public String about(HttpServletRequest request) {
		String currentTime = sdf.format(Calendar.getInstance().getTime());
		logger.info("[{}] {} accesses to About page.", currentTime, ClientUtils.getRemoteIP(request));
		
		return "about/about";
	}

}
