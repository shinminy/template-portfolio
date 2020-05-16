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
@RequestMapping("portfolio")
public class PortfolioController {
	
	private final Logger logger = LoggerFactory.getLogger(PortfolioController.class);
	private final SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	
	private final String jspFile = "portfolio/portfolio";
	
	@RequestMapping(value = "", method = RequestMethod.GET)
	public String portfolio(HttpServletRequest request) {
		String currentTime = sdf.format(Calendar.getInstance().getTime());
		logger.info("[{}] {} accesses to Portfolio page.", currentTime, ClientUtils.getRemoteIP(request));
		
		return jspFile;
	}
	
	@RequestMapping(value = "/portfolio-a", method = RequestMethod.GET)
	public String showPortfolioA(HttpServletRequest request) {
		String currentTime = sdf.format(Calendar.getInstance().getTime());
		logger.info("[{}] {} accesses to Portfolio A page.", currentTime, ClientUtils.getRemoteIP(request));
		
		return (jspFile + "A");
	}
	
	@RequestMapping(value = "/portfolio-j", method = RequestMethod.GET)
	public String Contact(HttpServletRequest request) {
		String currentTime = sdf.format(Calendar.getInstance().getTime());
		logger.info("[{}] {} accesses to Portfolio J page.", currentTime, ClientUtils.getRemoteIP(request));
		
		return (jspFile + "J");
	}
	
	@RequestMapping(value = "/portfolio-s", method = RequestMethod.GET)
	public String portfolioS(HttpServletRequest request) {
		String currentTime = sdf.format(Calendar.getInstance().getTime());
		logger.info("[{}] {} accesses to Portfolio S page.", currentTime, ClientUtils.getRemoteIP(request));
		
		return (jspFile + "S");
	}

}
