<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<style>

    #wrap {
        width: 1000px;
	    margin:auto;
    }

    .wrap {
        width: 100%;
        height: 100vh;
        display: flex;
        align-items: center;
        justify-content: center;
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
    .bu {
        width: 100%;
        height: 50px;
        border: 0;
        outline: none;
        border-radius: 40px;
        background: linear-gradient(to left, rgb(149, 246, 44), rgb(123, 206, 35));
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


	<!--=============== 공지사항 표시 ===============-->
    <section class="main">
        <div class="wrap">
            <div class="loginP">
                <h2>로그인</h2>
                <form action="loginIn.do" method="post">
                <div class="login_id">
                    <h4>ID</h4>
                    <input type="text" name="id" id="" placeholder="ID">
                </div>
                <div class="login_pw">
                    <h4>Password</h4>
                    <input type="password" name="pw" id="pw1" placeholder="Password">
                </div>
                <div class="submit">
                    <button class="bu" type="button"  onclick="location.href='main.do' ">로그인</button>
                </div>
                <div class="submit">
                    <button  class="bu" type="button" onclick="location.href='insertForm.do' ">회원가입</button>
                </div>
                </form>
            </div>
        </div>
    </section>
    
    <!--=============== footer ===============-->
	<jsp:include page="footerInclude.jsp" flush="true" />

</body>
</html>