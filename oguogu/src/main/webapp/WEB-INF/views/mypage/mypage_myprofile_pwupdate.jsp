<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지 - 비밀번호 변경</title>
<style type="text/css">
	#pwUpdate-myprofile{
		width:1920px;
		margin:auto;
		display: flex;
		margin-top:50px;
	}
	
	#pwUpdate-myprofileform{
		width:1500px;
		display: flex;
	    flex-direction: column;
	    align-items: center;
	    background-color: #FBF9D9;
	    padding-top:20px;
	    margin-left:100px;
	    border-radius:50px;
	}
	
	#pwUpdate-myprofile div{
		margin:10px 0;
	}
	
	#changePwBtn{
		width:200px;
		height:50px;
		border-radius:10px;
		background-color:#FFA629;
		font-size: 20px;
		color:#fff0f5;
		background-color:#F3F1EF;
		color:#C4C4C4;
	}
	#pwUpdate-myprofileform input[type="password"]{
		height:30px;
		border:none;
	 	font-size: 20px;
	 	border-radius:5px;
	}
	
	.change-pw input{
	 	width:280px;
	}
	
	::placeholder{
		color: #C4C4C4;
		font-size: 15px;
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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>

<script type="text/javascript">
$(document).ready(function(){
    // 필요한 변수 선언
    var passwordInput = $("#password");
    var passwordChkInput = $("#passwordChk");
    var validationMessage = $("#validationMessage");
    var isPasswordValid = false;
	var isCPWChk = false;
    // 비밀번호 유효성 검사 함수
    function validatePassword() {
        var password = passwordInput.val();
        var pattern = /^(?=.*?[A-Za-z])(?=.*?[0-9])(?=.*?[#?!@$ %^&*-]).{8,20}$/;

        if (!pattern.test(password)) {
            validationMessage.text("*비밀번호는 8자 이상, 20자 미만 또는 특수문자(#?!@$ %^&*-)를 포함해야 합니다.").css("color", "red").css("marginBottom", "10px");
            isPasswordValid = false;
        } else {
            validationMessage.text("");
            isPasswordValid = true;
        }
        console.log(isPasswordValid);
        updateButtonState();
    }

    // 비밀번호 입력 필드에 대한 이벤트 리스너 추가
    passwordInput.on("keyup", function() {
        validatePassword();
    });

    // 버튼 상태 업데이트 함수 (버튼 활성화/비활성화 관리)
    function updateButtonState() {
        var changePwBtn = $("#changePwBtn");
        if (isPasswordValid && isCPWChk) {
            changePwBtn.prop("disabled", false).css("background-color", "#FFA629").css("cursor", "pointer").css("color","white");
        } else {
            changePwBtn.prop("disabled", true).css("background-color", "#F3F1EF").css("cursor", "default").css("color","#C4C4C4");
        }
    }
	
    $("#cPw").keyup(function() {
		$.ajax({
			url:"/userPwChk.do",
			type:"post",
			dataType:"json",
			data:{
				pw:$("#cPw").val()
			},
			success: function(data) {
				if(data == 0){
					$("#pwCheck").text("현재 비밀번호가 일치하지 않습니다.").css("color", "red")
					isCPWChk = false;
				}else{
					$("#pwCheck").text("비밀번호가 일치합니다.").css("color", "green")
					isCPWChk = true;
				}
				updateButtonState();
			},
			error: function() {
				
			}
		})
	})
    
    
    $("#changePwBtn").on("click", function() {
        if($("#cPw").val().trim() == ""){
            alert("현재 비밀번호를 입력해주세요");
            $("#cPw").focus();
            return false;
        }

        if($("#password").val().trim()==""){
            alert("변경 비밀번호를 입력해주세요");
            $("#password").focus();
            return false;
        }

        if($("#passwordChk").val().trim()==""){
            alert("비밀번호 확인 칸을 입력해주세요");
            $("#passwordChk").focus();
            return false;
        }

        if ($("#password").val() != $("#passwordChk").val()) {
            alert("변경비밀번호가 일치하지 않습니다.");
            $("#passwordChk").focus();
            return false;
        }

        if($("#cPw").val() == $("#password").val()){
            alert("현재 비밀번호와 변경할 비밀번호가 같습니다. 다시 입력해주세요.");
            $("#cPw").focus();
            $("#cPw").val("");
            $("#password").val("");
            $("#passwordChk").val("");
            return false;
        }

        $.ajax({
            url: "/pwupdate.do",
            type: "post",
            dataType: "json",
            data: {
                pw: $("#password").val()
            },
            success: function(data) {
                if (data == 1) {
                    // 비밀번호가 업데이트된 경우, 클라이언트 측에서 리다이렉트 수행
                    alert("비밀번호가 변경되었습니다. 다시 로그인 해주세요.")
                    window.location.href = "/clearSession.do";
                } else {
                    // 업데이트가 실패한 경우 적절한 처리 수행
                    alert("비밀번호 업데이트에 실패했습니다.");
                }
            },
            error: function(xhr, status, error) {
                // 오류 처리
                alert("오류가 발생했습니다: " + error);
            }
        });

    });
    
	updateButtonState();
});
</script>
</head>
<body>
	<header>
		<jsp:include page="../home/home_top.jsp" />
	</header>
	<div id="pwUpdate-myprofile">
		<div style="margin-right:70px;">
			<jsp:include page="mypage-sidebar.jsp" />
		</div>
		<form id="pwUpdate-myprofileform" method="post">
			<div style="font-size: 40px; font-weight: bold; color:#FFA629; margin:50px 0;">비밀번호 변경</div>

			<div id="current-pw">
				현재 비밀번호 : <input type="password" id="cPw" maxlength="20" style="width:280px;">
			</div>
			
			<div id="pwCheck" style="width:350px;"></div>
			
			<div class="change-pw">
				변경 비밀번호 : <input type="password" id="password" name="pw" maxlength="20" placeholder="비밀번호 8자 이상, 20자 미만" >
			</div>
			<div style="width:400px;">
				<label style="color:#C4C4C4; width:200px;">* 비밀번호는 특수문자(# ,? ,! ,@ ,$ ,% ,^ ,& ,* ,-) 중 하나를 포함 해야합니다.</label>
			</div>
			<div class="change-pw">
				비밀번호 확인 : <input type="password" id="passwordChk" maxlength="20" placeholder="비밀번호 확인" >
			</div>
            <div id="validationMessage" style="width:400px;height:15px;"></div> 
			<div id="changePwInput" style="margin-top:30px;">
				<input type="button" id="changePwBtn" value="변경" disabled/>
			</div>
		</form>
	</div>
	<footer>
		<jsp:include page="/WEB-INF/views/home/home_bottom.jsp" />
	</footer>

</body>
</html>