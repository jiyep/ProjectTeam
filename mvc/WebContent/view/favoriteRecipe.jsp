<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>

<!-- ===============head include=============== -->
<jsp:include page="headInclude.jsp" flush="true" />

</head>

<body>

	<!-- ===============header include=============== -->
	<jsp:include page="headerInclude.jsp" flush="true" />


	<!--===============  마이페이지 초록색 메뉴바 ===============-->
	<jsp:include page="myPageInclude.jsp" flush="true" />
	
	<div class="myRecipe">
        <h1>찜한 레시피</h1>
        <div class="container ">
            <ul class="recipe">
                <li class="myRecipe-list">
                    <img src="./img/fav4.jpeg" alt="#">
                    <div class="myRecipe-list-item">
                        <a href="#"><h2 class="recipeName">레시피명</h2></a>
                    <p>등록일 2022/02/02</p>
                    <button>삭제</button>
                    </div>
                </li>

                <li class="myRecipe-list">
                    <img src="./img/fav5.jpeg" alt="#">
                    <div class="myRecipe-list-item">
                        <a href="#"><h2 class="recipeName">레시피명</h2></a>
                    <p>등록일 2022/02/02</p>
                    <button>삭제</button>
                    </div>
                </li>

                <li class="myRecipe-list">
                    <img src="./img/fav6.jpeg" alt="#">
                    <div class="myRecipe-list-item">
                        <a href="#"><h2 class="recipeName">레시피명</h2></a>
                    <p>등록일 2022/02/02</p>
                    <button>삭제</button>
                    </div>
                </li>
            </ul>
        </div>
    </div>
	<!--=============== footer ===============-->
	<jsp:include page="footerInclude.jsp" flush="true" />

</body>
</html>