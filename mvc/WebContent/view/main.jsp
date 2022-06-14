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


	<!--=============== 한식~중식 선택 ===============-->

	<jsp:include page="selectInclude.jsp" flush="true" />

	<!--=============== 추천메뉴 슬라이드로 표시, 랭킹 ===============-->
	<section class="main">
		<div class="container main-item">
			<div class="main-item-left">
				<h2>오늘의 추천 메뉴</h2>

				<div class="slide">
					<img alt="image1" src="./img/1.jpeg" /> <img alt="image2"
						src="./img/2.jpeg" /> <img alt="image3" src="./img/3.jpeg" />
				</div>


			</div>

			<div class="main-item-right">
				<h2>조회 랭킹</h2>
				<ul class="rank-list">
					<li class="rank-list-li">
						<div class="rank-image-and-text">
							<div class="rank-text-div">
								<p class="rank-text rank1">1위</p>
							</div>
							<img src="./img/rank1.jpeg" alt="">
							<p class="recipe-name">요리명</p>
						</div>
					</li>

					<li class="rank-list-li">
						<div class="rank-image-and-text">
							<div class="rank-text-div">
								<p class="rank-text rank2">2위</p>
							</div>
							<img src="./img/rank2.jpeg" alt="">
							<p class="recipe-name">요리명</p>
						</div>
					</li>

					<li class="rank-list-li">
						<div class="rank-image-and-text">
							<div class="rank-text-div">
								<p class="rank-text rank3">3위</p>
							</div>
							<img src="./img/rank3.jpeg" alt="">
							<p class="recipe-name">요리명</p>
						</div>
					</li>

					<li class="rank-list-li">
						<div class="rank-image-and-text">
							<div class="rank-text-div">
								<p class="rank-text rank4">4위</p>
							</div>
							<img src="./img/rank4.jpeg" alt="">
							<p class="recipe-name">요리명</p>
						</div>
					</li>
				</ul>
			</div>
		</div>
	</section>

	<!--=============== footer ===============-->
	<jsp:include page="footerInclude.jsp" flush="true" />


</body>
</html>