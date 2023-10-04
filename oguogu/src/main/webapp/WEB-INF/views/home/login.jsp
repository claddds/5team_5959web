<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<meta http-equiv="Cache-Control" content="no-store" />
<meta http-equiv="Pragma" content="no-cache" />
<meta http-equiv="Expires" content="0" />

<title>오구오구 로그인</title>
<style type="text/css">


.login-wrapper{
    font-family: 'Roboto', sans-serif;
    width: 500px;
    padding: 40px;
    box-sizing: border-box;
    margin: auto;
    font-size: 20px;
}

.login-wrapper h1{
    font-size: 60px;
    color: #FFA629;
    margin-bottom: 40px;
}
.login-wrapper input{
    width: 100%;
    height: 50px;
    padding: 0 10px;
    box-sizing: border-box;
    margin-bottom: 16px;
    border-radius: 6px;
    background-color: #F3F1EF;
    border:none;
}
.login-wrapper input::placeholder{
    color: #B2B1AD;
}
.login-wrapper input[type="submit"]{
    color: #fff;
    font-size: 16px;
    background-color: #FFA629;
    margin-top: 20px;
}

.login-wrapper input[type="button"]{
 	color: #fff;
    font-size: 16px;
    background-color: #FFA629;
    margin-top: 20px;
    border:none;
}

.social-login-img{
	display: flex;
	justify-content: center;
	align-items: center;
	margin-top:10px;
	cursor:pointer;
}
.social-login-img img{
	width:200px; 
	height:50px;
	margin:5px;
}
#login_submit_btn,#id_pw_find_btn{
	cursor:pointer;
}

footer{
        width:1920px;
        display:flex;
        margin:auto;
        margin-top:20px;
        margin-bottom: 20px;
    }
</style>
<!-- 구글 폰트 -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Bagel+Fat+One&display=swap" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>

<script type="text/javascript">
	window.onpageshow = function(event) {
	    if ( event.persisted || (window.performance && window.performance.navigation.type == 2)) {
	    // Back Forward Cache로 브라우저가 로딩될 경우 혹은 브라우저 뒤로가기 했을 경우
	    location.href="/homedisplay.do";
	  }
	}
	
	function user_login(f) {
		alert("로그인 하시겠습니까?")
		f.action = "/user_login.do"
	}
	
	function id_pw_find() {
		location.href = "/IdPwFinddisplay.do"
	}
</script>
</head>
<body>

	<header>
	<jsp:include page="home_top.jsp" />
	</header>
    <div class="login-wrapper">
        <h1 style="text-align: center;font-family: 'Bagel Fat One', cursive;">LogIn</h1>
        <form method="post" id="login-form">
            <input type="text" name="user_id" placeholder="아이디" id="login_user_id" required maxlength="20">
            <input type="password" name="pw" placeholder="비밀번호" id="login_pwd" required maxlength="20">
            <input type="submit" value="Login" id="login_submit_btn" onclick="user_login(this.form)">
        </form>

            <div>
            	<input type="button" value="ID찾기, 비밀번호 찾기" id="id_pw_find_btn" onclick="id_pw_find()"style="width:420px;border-radius: 6px;">
            </div>
            <hr>
			<div class="social-login-img">
				<c:set var ="REST_API_KEY" value="64e389d2d688211ab0016951d3cc766d" />
				<c:set var ="REDIRECT_URI" value="https://nohsam.shop/kakaologin.do" />
				<a href="https://kauth.kakao.com/oauth/authorize?response_type=code
							&client_id=${REST_API_KEY}&redirect_uri=${REDIRECT_URI}">
					<img src="resources/images/login/kakao_login.png">
				</a>
			</div>
			<!-- <div class="social-login-img">
				<img src="resources/images/login/naver_login.png">
			</div> -->
        
    </div>
    <footer>
		<jsp:include page="home_bottom.jsp" />
	</footer>
</body>
</html>