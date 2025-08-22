<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Member Detail</title>
	
	<c:import url="/WEB-INF/views/include/head.jsp"/>
</head>
<body id="top-header">
	<c:import url="/WEB-INF/views/include/topbar_others.jsp"/>
	
	<section class="section blog-wrap border-bottom">
	    <div class="container">
		<!-- Contents 시작 -->
		<div class="card">
			<div class="card-header"><b>회원정보</b></div>
			<div class="card-body">
				<div class="row">
					<b class="card-title col-lg-2">아이디</b>
					<p class="card-text col-lg-10">${member.username }</p>				
				</div>
				<div class="row">
					<b class="card-title col-lg-2">이름</b>
					<p class="card-text col-lg-10">${member.name }</p>				
				</div>
				<div class="row">
					<b class="card-title col-lg-2">성별</b>
					<p class="card-text col-lg-10">${member.gender }</p>				
				</div>
				<div class="row">
					<b class="card-title col-lg-2">나이</b>
					<p class="card-text col-lg-10">${member.age }</p>				
				</div>
				<div class="row">
					<b class="card-title col-lg-2">이메일</b>
					<p class="card-text col-lg-10">${member.email }</p>				
				</div>
				<div class="row">
					<b class="card-title col-lg-2">전화번호</b>
					<p class="card-text col-lg-10">${member.phone }</p>				
				</div>
				<div class="row">
					<b class="card-title col-lg-2">동물반려여부</b>
					<p class="card-text col-lg-10">${member.hasPet }</p>				
				</div>
				
				<br>
				
				<form action="/member/delete" method="post">
					<a href="/member/update" class="btn btn-primary">수정하기</a>
					<button class="btn btn-danger ml-3">회원탈퇴</button>				
				</form>
			</div>
		</div>
		<!-- Contents 끝 -->
		</div>
	</section>
	
	<c:import url="/WEB-INF/views/include/tail.jsp"/>
</body>
</html>