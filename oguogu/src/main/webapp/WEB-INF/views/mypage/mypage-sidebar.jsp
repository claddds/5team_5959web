<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css">
<title>마이페이지 공통사항</title>
<style type="text/css">
	body{
		font-family: 'Noto Sans KR', sans-serif;
	}
	#mypage{
		color:#FFA629;
		font-size:60px;
		margin-bottom:50px;
		font-family: 'Noto Sans KR', sans-serif;
	}
	#mypage-common{
		width:1800px;
		display:grid;
		grid-template-columns:20% 80%;
		margin-top:100px;
		margin-left:200px;
	}
	.list-group{
		width:300px;
	}
	.list-title{
		list-style-type: none;
		font-size:40px;
		color:#FFA629;
	}
	.list-group-item {
		list-style-type: none;
		margin-left:20px;
	} 
	.list-group-item a{
		font-size:30px;
		color:#D9D9D9;
		text-decoration: none;
		margin-left:20px;
	}
	.li-group li{
		margin:10px;
	}
	#content{
		width:1200px;
		background-color: white;
		color:white;
		border:1px solid black;
	}
</style>
</head>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Bagel+Fat+One&family=Noto+Sans+KR&display=swap" rel="stylesheet">
<body>
		<header>
			<jsp:include page="../home/home_top.jsp"></jsp:include>
		</header>
			<div class="list-group">
				<div id="mypage">마이 페이지</div>
				<ul class="li-group">
				  <li class="list-title">프로필</li>
				  <li class="list-group-item"><a href="">내 프로필</a></li>
				  <li class="list-group-item"><a href="">반려 동물 프로필</a></li><hr>
				  <li class="list-title">즐겨찾기</li>
				  <li class="list-group-item"><a href="">교육</a></li>
				  <li class="list-group-item"><a href="">플레이스</a></li>
				  <li class="list-group-item"><a href="">먹거리</a></li><hr>
				  <li class="list-title">내가 작성한 글</li>
				  <li class="list-group-item"><a href="">라운지</a></li>
				  <li class="list-group-item"><a href="">1:1 문의</a></li>
				</ul>
			</div>
			<div></div>
			
			
</body>
</html>