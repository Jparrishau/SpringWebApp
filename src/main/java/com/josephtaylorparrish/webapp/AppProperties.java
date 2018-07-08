package com.josephtaylorparrish.webapp;

import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;

@Component
@ConfigurationProperties("springwebapp")
public class AppProperties {

	/**
	 * The title of the web application.
	 */
	private String title = "Welcome ";

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}
}