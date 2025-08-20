package com.shelter.app.filter;

import java.io.IOException;

import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebFilter(urlPatterns = {"/*", "/member/*"})
public class EncryptorFiltor extends HttpFilter {
	private static final long serialVersionUID = 1L;

	@Override
	public void doFilter(HttpServletRequest request, HttpServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		
		PasswordEncryptorWrapper pew = new PasswordEncryptorWrapper((HttpServletRequest)request);
//		System.out.println("[EncryptorFiltor] password: " + pew.getParameter("password")); 
		chain.doFilter(pew, response);
	}
}
