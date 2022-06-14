<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html lang="kr">

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
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>중식게시판</title>
    
    <!-- ===============head include=============== -->
	<jsp:include page="headInclude.jsp" flush="true" />
    
</head>

<body>
    <!-- ===============header include=============== -->
	<jsp:include page="headerInclude.jsp" flush="true" />


	<!--=============== 한식~중식 선택 ===============-->

	<jsp:include page="selectInclude.jsp" flush="true" />

    <!--=============== 공지사항 표시 ===============-->
    <section class="main">
        <div id="wrap" >
            <h1>일식</h1>
            <br>
            <table>
                <tr>
                    <th>번호</th>
                    <th>제목</th>
                    <th>작성자</th>
                    <th>작성날짜</th>
                </tr>
 
                <tr>
                    <td>1</td>
                    <td>돈코츠 라멘</td>
                    <td>김뫄뫄</td>
                    <td>22.03.20</td>
                </tr>
            </table>
        </div>
    </section>
    

    <!--=============== footer ===============-->
	<jsp:include page="footerInclude.jsp" flush="true" />

</body>


</html>