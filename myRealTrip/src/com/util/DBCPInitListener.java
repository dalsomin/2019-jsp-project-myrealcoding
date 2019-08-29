package com.util;

import java.io.IOException;
import java.io.StringReader;
import java.util.Properties;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

// @WebListener
public class DBCPInitListener implements ServletContextListener{

	@Override
	public void contextDestroyed(ServletContextEvent sce) {
		//
		System.out.println("> DBCPInitListener.contextDestroyed()...");
	}

	@Override
	public void contextInitialized(ServletContextEvent sce) { 
		//
		System.out.println("> DBCPInitListener.contextInitialized()...");
		// DBCP
		// jsp application Í∏∞Î≥∏ Í∞ùÏ≤¥
		String poolConfig =  sce.getServletContext().getInitParameter("poolConfig");
		Properties prop = new Properties();
		try {
			// StringReader ?Å¥?ûò?ä§ ?ñ∏?†ú ? 
			prop.load(new StringReader(poolConfig));
		} catch (IOException e) { 
			e.printStackTrace();
		}
		System.out.println( prop.getProperty("url") );
	}

}








