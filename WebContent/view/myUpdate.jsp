<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<title>회원정보수정</title>

<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: "Noto Sans KR", sans-serif;
}

a {
	text-decoration: none;
	color: black;
}

li {
	list-style: none;
}

.wrap {
	width: 100%;
	height: 100vh;
	display: flex;
	align-items: center;
	justify-content: center;
	background: rgba(0, 0, 0, 0.1);
}

.loginP {
	width: 30%;
	height: 700px;
	background: white;
	border-radius: 20px;
	display: flex;
	justify-content: center;
	align-items: center;
	flex-direction: column;
}

h2 {
	color: #95F62C;
	font-size: 2em;
}

.login_name {
	margin-top: 20px;
	width: 80%;
}

.login_name input {
	width: 100%;
	height: 50px;
	border-radius: 30px;
	margin-top: 10px;
	padding: 0px 20px;
	border: 1px solid lightgray;
	outline: none;
}

.login_id {
	margin-top: 20px;
	width: 80%;
}

.login_id input {
	width: 100%;
	height: 50px;
	border-radius: 30px;
	margin-top: 10px;
	padding: 0px 20px;
	border: 1px solid lightgray;
	outline: none;
}

.login_pw {
	margin-top: 20px;
	width: 80%;
}

.login_pw input {
	width: 100%;
	height: 50px;
	border-radius: 30px;
	margin-top: 10px;
	padding: 0px 20px;
	border: 1px solid lightgray;
	outline: none;
}

.login_pw2 {
	margin-top: 20px;
	width: 80%;
}

.login_pw2 input {
	width: 100%;
	height: 50px;
	border-radius: 30px;
	margin-top: 10px;
	padding: 0px 20px;
	border: 1px solid lightgray;
	outline: none;
}

.submit {
	margin-top: 50px;
	width: 80%;
}

.inbu {
	width: 100%;
	height: 50px;
	border: 0;
	outline: none;
	border-radius: 40px;
	background: linear-gradient(to left, rgb(149, 246, 44),
		rgb(123, 206, 35));
	color: white;
	font-size: 1.2em;
	letter-spacing: 2px;
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

<% 
	request.setCharacterEncoding("utf-8");
	String id = (String)session.getAttribute("id");
	if(id!=null){
%>  
	<!--=============== 내용 ===============-->

	<div class="wrap">
		<div class="loginP">
			<h2>회원정보수정</h2>
			<form action="update.do">
				<div class="login_id">
					<h4>ID</h4>
					<input type="text" name="id" id="" value="<%=id%>">
				</div>
				<div class="login_name">
					<h4>Name</h4>
					<input type="text" name="name" id="" placeholder="Name">
				</div>
				<div class="login_pw">
					<h4>Password</h4>
					<input type="password" name="pw" id="pw1" placeholder="Password">
				</div>
				<div class="submit">
					<input class="inbu" type="submit" value="수정하기" />
				</div>
			</form>
		</div>
	</div>	
<%} %>		
	
	<!--=============== footer ===============-->
	<jsp:include page="footerInclude.jsp" flush="true" />

</body>
</html>