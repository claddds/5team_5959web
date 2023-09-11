<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">


.login-wrapper{
    font-family: 'Roboto', sans-serif;
    width: 500px;
    padding: 40px;
    box-sizing: border-box;
    margin: auto;
    font-size: 20px;
}

.login-wrapper > h1{
    font-size: 60px;
    color: #FFA629;
    margin-bottom: 40px;
}
#login-form > input{
    width: 100%;
    height: 50px;
    padding: 0 10px;
    box-sizing: border-box;
    margin-bottom: 16px;
    border-radius: 6px;
    background-color: #F3F1EF;
    border:none;
}
#login-form > input::placeholder{
    color: #B2B1AD;
}
#login-form > input[type="submit"]{
    color: #fff;
    font-size: 16px;
    background-color: #FFA629;
    margin-top: 20px;
}

#login-form input[type="button"]{
    border:none;
}

.social-login-img{
	display: flex;
	justify-content: center;
	align-items: center;
	margin-top:10px;
}
.social-login-img > img{
	width:200px; 
	height:50px;
	margin:5px;
}


</style>
<!-- 구글 폰트 -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Bagel+Fat+One&display=swap" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
<script type="text/javascript">
	function user_login(f) {
		f.action = "/user_login.do"
	}
</script>
</head>
<body>

	<header>
	<jsp:include page="home_top.jsp" />
	</header>
    <div class="login-wrapper">
        <h1 style="text-align: center;font-family: 'Bagel Fat One', cursive;">LogIn</h1>
        <form method="post" action="" id="login-form">
            <input type="text" name="user_id" placeholder="아이디" required maxlength="20">
            <input type="password" name="pw" placeholder="비밀번호" required maxlength="20">
            <div style="display:flex; justify-content: flex-end;">
            	<input type="button" value="회원가입" style="width:60px;height:20px;border-radius: 6px; color: #585652;"> &nbsp;&nbsp;&nbsp;
            	<input type="button" value="ID찾기, 비밀번호 찾기" style="width:140px;height:20px;border-radius: 6px; color: #585652;">
            </div>

            <input type="submit" value="Login" onclick="user_login(this.form)">
            <hr>
			<div class="social-login-img">
				<img src="resources/images/login/kakao_login.png">
			</div>
			<div class="social-login-img">
				<img src="resources/images/login/naver_login.png">
			</div>
        </form>
    </div>
    
</body>
</html>