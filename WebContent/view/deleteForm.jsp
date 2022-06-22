<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<style type="text/css">
#wrap {
	width: 1000px;
	margin: auto;
}

.inputForm {
        width: 100%;
        height: 50px;
        border-radius: 30px;
        margin: 10px;
        padding: 0px 20px;
        border: 1px solid lightgray;
        outline: none;
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

<% String id = (String)session.getAttribute("id");
	if(id!=null){
%>  
	<!--=============== 본문내용 ===============-->
	<section class="main">
	<div class="wrap">
		<div class="info">
			<form action="delete.do">
				<div class="delete">
					<h4>회원탈퇴 하시겠습니까?</h4>
					<input type="text" name="id" id="id" value="<%=(String)session.getAttribute("id") %>" class="inputForm">
				<div class="submit">
					<input class="btn" type="submit" value="회원탈퇴" />
				</div>
			</form>
			
			<button class="btn" type="button"
					onclick="location.href='main.jsp' ">취소</button>
	</div>
	</section>
	
<%}else{ %>		
	<script> alter("로그인 후 이용해 주세요")</script>
<%} %>
	<!--=============== footer ===============-->
	<jsp:include page="footerInclude.jsp" flush="true" />
</body>
</html>