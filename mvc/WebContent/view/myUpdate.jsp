<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<title>회원정보수정</title>

<style type="text/css">
	* {
  margin: 0px;
  padding: 0px;
  text-decoration: none;
  font-family:sans-serif;

}

body {
  background-image:#34495e;
}

.joinForm {
  position:absolute;
  width:400px;
  height:400px;
  padding: 30px, 20px;
  background-color:#FFFFFF;
  text-align:center;
  top:40%;
  left:50%;
  transform: translate(-50%,-50%);
  border-radius: 15px;
}

.joinForm h2 {
  text-align: center;
  margin: 30px;
}

.textForm {
  border-bottom: 2px solid #adadad;
  margin: 30px;
  padding: 10px 10px;
}


.id {
  width: 100%;
  border:none;
  outline:none;
  color: #636e72;
  font-size:16px;
  height:25px;
  background: none;
}

.pw {
  width: 100%;
  border:none;
  outline:none;
  color: #636e72;
  font-size:16px;
  height:25px;
  background: none;
}

.name {
  width: 100%;
  border:none;
  outline:none;
  color: #636e72;
  font-size:16px;
  height:25px;
  background: none;
}

.email {
  width: 100%;
  border:none;
  outline:none;
  color: #636e72;
  font-size:16px;
  height:25px;
  background: none;
}

.nickname {
  width: 100%;
  border:none;
  outline:none;
  color: #636e72;
  font-size:16px;
  height:25px;
  background: none;
}

.cellphoneNo {
  width: 100%;
  border:none;
  outline:none;
  color: #636e72;
  font-size:16px;
  height:25px;
  background: none;
}

.btn {
  position:relative;
  left:40%;
  transform: translateX(-50%);
  margin-bottom: 40px;
  width:80%;
  height:40px;
  background: linear-gradient(125deg,#81ecec,#6c5ce7,#81ecec);
  background-position: left;
  background-size: 200%;
  color:white;
  font-weight: bold;
  border:none;
  cursor:pointer;
  transition: 0.4s;
  display:inline;
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

<!-- 


********겹쳐서 보이는거 나중에 시간이있으면 수정하기!!!! ********


-->

	<!-- ===============header include=============== -->
	<jsp:include page="headerInclude.jsp" flush="true" />


	<!--===============  마이페이지 초록색 메뉴바 ===============-->
	<jsp:include page="myPageInclude.jsp" flush="true" />
	
	<!--=============== 본문내용 ===============-->
	<section class="main">
       
	<form action="updatePro.jsp" method="POST" class="joinForm" onsubmit="DoJoinForm__submit(this); return false;">
                                                                                               
      <h2>회원정보 수정</h2>
      <div class="textForm">
      	아이디<br><br>
        <input name="loginId" type="text" class="id" >
      </div>
      <div class="textForm">
      	비밀번호<br><br>
        <input name="loginPw" type="password" class="pw">
      </div>
      <div class="textForm">
      	이름<br><br>
        <input name="name" type="text" class="name">
      </div>
       <div class="textForm">
       	이메일<br><br>
        <input name="email" type="text" class="email">
      </div>
      <div class="textForm">
      	전화번호<br><br>
        <input name="cellphoneNo" type="number" class="cellphoneNo">
      </div>
      <button class="btn" type="button"  onclick="location.href='myinfo.html' ">변경저장</button>
    </form>
    </section>
    
    <!--=============== footer ===============-->
	<jsp:include page="footerInclude.jsp" flush="true" />
    
</body>
</html>