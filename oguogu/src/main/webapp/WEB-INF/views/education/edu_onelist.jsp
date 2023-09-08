<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	#edu-onelist-form{
		width:1920px;
		font-family: 'Noto Sans KR', sans-serif;
		margin:auto;
	}
	
	#minibanner img {
		width: 1920px;
		height: 200px;
		margin-top: 20px;
	}
	
	#link-step{
		margin-top:30px;
		margin-bottom:30px;
	}
	
	div#main-text{
		width:1000px;
		float:left;
		margin-left:300px;
	}
	/* HOME>필수/양육/훈련 정보/#강아지,#고양이 */
	#link-step a{
		text-decoration: none;
		font-size: 30px;
		color:#868688;
	}
	/* 꺾새 */
	#link-step label{
		font-size:30px;
	}
	/* 컨텐츠 제목 */
	#edu-one-title{
		font-size:50px;
		display: -webkit-box;
		-webkit-line-clamp: 3;
        -webkit-box-orient: vertical;
	}
	/* 컨텐츠 날짜 조회수 */
	#date_hit{
		font-size: 20px;
		margin-top:20px;
		margin-bottom:80px;
	}
	
	/* position : sticky 언제든지 변경 가능 */
	#sidebar-parent{
		width:300px;
		height: 1500px;
		float:right;
		margin-right:250px;
	}
	
	#sidebar{
		padding-top:100px;
		position:sticky;
		top:0px;
	}
	
	#sidebar img{
		width:250px;
		height:150px;
		margin-bottom:20px;
		border-radius:10px;
	}
	
	#sidebar ul li{
		list-style-type: none;
	}
</style>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Bagel+Fat+One&family=Noto+Sans+KR&display=swap"
	rel="stylesheet">
