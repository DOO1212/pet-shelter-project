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

						<div>
							<label for="gender" class="form-label">성별</label> <input
								type="text" class="form-control" name="gender" id="gender"
								aria-describedby="writerHelp" value="${detail.gender}">
						</div>

						<div>
							<label for="isNeutered" class="form-label">중성화여부</label> <input
								type="number" class="form-control" name="isNeutered"
								id="isNeutered" aria-describedby="writerHelp"
								value="${detail.isNeutered}">
						</div>

						<div>
							<label for="age" class="form-label">나이</label> <input
								type="number" class="form-control" name="age" id="age"
								aria-describedby="writerHelp" value="${detail.age}">
						</div>

						<div>
							<label for="weight" class="form-label">체중</label> <input
								type="number" class="form-control" name="weight" id="weight"
								aria-describedby="writerHelp" value="${detail.weight}">
						</div>

						<div>
							<label for="feature" class="form-label">특징</label> <input
								type="text" class="form-control" name="feature" id="feature"
								aria-describedby="writerHelp" value="${detail.feature}">
						</div>

						<div>
							<label for="vaccination" class="form-label">접종상태</label> <input
								type="text" class="form-control" name="vaccination"
								id="vaccination" aria-describedby="writerHelp"
								value="${detail.vaccination}">
						</div>

						<div>
							<label for="isAdopted" class="form-label">입양여부</label> <input
								type="number" class="form-control" name="isAdopted" id="isAdopted"
								aria-describedby="writerHelp" value="${detail.isAdopted}">
						</div>

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