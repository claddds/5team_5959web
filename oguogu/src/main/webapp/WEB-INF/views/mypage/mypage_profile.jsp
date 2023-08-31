<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	#myprofileform{
		width:1200px;
		display: flex;
	    flex-direction: column;
	    align-items: center;
	}
	#myprofileform div{margin-bottom:20px;}
	#myprofileform button{
		border:none;
	}

	#myimg img{
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
	#myprofileform input[type="text"]{
		width:300px;
		height:30px;
		border:none;
	 	user-select: none;
	 	pointer-events: none;
	 	font-size: 20px;
	 	border-radius:5px;
	}
</style>
</head>
<body>
	<div id="myprofileform">
		<div style="font-size: 50px; font-weight: bold;color:#FFA629">프로필</div>
		<div id="myimg">
			<img src="resources/images/home/mainbanner_eduexplain.png" />
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
</body>
</html>