<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<style>
    #wrap {
        width: 1000px;
	    margin:auto;
    }
    h1{
        color: black;
        text-align: center;
    }
    table{
        width: 100%;
        border-collapse: collapse;
        line-height: 24px;
    }
    table td,th {
        color: black;
        border-top:1px solid black;
        border-bottom:1px solid black;
        border-collapse: collapse;
        text-align: center;
        padding: 10px;
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
	
	<!--=============== 공지사항 표시 ===============-->
    <section class="main">
        <div id="wrap" >
            <h1>공지사항</h1>
            <br>
            <table>
                <tr>
                    <th>번호</th>
                    <th>제목</th>
                    <th>작성자</th>
                    <th>작성날짜</th>
                </tr>
                <tr>
                    <td>3</td>
                    <td>회원탈퇴관련</td>
                    <td>관리자</td>
                    <td>22.04.26</td>
                </tr>
                <tr>
                    <td>2</td>
                    <td>댓글 등록</td>
                    <td>관리자</td>
                    <td>22.04.14</td>
                </tr>
                <tr>
                    <td>1</td>
                    <td>레시피 등록</td>
                    <td>관리자</td>
                    <td>22.03.20</td>
                </tr>
            </table>
        </div>
    </section>
	
	<!--=============== footer ===============-->
	<jsp:include page="footerInclude.jsp" flush="true" />

</body>
</html>