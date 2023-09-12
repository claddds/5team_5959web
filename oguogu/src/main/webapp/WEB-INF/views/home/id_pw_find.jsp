<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	
	.main{
		font-family: 'Noto Sans KR', sans-serif;
		width: 500px;
    	height: 500px;
    	padding: 40px;
    	box-sizing: border-box;
   	 	margin: auto;
	}
	.main form{
		margin-bottom:30px;
	}
	.input-label{
		margin:10px;
		color:#f8f8ff;
	}
	.main input{
		margin:10px;
	}
	
	.main h1{
	    font-size: 30px;
	    color:#f8f8ff;;
	    text-align: center;
	    margin-bottom:30px;
	}
	
	#id-form > div input,#pw-form > div input{
	    width: 50%;
	    height: 30px;
	    /* padding: 0 10px; */
/* 	    margin-bottom: 20px; */
	    border-radius: 5px;
	    background-color: #f8f8ff;
	}
	
	#id-form > div,#pw-form > div{
		margin:20px;
		box-sizing: border-box;
		border : none;
		background-color: #FFA629;
		border-radius:10px;
	}
	
	input[type="text"]{
		border:none;
	}
	#id_submit,#pw_submit{
		cursor: pointer;
	}
</style>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Bagel+Fat+One&family=Noto+Sans+KR&display=swap" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
<script type="text/javascript">
	var kakaomessage = "";
	var message = "";

    // 페이지 로드 시 실행
    $(document).ready(function () {
        // 서버에서 데이터를 가져오는 AJAX 요청
        $.ajax({
            url: "/getDataFromServer", // 서버에서 데이터를 가져오는 엔드포인트
            method: "GET",
            success: function (data) {
                
            },
            error: function () {
                console.log("데이터를 가져오는 중 오류가 발생했습니다.");
            }
        });
    });
</script>
</script>
</head>
<body>
	<header>
	<jsp:include page="home_top.jsp" />
	</header>
	<div class="main">
		<h1 style="text-align: center;font-family: 'Bagel Fat One', cursive; color:#FFA629;background-color: #F3F1EF; font-size: 60px;border-radius:10px;">아이디<br>비밀번호 찾기</h1>
			<form  id="id-form" method="post">
				<div>
					<div>
						<h1>아이디 찾기</h1>
					</div>
					<div style="margin-left:60px;">
						<label class="input-label" for="">이메일 : </label>
						<input type="text" name="email" id="id_find_email" maxlength="20">
						<div style="height:10px;margin-bottom:5px;" id="id_email_chk"></div>
						<input type="submit" onclick="id_find(this.form)" id="id_submit" style="width:120px;margin-left:80px;" value="아이디 찾기" >
					</div>
				</div>
			</form>
			<form id="pw-form" method="post">
				<div>
					<div>
						<h1>비밀번호 찾기</h1>
					</div>
					<div style="margin-left:60px;">
						<label class="input-label" for="">아이디 : </label>
						<input type="text" name="user_id" id="pw_find_id" maxlength="20">
					</div>
					
					<div style="margin-left:60px;">
						<label class="input-label" for="">이메일 : </label>
						<input type="text" name="email" id="pw_find_email" maxlength="20">
						<div style="height:10px;margin-bottom:5px;" id="pw_email_chk"></div>
						<input type="submit" onclick="pw_find(this.form)" id="pw_submit" style="width:120px;margin-left:80px;" value="비밀번호 재설정">
					</div>
				</div>
			</form>
	</div>
	<script type="text/javascript">
		var id_find_email = document.getElementById("id_find_email");
		var pw_find_email = document.getElementById("pw_find_email");
		
		 function id_emailChk() {
				// 변수는 script 내부 최상단에 위치
		            var id_find_emailInput = id_find_email.value;
		            
		            var pattern = /^([a-z0-9_\.-]+)@([\da-z\.-]+)\.([a-z\.]{2,6})$/;
		            
		            if (!pattern.test(id_find_emailInput)) {
		            	id_email_chk.textContent = "*올바른 이메일 형식이 아닙니다.";
		            	id_email_chk.style.color = "red";
		            }else{
		            	id_email_chk.textContent = "";
		            }

		        }
		 
		 function pw_emailChk(){
			 var pw_find_emailInput = pw_find_email.value;
			 
			 var pattern = /^([a-z0-9_\.-]+)@([\da-z\.-]+)\.([a-z\.]{2,6})$/;
			 
			 if (!pattern.test(pw_find_emailInput)) {
	            	pw_email_chk.textContent = "*올바른 이메일 형식이 아닙니다.";
	            	pw_email_chk.style.color = "red";	            	
	            }else{
	            	pw_email_chk.textContent = "";
	            }
		 }
		
		 id_find_email.addEventListener("input", id_emailChk);
		 pw_find_email.addEventListener("input", pw_emailChk);
	</script>
	<script type="text/javascript">
	function id_find(f) {
		f.action = "/id_find.do"
	}
	function pw_find(f) {
		f.action = "/id_pw_find.do"
	}
	
	var kakaomessage = "${kakaomessage}";
	var message = "${message}";
	
	if(kakaomessage == "ok"){
		alert("카카오 회원가입을 하셨습니다. 카카오 로그인을 해주세요.")	
	}else if(message == "ok"){
		alert("찾으시는 아이디가 없습니다. 회원가입을 진행해주세요.")
	}
	
</script>
</body>
</html>