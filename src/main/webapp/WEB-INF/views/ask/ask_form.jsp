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

			<div class="row justify-content-center">
				<div>
					<form method="post">
						<div>
							<label for="publicNumber" class="form-label">공고번호</label> <input
								type="text" class="form-control" name="publicNumber"
								id="publicNumber" aria-describedby="writerHelp"
								value="${detail.publicNumber}">
						</div>

						<div>
							<label for="breed" class="form-label">품종</label> <input
								type="text" class="form-control" name="breed" id="breed"
								aria-describedby="writerHelp" value="${detail.breed}">
						</div>

						<label for="petGender" class="form-label">성별</label> <select
							class="form-control form-select" name="petGender">
							<option value="0" ${detail.petGender eq "0"?'selected':''}>남자</option>
							<option value="1" ${detail.petGender eq "1"?'selected':''}>여자</option>
						</select>







						<button type="submit" class="btn btn-primary">Submit</button>
					</form>
				</div>
			</div>

			<!-- Contents 끝 -->
		</div>
	</section>

	<c:import url="/WEB-INF/views/include/tail.jsp" />
</body>
</html>