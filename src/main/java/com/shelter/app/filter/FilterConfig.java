package com.shelter.app.filter;
import org.springframework.boot.web.servlet.FilterRegistrationBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import jakarta.servlet.Filter;

@Configuration // 설정용 파일이라는 뜻
public class FilterConfig implements WebMvcConfigurer{

	@Bean
	FilterRegistrationBean<Filter> filterRegistrationBean() {
		FilterRegistrationBean<Filter> fr = new FilterRegistrationBean<>();
		
		fr.setFilter(new EncryptorFiltor());
		fr.addUrlPatterns("/**"); // 여기서 url 지정 가능
		fr.setOrder(1);
		
		return fr;
	}

}