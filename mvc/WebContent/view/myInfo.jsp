<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<style type="text/css">
#wrap {
	width: 1000px;
	margin: auto;
}

.wrap {
	width: 100%;
	height: 400px;
	display: flex;
	align-items: center;
	justify-content: center;
}

.info {
	width: 30%;
	height: 700px;
	display: flex;
	justify-content: center;
	align-items: center;
	flex-direction: column;
}

.btn {
	position: relative;
	left: 40%;
	transform: translateX(-50%);
	margin-bottom: 40px;
	width: 80%;
	height: 70px;
	background: linear-gradient(125deg, #ecea81, #22de73, #ecea81);
	background-position: left;
	background-size: 200%;
	color: white;
	font-weight: bold;
	border: none;
	cursor: pointer;
	transition: 0.4s;
	display: inline;
}

.btn:hover {
	background-position: right;
}
</style>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- ===============head include=============== -->
<jsp:include page="headInclude.jsp" flush="true" />

</head>

<body>

	<!-- ===============header include=============== -->
	<jsp:include page="headerInclude.jsp" flush="true" />


	<!--===============  마이페이지 초록색 메뉴바 ===============-->
	<jsp:include page="myPageInclude.jsp" flush="true" />

	<!--=============== 본문내용 ===============-->
	<section class="main">
		<div class="wrap">
			<div class="info">
				<button class="btn" type="button"
					onclick="location.href='myUpdate.jsp' ">정보수정</button>
				<button class="btn" type="button"
					onclick="location.href='main.jsp' ">회원탈퇴</button>
			</div>
		</div>
	</section>

	<!--=============== footer ===============-->
	<jsp:include page="footerInclude.jsp" flush="true" />
</body>
</html>