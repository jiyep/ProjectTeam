<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

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

	<!--=============== 내용 ===============-->

	<div class="wrap">
		<div class="loginP">
			<h2>회원가입</h2>
			<form action="insert.do">
				<div class="login_name">
					<h4>Name</h4>
					<input type="text" name="name" id="" placeholder="Name">
				</div>
				<div class="login_id">
					<h4>ID</h4>
					<input type="text" name="id" id="" placeholder="ID">
				</div>
				<div class="login_pw">
					<h4>Password</h4>
					<input type="password" name="pw" id="pw1" placeholder="Password">
				</div>
				<div class="login_pw2">
					<h4>PasswordCheck</h4>
					<input type="password" name="pw" id="pw2" placeholder="Password">
				</div>
				<div class="submit">
					<input class="inbu" type="submit" value="회원가입" />
				</div>
			</form>
		</div>
	</div>


	<!--=============== footer ===============-->
	<jsp:include page="footerInclude.jsp" flush="true" />

</body>
<script>
    // 온클릭이벤트
    function gid(id){
        return document.getElementById(id);
    }

    function pwdCheck(){
        let pw1 = gid('pw1').vlaue;
        let pw2 = gid('pw2').vlaue;
        let SC = ["!", "@", "#", "$", "%"];
        
        if(pw1.length)
        //조건문 value값 갖고오기
        window.alert("비밀번호에 특수문자가 없습니다.")
        window.alert("이미 존재하는 아이디입니다.")
    }
</script>
</html>