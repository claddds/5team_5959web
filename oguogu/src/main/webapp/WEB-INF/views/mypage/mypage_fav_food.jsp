<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	#fav_food_form{
		width:1920px;
 		display: flex; 
		margin:auto;
	    margin-top:50px;
	}
	#fav_food_list{
		width: 1500px;
		display: grid;
		grid-template-columns: repeat(4, 1fr);
		background-color: #FBF9D9;
		padding-top: 50px;
		margin-left:100px;
		border-radius: 50px;
		padding-left: 70px;
		padding-bottom:100px;

	}
	.fav-prod-price {font-weight:bold; font-size:25px;}
	.fav_food_img {border-radius: 10px;}
	.fav-coupang-buy button{
		background-color:#F8CE38;
		border:none;
		border-radius:10px;
		margin-left:25px;
		font-size: 15px;
	}
	footer{
        width:1920px;
        display:flex;
        margin:auto;
        margin-top:20px;
        margin-bottom: 20px;
    }
</style>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Bagel+Fat+One&display=swap" rel="stylesheet">
</head>
<body>
	<header>
		<jsp:include page="../home/home_top.jsp" />
	</header>
	
	<div id="fav_food_form">
		<div style="margin-top:100px;">
			<jsp:include page="mypage-sidebar.jsp" />
		</div>
		<div id="fav_food_list">
			<div style="grid-column:span 4; font-family: font-family: 'Noto Sans KR', sans-serif;
					font-size: 50px;margin:auto;margin-bottom:60px; padding-right:100px; color:#FFA629; font-weight: bold;">
				즐겨찾기 - 먹거리
			</div>
			<div class="fav_food_card" style="width: 250px; height: 300px; margin:50px;">
				<img src="resources/images/home/mainbanner_eduexplain.png"
					class="fav_food_img" style="width: 200px; height: 200px; margin-left:20px;">
				<div>
					<h3 class="card-title">제목제목제목제목제목제목제목제목제목제목제목제목</h3>
					<span class="prod-price">50,000 원</span>
					<span class="fav-coupang-buy"><button>쿠팡 구매하러가기</button></span>
				</div>
			</div>
			
		</div>
	</div>
	
	<footer>
		<jsp:include page="../home/home_bottom.jsp" />
	</footer>
</body>
</html>