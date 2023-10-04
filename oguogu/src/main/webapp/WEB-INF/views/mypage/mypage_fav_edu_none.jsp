<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지-교육</title>
<style type="text/css">

#fav_edu_none_form{
		width:1920px;
 		display: flex;
 		margin:auto;
 		padding-top:50px;
	}
#fav_edu_none_list{
		width:1500px;
		display:flex;
		flex-direction: column;
		align-items: center;
		background-color: #FBF9D9;
	    padding-top:50px;
	    margin-left:100px;
	    border-radius:50px;
	}
	
#edu_move_btn{
	width:200px;
	height:40px;
	background-color: #FFA629;
	border-radius:20px;
	font-size: 20px;
	margin-top:20px;
	border:none;
	cursor:pointer;
	transition: box-shadow 0.5s;
}

#food_move_btn:hover {
   	box-shadow: 4px 4px 8px rgba(0, 0, 0, 0.5);
}

footer {
	width: 1920px;
	display: flex;
	margin: auto;
	margin-top: 20px;
	margin-bottom: 20px;
}
</style>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Bagel+Fat+One&display=swap"
	rel="stylesheet">
<script type="text/javascript">
	function eduPage_go() {
		location.href = "/alledudisplay.do"
	}
</script>
</head>
<body>
	<header>
		<jsp:include page="../home/home_top.jsp" />
	</header>

	<div id="fav_edu_none_form">
		<div style="margin-top:10px;">
			<jsp:include page="mypage-sidebar.jsp" />
		</div>
		<div id="fav_edu_none_list">
			<h1 style="font-size: 50px;color:#FFA629;margin-top:15px;">즐겨찾기 - 교육</h1>
			<div style="margin:20px 0;">
				<img src="resources/images/mypage/fav_edu_none.png" 
				style="width:200px;height:200px;border-radius:10px;">	
			</div>
			<div style="font-size:20px;margin-bottom:30px;">앗 즐겨찾기가 없어요.<br>5구5구가 자랑하는 교육 정보로 가볼까요~</div>
			<div>
				<button id="edu_move_btn" onclick="eduPage_go()">교육정보 이동</button>
			</div>
		</div>
	</div>

	<footer>
		<jsp:include page="../home/home_bottom.jsp" />
	</footer>
</body>
</html>