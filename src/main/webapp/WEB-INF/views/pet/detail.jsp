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

			<h1>동물</h1>
			<h2>동물번호 : ${detail.petId}</h2>
			<h2>공고번호 : ${detail.publicNumber} </h2>
			<h2>접수날짜 : ${detail.publicDate} </h2>
			<h2>품종 : ${detail.breed} </h2>
			<h2>성별 : ${detail.petGender} </h2>
			<h2>중성화여부 : ${detail.isNeutered} </h2>
			<h2>나이 : ${detail.age} </h2>
			<h2>체중 : ${detail.weight} </h2>
			<h2>특징 : ${detail.feature} </h2>
			<h2>접종상태 : ${detail.vaccination} </h2>
			<h2>입양여부 : ${detail.isAdopted} </h2>
			
			
			<!-- passing7by 시작 -->
			<br>
			
			<div class="row">
				<form action="/member/bookmark/add" method="post">
					<input type="hidden" name="petId" value="${detail.petId}">
					<button class="btn btn-warning">즐겨찾기 추가</button>
				</form>
				<form action="/donation/widget" method="get" class="ml-4">
					<input type="hidden" name="petId" value="${detail.petId}">
					<button class="btn btn-success">후원하기</button>
				</form>
			</div>
			<!-- passing7by 끝 -->
			<!-- Contents 끝 -->
		</div>
	</section>

	<c:import url="/WEB-INF/views/include/tail.jsp" />
</body>
</html>