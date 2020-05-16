package com.minee.portfolio.main;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController {

	private static final Logger logger = LoggerFactory.getLogger(MainController.class);
	private final SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String showMain(Locale locale) {
		String currentTime = sdf.format(Calendar.getInstance().getTime());
		logger.info("[{}] Welcome main!", currentTime);
		return "main/main";
	}

}
