<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오구오구 아이디/비밀번호 찾기</title>
<style type="text/css">
	
	.main{
		font-family: 'Noto Sans KR', sans-serif;
		width: 500px;
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
	
	footer{
        width:1920px;
        display:flex;
        margin:auto;
        margin-bottom: 20px;
    }
	
</style>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Bagel+Fat+One&family=Noto+Sans+KR&display=swap" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
<script>
    // 버튼 클릭 이벤트 처리
    $(document).ready(function(){
    	//아이디 찾기 이메일 입력칸 입력시마다 적용될 function
	    $("#id_find_email").on("input", function() {
	        var id_find_emailInput = $("#id_find_email").val();
	        var pattern = /^([a-z0-9_\.-]+)@([\da-z\.-]+)\.([a-z\.]{2,6})$/; 	        
	        
	        if (id_find_emailInput == "") {
	            $("#id_email_chk").text("이메일을 입력해주세요.").css("color", "red");
	            $("#id_submit").prop("disabled", true);
	        } else if (!pattern.test(id_find_emailInput)) {
	            $("#id_email_chk").text("올바른 이메일 형식이 아닙니다.").css("color", "red");
	            $("#id_submit").prop("disabled", true);
	        } else {
	            $("#id_email_chk").text("아이디 찾기 버튼을 눌러주세요.").css("color", "green");
	            $("#id_submit").prop("disabled", false).css("cursor", "pointer");;
	        }

   		});

		//아이디 찾기 버튼 눌렀을 때
		$("#id_submit").on("click", function(event) {
			event.preventDefault();
			var idEmailInput = $("#id_find_email").val();
	        if(idEmailInput.length < 1){
				alert("아이디 찾기 - 이메일을 입력해주세요")
				return;
	        }
			$.ajax({
				url : "/IdFindEmail.do",
				dataType: "json",
				method: "post",
				data : {"email" : idEmailInput},
				success:function(data){
					if(data.type == "1"){
						var userId = data.user_id;
						var hiddenUserId = userId.substring(0, 3) + '***' + userId.substring(userId.length - 3);
						alert("아이디는 " + hiddenUserId +" 입니다. 정확한 아이디는 고객지원 - 문의사항을 통해서 질문해주시길 바랍니다.")
						$("#id_find_email").val("");
						$("#id_email_chk").text("");
					}else if(data.type == "2"){
						alert("카카오 회원가입을 하셨습니다. 카카오 로그인을 진행해주세요.");
						$("#id_find_email").val("");
						$("#id_email_chk").text("");
						window.location.href = "/logindisplay.do"
					}else if(data.message == "ok"){
						alert("가입된 아이디가 없습니다. 다시 입력해 주세요.");
						$("#id_find_email").val("");
						$("#id_email_chk").text("");
						//$("#id_email_chk").html("가입된 아이디가 없습니다.").css("color", "red");
					}
				},
				error:function(){
					alert("읽기 실패");
				}
			});
		});
		
		//=================================================================================================================
			
		//비밀번호 찾기 이메일 입력칸 입력시마다 적용될 function
	    $("#pw_find_email").on("input", function() {
	        var pw_find_emailInput = $("#pw_find_email").val();
	        var pattern = /^([a-z0-9_\.-]+)@([\da-z\.-]+)\.([a-z\.]{2,6})$/; 	        
	        	        
	        if (pw_find_emailInput == "") {
	            $("#pw_email_chk").text("이메일을 입력해주세요.").css("color", "red");
	            $("#pw_submit").prop("disabled", true);
	        } else if (!pattern.test(pw_find_emailInput)) {
	            $("#pw_email_chk").text("올바른 이메일 형식이 아닙니다.").css("color", "red");
	            $("#pw_submit").prop("disabled", true);
	        } else {
	            $("#pw_email_chk").text("비밀번호 재설정 버튼을 눌러주세요.").css("color", "green");
	            $("#pw_submit").prop("disabled", false)
	        }
   		});
		
		//비밀번호 찾기 버튼 눌렀을 때
		$("#pw_submit").on("click", function(event) {
			event.preventDefault();
			var pwIdInput = $("#pw_find_id").val();
			var pwEmailInput = $("#pw_find_email").val();
			
			var param2 = $("#pw-form").serialize()
			
	        if(pwIdInput.length < 1){
				alert("비밀번호 찾기 - 아이디를 입력해 주세요.")
				return;
	        }
			
	        if(pwEmailInput.length < 1){
				alert("비밀번호 찾기 - 이메일을 입력해주세요.")
				$("#pw_find_email").val("");
				$("#pw_email_chk").text("");
				return;
	        }
			
			$.ajax({
				url : "/email_send.do",
				dataType: "json",
				method: "post",
				data : param2,
				success:function(data){
					if(data == 0){
						alert("비밀번호 찾기 - 등록되지 않은 아이디입니다.")
					}else if(data == 1){
						alert("비밀번호 찾기 - 등록되지 않은 이메일입니다.")
					}else if(data == 2){
						alert("비밀번호 찾기 - 이메일로 임시 비밀번호를 발송하였습니다")
						location.href="/"
					}
				},
				error:function(){
					alert("읽기 실패");
				}
			});
		});
});
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
						<label class="input-label">이메일 : </label>
						<input type="text" name="email" id="id_find_email" maxlength="20" />
						<div style="height:10px;margin-bottom:15px;" id="id_email_chk"></div>
						<input type="submit" id="id_submit" disabled style="width:120px;margin-left:80px;" value="아이디 찾기">
					</div>
				</div>
			</form>
			<form id="pw-form" method="post">
				<div>
					<div>
						<h1>비밀번호 찾기</h1>
					</div>
					<div style="margin-left:60px;">
						<label class="input-label">아이디 : </label>
						<input type="text" name="user_id" id="pw_find_id" maxlength="20">
					</div>
					<div style="margin-left:60px;">
						<label class="input-label">이메일 : </label>
						<input type="text" name="email" id="pw_find_email" maxlength="20">
						<div style="height:10px;margin-bottom:5px;" id="pw_email_chk"></div>
						<input type="submit" disabled id="pw_submit" style="width:120px;margin-left:80px;cursor:pointer;" value="비밀번호 재설정">
					</div>
				</div>
			</form>
	</div>
	<footer>
		<jsp:include page="home_bottom.jsp" />
	</footer>
</body>
</html>