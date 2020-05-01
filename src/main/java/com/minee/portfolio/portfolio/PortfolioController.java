package com.minee.portfolio.portfolio;

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
public class PortfolioController {
	
	private final Logger logger = LoggerFactory.getLogger(PortfolioController.class);
	private final SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	
	@RequestMapping(value = "portfolio", method = RequestMethod.GET)
	public String portfolio(HttpServletRequest request) {
		String currentTime = sdf.format(Calendar.getInstance().getTime());
		logger.info("[{}] {} accesses to Portfolio page.", currentTime, ClientUtils.getRemoteIP(request));
		
		return "portfolio/portfolio";
	}
	

	@RequestMapping(value = "portfolioj", method = RequestMethod.GET)
	public String Contact() {
		return "portfolio/portfolioJ";
	}

	@RequestMapping(value = "portfolioA", method = RequestMethod.GET)
	public String portfolioA() {
		return "portfolio/portfolioA";
	}


}
