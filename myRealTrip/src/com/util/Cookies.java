package com.util;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

// Ïø†ÌÇ§ ?Å¥?ûò?ä§
public class Cookies {
	
	// HashMap ?Ñ†?ñ∏
	public  Map<String, Cookie> cookieMap =  new HashMap<>();
	
	// ?Éù?Ñ±?ûê
	public Cookies(HttpServletRequest request) {
		Cookie[] cookies = request.getCookies();
		if( cookies != null ) {
			for (int i = 0; i < cookies.length; i++) {
				// Îß?                       Ïø†ÌÇ§?ù¥Î¶?                    Ïø†ÌÇ§Í∞ùÏ≤¥
				cookieMap.put( cookies[i].getName() , cookies[i]);
			}
		}
	}
	
	// 
	public Cookie getCookie(String name) {
		return this.cookieMap.get(name);
	}
	
	// 
	public String getValue( String name) throws UnsupportedEncodingException {
		Cookie cookie = this.cookieMap.get(name);
		if( cookie == null ) return null;
		return URLDecoder.decode(cookie.getValue(), "UTF-8");
	}
	
	public boolean exists( String name ) {
		return this.cookieMap.get(name) != null;
	}
	
	public  static Cookie createCookie( String name, String value) throws UnsupportedEncodingException {
		return new Cookie(name, URLEncoder.encode(value, "UTF-8"));
	}
	
	public  static Cookie createCookie( String name, String value
			, String path, int maxAge) throws UnsupportedEncodingException {
		 Cookie cookie = new Cookie(name, URLEncoder.encode(value, "UTF-8"));
		 cookie.setPath(path);
		 cookie.setMaxAge(maxAge);
		 return cookie;
	}
	
	public  static Cookie createCookie( String name, String value
			, String domain
			, String path, int maxAge) throws UnsupportedEncodingException {
		 Cookie cookie = new Cookie(name, URLEncoder.encode(value, "UTF-8"));
		 cookie.setDomain(domain);
		 cookie.setPath(path);
		 cookie.setMaxAge(maxAge);
		 return cookie;
	}
}
