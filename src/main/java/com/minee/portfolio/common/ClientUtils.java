package com.minee.portfolio.common;

import javax.servlet.http.HttpServletRequest;

public class ClientUtils {
	
	public static String getRemoteIP(HttpServletRequest request){
		String clientIp;
		
		clientIp = request.getHeader("Proxy-Client-IP");
		
        if (clientIp == null || clientIp.length() == 0) {
        	
        	clientIp = request.getHeader("WL-Proxy-Client-IP");
        	
            if (clientIp == null || clientIp.length() == 0) {
            	
                clientIp = request.getHeader("X-Forwarded-For");
                
                if (clientIp == null || clientIp.length() == 0) {
                	
                    clientIp = request.getHeader("HTTP_CLIENT_IP");
                    
                    if (clientIp == null || clientIp.length() == 0) {
                    	
                    	clientIp = request.getHeader("HTTP_X_FORWARDED_FOR");
                    	
                    	if (clientIp == null || clientIp.length() == 0) {
                    		
                    		clientIp = request.getRemoteAddr();
                    		
                    	}
                    	
                    }
                    
                }
                
            }
            
        }
        
        return clientIp;
   }

}
