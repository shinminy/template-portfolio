package com.minee.portfolio.error;

import java.text.SimpleDateFormat;
import java.util.Calendar;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.minee.portfolio.common.ClientUtils;
import com.minee.portfolio.portfolio.PortfolioController;

@Controller
@RequestMapping("error")
public class ErrorController {
	
	private final Logger logger = LoggerFactory.getLogger(ErrorController.class);
	private final SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	
	private final String attributeName = "message";
	private final String jspFile = "error/error";
	
	@RequestMapping(value = "/throwable")
	public String throwable(HttpServletRequest request, Model model) {
		errorLog(request);
		
		model.addAttribute(attributeName, "예외가 발생하였습니다.");
		
		return jspFile;
	}
	
	@RequestMapping(value = "/exception")
	public String exception(HttpServletRequest request, Model model) {
		errorLog(request);
		
		model.addAttribute(attributeName, "예외가 발생하였습니다.");
		
		return jspFile;
	}
	
	@RequestMapping(value = "/400")
	public String error400(HttpServletRequest request, Model model) {
		errorLog(request);
		
		model.addAttribute(attributeName, "잘못된 요청입니다.");
		
		return jspFile;
	}
	
	@RequestMapping(value = "/403")
	public String error403(HttpServletRequest request, Model model) {
		errorLog(request);
		
		model.addAttribute(attributeName, "접근이 금지되었습니다.");
		
		return jspFile;
	}
	
	@RequestMapping(value = "/404")
	public String error404(HttpServletRequest request, Model model) {
		errorLog(request);
		
		model.addAttribute(attributeName, "요청하신 페이지는 존재하지 않습니다.");
		
		return jspFile;
	}
	
	@RequestMapping(value = "/405")
	public String error405(HttpServletRequest request, Model model) {
		errorLog(request);
		
		model.addAttribute(attributeName, "요청된 메소드가 허용되지 않습니다.");
		
		return jspFile;
	}
	
	@RequestMapping(value = "/500")
	public String error500(HttpServletRequest request, Model model) {
		errorLog(request);
		
		model.addAttribute(attributeName, "서버에 오류가 발생하였습니다.");
		
		return jspFile;
	}
	
	@RequestMapping(value = "/503")
	public String error503(HttpServletRequest request, Model model) {
		errorLog(request);
		
		model.addAttribute(attributeName, "서비스를 사용할 수 없습니다.");
		
		return jspFile;
	}
	
	private void errorLog(HttpServletRequest request) {
		String currentTime = sdf.format(Calendar.getInstance().getTime());
		logger.info("[{}] {} accesses to Error page.", currentTime, ClientUtils.getRemoteIP(request));
		
		logger.info("> status_code: " + request.getAttribute("javax.servlet.error.status_code"));
		logger.info("> exception_type: " + request.getAttribute("javax.servlet.error.exception_type"));
		logger.info("> message: " + request.getAttribute("javax.servlet.error.message"));
		logger.info("> request_uri: " + request.getAttribute("javax.servlet.error.request_uri"));
		logger.info("> exception: " + request.getAttribute("javax.servlet.error.exception"));
		logger.info("> servlet_name: " + request.getAttribute("javax.servlet.error.servlet_name"));
	}

}