</head>
<body>
	<header>
		<jsp:include page="../home/home_top.jsp"></jsp:include>
	</header>
	<div id="edu-onelist-form">
	<div id=minibanner>
		<a href=""><img src="resources/images/list_banner/listbanner_edu.png"></a>
	</div>
		<div id="main-sidebar">
			<div id="main-text">
			<div id="link-step">
				<a href="">Home </a><label>></label>
				<a href="">필수정보 </a><label>></label><!--  -->
				<a href="">#강아지</a><!--  -->
			</div>
			
				<div id="edu-one-title">
					제목 제목 제목 제목 제목 제목 제목 제목 제목제목 제목 제목 제목 제목 제목 제목 제목 제목
				</div>
				<div id="date_hit">
					<span id="date">날짜 : 2023-08-26 / </span><!-- name 변수명 vo랑 맞춰야함. db에서 불러옵니다. -->							
					<span id="hit">조회수 : 130</span><!-- name 변수명 vo랑 맞춰야함. db에서 불러옵니다. -->							
				</div>
				<div id="content">
					제목 제목 제목 제목 제목 제목 제목 제목 제목제목 제목 제목 제목 제목 제목 제목 제목 제목
					제목 제목 제목 제목 제목 제목 제목 제목 제목제목 제목 제목 제목 제목 제목 제목 제목 제목
					제목 제목 제목 제목 제목 제목 제목 제목 제목제목 제목 제목 제목 제목 제목 제목 제목 제목
					제목 제목 제목 제목 제목 제목 제목 제목 제목제목 제목 제목 제목 제목 제목 제목 제목 제목
					제목 제목 제목 제목 제목 제목 제목 제목 제목제목 제목 제목 제목 제목 제목 제목 제목 제목
					제목 제목 제목 제목 제목 제목 제목 제목 제목제목 제목 제목 제목 제목 제목 제목 제목 제목
					제목 제목 제목 제목 제목 제목 제목 제목 제목제목 제목 제목 제목 제목 제목 제목 제목 제목
					제목 제목 제목 제목 제목 제목 제목 제목 제목제목 제목 제목 제목 제목 제목 제목 제목 제목
					제목 제목 제목 제목 제목 제목 제목 제목 제목제목 제목 제목 제목 제목 제목 제목 제목 제목
					제목 제목 제목 제목 제목 제목 제목 제목 제목제목 제목 제목 제목 제목 제목 제목 제목 제목
					제목 제목 제목 제목 제목 제목 제목 제목 제목제목 제목 제목 제목 제목 제목 제목 제목 제목
					제목 제목 제목 제목 제목 제목 제목 제목 제목제목 제목 제목 제목 제목 제목 제목 제목 제목
					제목 제목 제목 제목 제목 제목 제목 제목 제목제목 제목 제목 제목 제목 제목 제목 제목 제목
					제목 제목 제목 제목 제목 제목 제목 제목 제목제목 제목 제목 제목 제목 제목 제목 제목 제목
					제목 제목 제목 제목 제목 제목 제목 제목 제목제목 제목 제목 제목 제목 제목 제목 제목 제목
					제목 제목 제목 제목 제목 제목 제목 제목 제목제목 제목 제목 제목 제목 제목 제목 제목 제목
					제목 제목 제목 제목 제목 제목 제목 제목 제목제목 제목 제목 제목 제목 제목 제목 제목 제목
					제목 제목 제목 제목 제목 제목 제목 제목 제목제목 제목 제목 제목 제목 제목 제목 제목 제목
					제목 제목 제목 제목 제목 제목 제목 제목 제목제목 제목 제목 제목 제목 제목 제목 제목 제목
					제목 제목 제목 제목 제목 제목 제목 제목 제목제목 제목 제목 제목 제목 제목 제목 제목 제목
					제목 제목 제목 제목 제목 제목 제목 제목 제목제목 제목 제목 제목 제목 제목 제목 제목 제목
					제목 제목 제목 제목 제목 제목 제목 제목 제목제목 제목 제목 제목 제목 제목 제목 제목 제목
					제목 제목 제목 제목 제목 제목 제목 제목 제목제목 제목 제목 제목 제목 제목 제목 제목 제목
					제목 제목 제목 제목 제목 제목 제목 제목 제목제목 제목 제목 제목 제목 제목 제목 제목 제목
					제목 제목 제목 제목 제목 제목 제목 제목 제목제목 제목 제목 제목 제목 제목 제목 제목 제목
					제목 제목 제목 제목 제목 제목 제목 제목 제목제목 제목 제목 제목 제목 제목 제목 제목 제목
					제목 제목 제목 제목 제목 제목 제목 제목 제목제목 제목 제목 제목 제목 제목 제목 제목 제목
					제목 제목 제목 제목 제목 제목 제목 제목 제목제목 제목 제목 제목 제목 제목 제목 제목 제목
					제목 제목 제목 제목 제목 제목 제목 제목 제목제목 제목 제목 제목 제목 제목 제목 제목 제목
					제목 제목 제목 제목 제목 제목 제목 제목 제목제목 제목 제목 제목 제목 제목 제목 제목 제목
					제목 제목 제목 제목 제목 제목 제목 제목 제목제목 제목 제목 제목 제목 제목 제목 제목 제목
					제목 제목 제목 제목 제목 제목 제목 제목 제목제목 제목 제목 제목 제목 제목 제목 제목 제목
					제목 제목 제목 제목 제목 제목 제목 제목 제목제목 제목 제목 제목 제목 제목 제목 제목 제목
					제목 제목 제목 제목 제목 제목 제목 제목 제목제목 제목 제목 제목 제목 제목 제목 제목 제목
					제목 제목 제목 제목 제목 제목 제목 제목 제목제목 제목 제목 제목 제목 제목 제목 제목 제목
					제목 제목 제목 제목 제목 제목 제목 제목 제목제목 제목 제목 제목 제목 제목 제목 제목 제목
					제목 제목 제목 제목 제목 제목 제목 제목 제목제목 제목 제목 제목 제목 제목 제목 제목 제목
					제목 제목 제목 제목 제목 제목 제목 제목 제목제목 제목 제목 제목 제목 제목 제목 제목 제목
					제목 제목 제목 제목 제목 제목 제목 제목 제목제목 제목 제목 제목 제목 제목 제목 제목 제목
					제목 제목 제목 제목 제목 제목 제목 제목 제목제목 제목 제목 제목 제목 제목 제목 제목 제목
					제목 제목 제목 제목 제목 제목 제목 제목 제목제목 제목 제목 제목 제목 제목 제목 제목 제목
					제목 제목 제목 제목 제목 제목 제목 제목 제목제목 제목 제목 제목 제목 제목 제목 제목 제목
					제목 제목 제목 제목 제목 제목 제목 제목 제목제목 제목 제목 제목 제목 제목 제목 제목 제목
					제목 제목 제목 제목 제목 제목 제목 제목 제목제목 제목 제목 제목 제목 제목 제목 제목 제목
					제목 제목 제목 제목 제목 제목 제목 제목 제목제목 제목 제목 제목 제목 제목 제목 제목 제목
					제목 제목 제목 제목 제목 제목 제목 제목 제목제목 제목 제목 제목 제목 제목 제목 제목 제목
					제목 제목 제목 제목 제목 제목 제목 제목 제목제목 제목 제목 제목 제목 제목 제목 제목 제목
					제목 제목 제목 제목 제목 제목 제목 제목 제목제목 제목 제목 제목 제목 제목 제목 제목 제목
					제목 제목 제목 제목 제목 제목 제목 제목 제목제목 제목 제목 제목 제목 제목 제목 제목 제목
					제목 제목 제목 제목 제목 제목 제목 제목 제목제목 제목 제목 제목 제목 제목 제목 제목 제목
					제목 제목 제목 제목 제목 제목 제목 제목 제목제목 제목 제목 제목 제목 제목 제목 제목 제목
					제목 제목 제목 제목 제목 제목 제목 제목 제목제목 제목 제목 제목 제목 제목 제목 제목 제목
					제목 제목 제목 제목 제목 제목 제목 제목 제목제목 제목 제목 제목 제목 제목 제목 제목 제목
					제목 제목 제목 제목 제목 제목 제목 제목 제목제목 제목 제목 제목 제목 제목 제목 제목 제목
					제목 제목 제목 제목 제목 제목 제목 제목 제목제목 제목 제목 제목 제목 제목 제목 제목 제목
					제목 제목 제목 제목 제목 제목 제목 제목 제목제목 제목 제목 제목 제목 제목 제목 제목 제목
					제목 제목 제목 제목 제목 제목 제목 제목 제목제목 제목 제목 제목 제목 제목 제목 제목 제목
					제목 제목 제목 제목 제목 제목 제목 제목 제목제목 제목 제목 제목 제목 제목 제목 제목 제목
					제목 제목 제목 제목 제목 제목 제목 제목 제목제목 제목 제목 제목 제목 제목 제목 제목 제목
					제목 제목 제목 제목 제목 제목 제목 제목 제목제목 제목 제목 제목 제목 제목 제목 제목 제목
					제목 제목
				</div>
			</div>
		</div>
		<div id="sidebar-parent">
			<div id="sidebar">
				<ul>
					<li><a href=""><img alt="" src="resources/images/home/mainbanner_eduexplain.png"> </a></li>
					<li><a href=""><img alt="" src="resources/images/home/mainbanner_food.png"> </a></li>
					<li><a href=""><img alt="" src="resources/images/home/mainbanner_lounge.png"> </a></li>
					<li><a href=""><img alt="" src="resources/images/home/mainbanner_ogudoctor.png"> </a></li>
					<li><a href=""><img alt="" src="resources/images/home/mainbanner_place.png"> </a></li>
					<li><a href=""><img alt="" src="resources/images/home/mainbanner_pocket.png"> </a></li>
				</ul>
			</div>
		</div>
		</div>
</body>
</html>