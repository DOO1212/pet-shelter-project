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

			<h2>공고번호 : ${detail.publicNumber}</h2>
			<h2>접수날짜 : ${detail.publicDate}</h2>
			<h2>품종 : ${detail.breed}</h2>
			<h2>성별 : ${detail.petGender eq 'M' ? '남자' : detail.petGender eq 'F' ? '여자' : '-'}</h2>
			<h2>중성화여부 : ${detail.isNeutered eq 1 ? '완료' : detail.isNeutered eq 0 ? '미완료' : '-'}</h2>
			<h2>나이 : ${detail.age}</h2>
			<h2>체중 : ${detail.weight}</h2>
			<h2>특징 : ${detail.feature}</h2>
			<h2>접종상태 : ${detail.vaccination}</h2>
			<h2>입양여부 : ${detail.isAdopted eq 1 ? '입양 완료' : detail.isAdopted eq 0 ? '입양 대기' : '-'}</h2>
			<div class="row">
				<a href="/donation/pay?petId=${petVO.petId}"><button class="btn btn-warning">후원하기</button></a>
				
				<c:forEach items="${member.roleVOs }" var="role">
					<c:if test="${role.authorId eq 2}">
						<a href="./update?petId=${detail.petId }" class="btn btn-primary ml-3">수정</a>
						<form action="./delete" method="post">
							<input type="hidden" name="petId" value="${detail.petId}">
							<button class="btn btn-danger ml-1">삭제</button>
						</form>
					</c:if>
				</c:forEach>
			</div>

			<c:if
				test="${not empty sessionScope.member.memberId == boardVO.memberId}">
				<div>
					<form action="./delete" method="post">
						<input type="hidden" name="petId" value="${detail.petId}">
						<a class="btn btn-success" href="./update?petId=${detail.petId}">Update</a>
						<button class="btn btn-danger">Delete</button>
					</form>
				</div>
			</c:if>
			<!-- Contents 끝 -->
		</div>
	</section>

	<c:import url="/WEB-INF/views/include/tail.jsp" />
</body>
</html>