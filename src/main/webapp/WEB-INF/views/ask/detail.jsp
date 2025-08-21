<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<c:import url="/WEB-INF/views/include/head.jsp" />
</head>
<body id="top-header">
	<c:import url="/WEB-INF/views/include/topbar_others.jsp" />

	<section class="section blog-wrap border-bottom">
		<div class="container">
			<!-- Contents 시작 -->

			<h1>문의</h1>
			<h2>문의번호 : ${detail.askId}</h2>
			<h2>회원번호 : ${detail.memberId}</h2>
			<h2>제목 : ${detail.title}</h2>
			<h2>내용 : ${detail.content}</h2>
			<h2>등록날짜 : ${detail.createdAt}</h2>
			<h2>수정날짜 : ${detail.updatedAt}</h2>

			<div>
				<form action="./delete" method="post">
					<input type="hidden" name="askId" value="${detail.askId}">
					<a class="btn btn-success" href="./update?askId=${detail.askId}">Update</a>
					<button class="btn btn-danger">Delete</button>
				</form>
			</div>

			<!-- Contents 끝 -->
		</div>
	</section>

	<c:import url="/WEB-INF/views/include/tail.jsp" />
</body>
</html>