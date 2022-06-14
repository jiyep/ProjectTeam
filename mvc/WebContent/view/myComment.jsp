<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
	
	<!-- ================= ======================= -->

    <div class="myRecipe">
        <h1>작성한 댓글</h1>
        <div class="container">
            <ul class="my-comment">
                <li class="my-comment-list">
                    <img src="./img/fav7.jpeg" alt="#">
                    <div class="my-comment-list-item">
                        <a href="#"><h2 class="recipeName">레시피명</h2></a>
                        <p class="recipeComment">맛있겠네요!</p>
                    <p class="comment-data">등록일 2022/02/02</p>
                    <button>수정</button>
                    <button>삭제</button>
                    </div>
                </li>

                <li class="my-comment-list">
                    <img src="./img/fav8.jpeg" alt="#">
                    <div class="my-comment-list-item">
                        <a href="#"><h2 class="recipeName">레시피명</h2></a>
                        <p class="recipeComment">좋은 레시피 감사합니다^^</p>
                    <p class="comment-data">등록일 2022/02/02</p>
                    <button>수정</button>
                    <button>삭제</button>
                    </div>
                </li>

                <li class="my-comment-list">
                    <img src="./img/fav9.jpeg" alt="#">
                    <div class="my-comment-list-item">
                        <a href="#"><h2 class="recipeName">레시피명</h2></a>
                        <p class="recipeComment">만들어봐야겠어요</p>
                    <p class="comment-data">등록일 2022/02/02</p>
                    <button>수정</button>
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