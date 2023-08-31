<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

	
</style>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Bagel+Fat+One&family=Noto+Sans+KR&display=swap" rel="stylesheet">
</head>
<body>
	<header>
	<jsp:include page="home_top.jsp" />
	</header>
	<div class="main">
		<h1 style="text-align: center;font-family: 'Bagel Fat One', cursive; color:#FFA629; font-size: 60px;">아이디<br>비밀번호 찾기</h1>
			<form action="" id="id-form" method="post">
				<div>
					<div>
						<h1>아이디 찾기</h1>
					</div>
					<div style="margin-left:60px;">
						<label class="input-label" for="">이메일 : </label>
						<input type="text" name="email" id="id_find_email" maxlength="20">
						<div style="height:10px;margin-bottom:5px;" id="id_email_chk"></div>
						<input type="submit" id="id_submit" style="width:120px;margin-left:80px;" value="아이디 찾기">
					</div>
				</div>
			</form>
			<form action="" id="pw-form" method="post">
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
						<input type="submit" id="pw_submit" style="width:120px;margin-left:80px;" value="비밀번호 재설정">
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
		            	button.style.pointerEvents = "auto";
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
</body>
</html>