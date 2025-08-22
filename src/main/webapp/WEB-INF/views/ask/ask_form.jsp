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
							<label for="title" class="form-label">제목</label> <input
								type="text" class="form-control" name="title" id="title"
								aria-describedby="writerHelp" value="${detail.title}">
						</div>

						<div>
							<label for="content" class="form-label">내용</label> <input
								type="text" class="form-control" name="content" id="content"
								aria-describedby="writerHelp" value="${detail.content}">
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