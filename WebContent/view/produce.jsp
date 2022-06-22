<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<style>

    #wrap {
        width: 1000px;
	    margin:auto;
    }

    h3 {
        font-family: 'Pretendard-Thin';
        color: black;
        text-align: center;
        font-style: italic;
        font-weight: lighter;
        margin-top: 50px;
        font-size: 20px;
    }

    h5 {
        font-family: 'Pretendard-Thin';
        color: black;
        text-align: center;
        font-style: italic;
        font-weight: lighter;
        margin-top: 50px;
        font-size: 20px;
    }

    .one {
        background-size: cover;
        text-align: center;
        padding-top: 120px;
        padding-bottom: 130px;
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
        <div  id="wrap" class="list">
            <div class="one">
              <h3><strong>여러분의 레시피를 보여주세요</strong> <br> 나만의 꿀조합 레시피를 이곳에서 공유하세요</h3>
              <h5>제작자 > 박지예,  스기우라 아이나,  전준</h5>
            </div>
        </div>
    </section>
	
	<!--=============== footer ===============-->
	<jsp:include page="footerInclude.jsp" flush="true" />

</body>
</html>