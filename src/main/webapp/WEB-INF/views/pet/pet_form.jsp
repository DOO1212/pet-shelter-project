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
							<label for="publicNumber" class="form-label">공고번호</label>
							<input
								type="text" class="form-control" name="publicNumber"
								id="publicNumber" aria-describedby="writerHelp"
								value="${detail.publicNumber}" 
								${detail != null ? 'disabled' : ''}>
						</div>

						<div>
							<label for="breed" class="form-label">품종</label>
							<input
								type="text" class="form-control" name="breed" id="breed"
								aria-describedby="writerHelp" value="${detail.breed}"
								${detail != null ? 'disabled' : ''}>
						</div>

						<label for="petGender" class="form-label">성별</label>
						<select
							class="form-control form-select" name="petGender"
							${detail != null ? 'disabled' : ''}>
							<option value="M" ${detail.petGender eq "M"?'selected':''}>남자</option>
							<option value="F" ${detail.petGender eq "F"?'selected':''}>여자</option>
						</select>


						<label for="isNeutered" class="form-label">중성화여부</label> <select
							class="form-control form-select" name="isNeutered">
							<option value="1" ${detail.isNeutered eq '1'?'selected':''}>중성화완료</option>
							<option value="0" ${detail.isNeutered eq '0'?'selected':''}>미중성화</option>
						</select>

						<div>
							<label for="age" class="form-label">나이</label>
							<input
								type="number" class="form-control" name="age" id="age"
								aria-describedby="writerHelp" value="${detail.age}"
								${detail != null ? 'disabled' : ''}>
						</div>

						<div>
							<label for="weight" class="form-label">체중</label>
							<input
								type="number" class="form-control" name="weight" id="weight"
								aria-describedby="writerHelp" value="${detail.weight}">
						</div>

						<div>
							<label for="feature" class="form-label">특징</label>
							<input
								type="text" class="form-control" name="feature" id="feature"
								aria-describedby="writerHelp" value="${detail.feature}">
						</div>
						
						<div>
							<label for="vaccination" class="form-label">접종상태</label>
							<input
								type="text" class="form-control" name="vaccination" id="vaccination"
								aria-describedby="writerHelp" value="${detail.vaccination}">
						</div>
						
						<div>
							<label for="isAdopted" class="form-label">입양여부</label>
							<select
								class="form-control form-select" name="isAdopted">
								<option value="1" ${detail.isAdopted eq '1'?'selected':''}>입양완료</option>
								<option value="0" ${detail.isAdopted eq '0'?'selected':''}>입양대기</option>
							</select>
						</div>
						
						<br>
						
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