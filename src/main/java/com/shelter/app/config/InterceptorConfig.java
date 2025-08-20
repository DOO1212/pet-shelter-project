package com.shelter.app.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import com.shelter.app.interceptor.LogingInterceptor;

@Configuration
public class InterceptorConfig implements WebMvcConfigurer {
	@Autowired
	private LogingInterceptor logingInterceptor;
	
	// 인터셉터들을 registry에 추가하는 메서드
	@Override
	public void addInterceptors(InterceptorRegistry registry) {
		registry.addInterceptor(logingInterceptor).addPathPatterns("/", "/member/**");
	}
}
