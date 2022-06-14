<!-- header 부분 include -->

<%@ page contentType="text/html; charset=UTF-8" %>
	<!--=============== header ===============-->
    <header>
        <div class="container header-wrapper">
            <div class="header-left-title">
                <a class="logo" href="main.jsp">recipes</a>
            </div>
            <div class="searchArea" id="makeImg">
                <form id="form4" action="#" method="post">
                    <input type="text" id="inText" class="searchText" />
                    <button class="searchButton" id="sbtn4" type="submit"><i
                            class="fas fa-search searchImg"></i></button>
                </form>
            </div>
            <div class="header-right-item">
                <ul class="header-list-item">
                    <li class="login" title="로그인"><a href="login.jsp"><i class="fa-solid fa-arrow-right-to-bracket icon"></i></a></li>
                    <li class="write" title="게시글작성"><a href="write.jsp"><i class="fa-solid fa-pen-to-square icon"></i></a></li>
                    <li class="my-page" title="마이페이지"><a href="myPage.jsp" class="drawer"><i class="fa-regular fa-user icon"></i></a></li>
                </ul>
            </div>
        </div>
    </header>