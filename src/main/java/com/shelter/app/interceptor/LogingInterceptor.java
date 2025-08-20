package com.shelter.app.interceptor;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.extern.slf4j.Slf4j;

@Component
@Slf4j
public class LogingInterceptor implements HandlerInterceptor {
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		log.info("[요청] {} {}", request.getMethod(), request.getRequestURI()); 
		
		return true; // 로그를 출력하고 그 다음 행동을 항상 수행하도록 하기 위해
	}
}
