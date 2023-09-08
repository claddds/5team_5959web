<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	#myprofile-main{
		width:1920px;
		margin:auto;
		display:flex;
		margin-top:50px;
	}
	
	#myprofile-onelist-form{
		width:1500px;
		display: flex;
	    flex-direction: column;
	    align-items: center;
	    background-color: #FBF9D9;
	    padding-top:50px;
	    margin-left:100px;
	    border-radius:50px;
	}
	
	#myprofile-onelist-form div{margin-bottom:20px;}
	#myprofile-onelist-form button{border:none;}

	#myimg{
		width:200px;
		height:200px;
		border-radius:50px;
	}
	#info_pw button{
		width:300px;
		height:50px;
		border-radius:10px;
		background-color:#FFA629;
		font-size: 20px;
		color:#fff0f5;
	}
	
	#myprofile-onelist-form input[type="text"]{
		width:300px;
		height:30px;
		border:none;
	 	user-select: none;
	 	pointer-events: none;
	 	font-size: 20px;
	 	border-radius:5px;
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
	<div id="myprofile-main">
		<div style="margin-top:10px;">
			<jsp:include page="mypage-sidebar.jsp" />
		</div>
		<div id="myprofile-onelist-form">
			<div style="font-size: 50px; font-weight: bold;color:#FFA629">프로필</div>
			<div>
				<img src="resources/images/home/mainbanner_eduexplain.png" id="myimg"/>
			</div>
			<div id="nickname">
				<input type="text" id="" value="nickname" readonly>
			</div>
			<div id="email">
				<input type="text" id="" value="poiu62875@gmail.com" readonly>
			</div>
			<div id="info_pw">
				<button class="button" onclick="" style="margin-bottom:20px;">회원 정보 수정</button>
				<br><!-- 회원정보 수정 페이지로 go -->
				<button class="button" onclick="">아이디/비밀번호 찾기</button><!-- 누르면 비번 찾기 페이지로 이동  -->
				<hr>
				<button class="button" onclick="">로그아웃</button><!-- 누르면 비번 찾기 페이지로 이동  -->
			</div>
		</div>
	</div>
	<footer>
		<jsp:include page="/WEB-INF/views/home/home_bottom.jsp" />
	</footer>
</body>
</html>