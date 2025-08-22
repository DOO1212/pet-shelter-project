<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Pet</title>

<c:import url="/WEB-INF/views/include/head.jsp" />
</head>
<body id="top-header">
	<c:import url="/WEB-INF/views/include/topbar_others.jsp" />

	<section class="section blog-wrap border-bottom">
		<div class="container">
			<!-- Contents 시작 -->

			<table class="table table-striped">
				<thead>
					<tr>
						<th>동물번호</th>
						<th>공고번호</th>
						<th>접수날짜</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${list}" var="petVO">
						<c:if test="${petVO.petNonExpired != 0 }">
							<tr>
								<td>${petVO.petId}</td>
								<td><a href="./detail?petId=${petVO.petId}">${petVO.publicNumber}</a></td>
								<td>${petVO.publicDate}</td>
							</tr>
						</c:if>
					</c:forEach>
				</tbody>
			</table>
			
			<div>
				<c:forEach items="${member.roleVOs }" var="role">
					<c:if test="${role.authorId eq 2}">
						<a href="./add" class="btn btn-success">등록</a>
					</c:if>
				</c:forEach>
			</div>
			<!-- Contents 끝 -->
		</div>
	</section>

	<c:import url="/WEB-INF/views/include/tail.jsp" />
</body>
</html>