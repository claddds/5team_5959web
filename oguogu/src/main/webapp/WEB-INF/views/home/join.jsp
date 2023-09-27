<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>

<meta http-equiv="Cache-Control" content="no-store" />
<meta http-equiv="Pragma" content="no-cache" />
<meta http-equiv="Expires" content="0" />

<meta charset="UTF-8">
<title>오구오구 회원가입</title>
<style type="text/css">

.login-wrapper{
    font-family: 'Noto Sans KR', sans-serif;
    width: 500px;
    padding: 40px;
    box-sizing: border-box;
    margin: auto;
    font-size: 14px;
    /* padding-top: 100px; */
}

.login-wrapper > h1{
    font-size: 60px;
    color: #FFA629;
    margin-bottom: 40px;
}


#login-form > div input{
	width:95%;
    height: 50px;
    padding: 0 10px;
/*     box-sizing: border-box; */
	margin:15px 0px;
    border-radius: 6px;
    background-color: #F3F1EF;
    border:none;
}

#login-form > div input::placeholder{
    color: #C4C4C4;
}

#login-form > div input[type="submit"]{
    color: #fff;
    font-size: 16px;
    background-color: #F3F1EF;
    margin-top: 15px;
}
#term-use{margin-top:50px;padding-right:20px;}
#term-use ul li{
	list-style-type: none;
}
#term-use input[type="checkbox"]{
	width:18px;
	height:16px;
	margin-right:5px;
}
#term-use span{
	font-size: 18px;
}

.content{
	color:black;
}


.button-link {
 	display: inline-block;
  	padding: 10px 20px;
 	background-color: #F3F1EF;
  	text-decoration: none;
  	border-radius: 5px;
 	box-sizing:border;
	width:60px;
	margin-left:10px;
	border-radius: 8px;
	text-decoration: none;
}


#email_dupl,#nick_dupl,#id_dupl{
	cursor: pointer;
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
<link href="https://fonts.googleapis.com/css2?family=Bagel+Fat+One&family=Noto+Sans+KR&display=swap" rel="stylesheet">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
<script type="text/javascript">
	 window.onpageshow = function(event) {
	    if ( event.persisted || (window.performance && window.performance.navigation.type == 2)) {
	    // Back Forward Cache로 브라우저가 로딩될 경우 혹은 브라우저 뒤로가기 했을 경우
	    location.href="/logindisplay.do";
	  }
	} 
	
	
	$(document).ready(function(){
		//닉네임, 아이디, 이메일, 비밀번호 일치, 비밀번호 조건
		var isNicknameValid = false;
	    var isIdValid = false;
	    var isEmailValid = false;
	    var isPasswordMatch = false;
	    var isPasswordValid = false;
	    var isAllTermsChecked = false;
	    
	    //회원가입 버튼 활성/비활성
	    function updateButtonState() {
	        if (isNicknameValid && isIdValid && isEmailValid && isPasswordMatch && isPasswordValid && isAllTermsChecked) {
	            $("#join").prop("disabled", false).css("background-color", "#FFA629").css("cursor", "pointer").css("color","white");
	        } else {
	            $("#join").prop("disabled", true).css("background-color", "#F3F1EF").css("cursor", "default").css("color","#C4C4C4");
	        }
	    }
	    
	    //닉네임 유효성
	    $("#nickname").on("input", function() {
	    	  nick_input = $("#nickname").val();
	    	  var pattern = /^[A-Za-z0-9가-힣].{1,20}$/;

	    	  if (pattern.test(nick_input)) {
	    	    $.ajax({
	    	      url: "/nicknameChk.do",
	    	      dataType: "json",
	    	      method: "post",
	    	      data: {
	    	        "nickname": nick_input
	    	      },
	    	      success: function(data) {
	    	        if (data == 1) {
	    	          $("#nickCheck").text("다른 닉네임을 사용해주세요.").css("color", "red");
	    	          isNicknameValid = false;
	    	        } else if (data == 0) {
	    	          $("#nickCheck").text("사용 가능한 닉네임입니다.").css("color", "green");
	    	          isNicknameValid = true;
	    	        }
	    	        console.log(isNicknameValid);
	    	        updateButtonState();
	    	      },
	    	      error: function() {
	    	        alert("오류 발생");
	    	      }
	    	    });
	    	  } else {
	    	    $("#nickCheck").text("닉네임 조건에 맞지 않습니다.").css("color", "red");
	    	    isNicknameValid = false;
	    	    console.log(isNicknameValid);
	    	  }
	    	  updateButtonState();
	    	});
	    
		//아이디 유효성
	    $("#user_id").on("input", function() {
	    	  user_id_Input = $("#user_id").val();
	    	  var pattern = /^(?=.*?[A-Za-z])(?=.*?[0-9]).{8,20}$/;

	    	  if (pattern.test(user_id_Input)) {
	    	    $.ajax({
	    	      url: "/IdChk.do",
	    	      dataType: "json",
	    	      method: "post",
	    	      data: {
	    	        "user_id": user_id_Input
	    	      },
	    	      success: function(data) {
	    	        if (data == 1) {
	    	          $("#idCheck").text("다른 아이디를 사용해주세요.").css("color", "red");
	    	          isIdValid = false;
	    	        } else if (data == 0) {
	    	          $("#idCheck").text("사용 가능한 아이디입니다.").css("color", "green");
	    	          isIdValid = true;
	    	        }
	    	        console.log(isIdValid);
	    	        updateButtonState();
	    	      },
	    	      error: function() {
	    	        alert("오류 발생");
	    	      }
	    	    });
	    	  } else {
	    	    $("#idCheck").text("아이디 조건에 맞지 않습니다.").css("color", "red");
	    	    isIdValid = false;
	    	    console.log(isIdValid);
	    	  }
	    	  updateButtonState();
	    	});
		
		// 이메일 유효성
	    $("#email").on("input", function() {
	    	  emailInput = $("#email").val();
	    	  var pattern = /^[\w\.-]+@[\w\.-]+\.\w{2,}$/;

	    	  if (pattern.test(emailInput)) {
	    	    $.ajax({
	    	      url: "/emailChk.do",
	    	      dataType: "json",
	    	      method: "post",
	    	      data: {
	    	        "email": emailInput
	    	      },
	    	      success: function(data) {
	    	        if (data == 1) {
	    	          $("#emailCheck").text("다른 이메일을 사용해주세요.").css("color", "red");
	    	          isEmailValid = false;
	    	        } else {
	    	          $("#emailCheck").text("사용 가능한 이메일입니다.").css("color", "green");
	    	          isEmailValid = true;
	    	        }
	    	        updateButtonState();
	    	        console.log(isEmailValid);
	    	      },
	    	      error: function() {
	    	        alert("오류 발생");
	    	      }
	    	    });
	    	  } else {	
	    	    $("#emailCheck").text("이메일 주소가 유효하지 않습니다.").css("color", "red");
	    	    isEmailValid = false;
	    	    console.log(isEmailValid);
	    	  }
	    	  updateButtonState();
	    	});
		
		//비밀번호 일치
		
		// 비밀번호 입력 필드
		var passwordInput = $("#password");
		// 비밀번호 확인 필드
		var passwordChkInput = $("#passwordChk");
		// 비밀번호 일치/불일치 메시지
		var matchMessage = $("#matchMessage");
		// 비밀번호 정규식 메시지
		var validationMessage = $("#validationMessage");
		
		// 비밀번호 일치 확인 함수
		function checkPasswordMatch() {
		  var password = passwordInput.val();
		  var passwordChk = passwordChkInput.val();
		
		  if (password != "" || passwordChk != "") {
		    if (password == passwordChk) {
		      matchMessage.text("*비밀번호가 일치합니다.").css("color", "green");
		      isPasswordMatch = true;
		    } else {
		      matchMessage.text("*비밀번호가 일치하지 않습니다.").css("color", "red");
		      isPasswordMatch = false;
		    }
		    console.log(isPasswordMatch);
		    updateButtonState();
		  }
		}
		
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
		passwordInput.on("keyup", checkPasswordMatch);
		passwordInput.on("keyup", validatePassword);
		// 비밀번호 확인 필드에 대한 이벤트 리스너 추가
		passwordChkInput.on("keyup", checkPasswordMatch);
				
		
		// 체크박스 전체 선택/해제
		$("#ChkAll").on("click",function () {
		  var checked = $(this).is(":checked");

		  if(checked){
		  	$(".term-use-chk").prop("checked", true);
		  } else {
			$(".term-use-chk").prop("checked", false);
		  }
		  termCheck()
		});
		
		
		// 전체선택 후 하나만 해제했을 때, 전체선택도 해체 해주기
		$(".term-use-chk").on("click", function() {
			  var checked = $(this).is(":checked");

			  if (!checked) {
				termCheck()
			  	$("#ChkAll").prop("checked", false);
			  }
		});
		
		//개별 선택으로 전체 다 선택되었을 때, 전체선택에도 체크 해주기
		$(".term-use-chk").on("click",function() {
		    var isChecked = true;
		    
		    $(".term-use-chk").each(function(){
		    	isChecked = isChecked && $(this).is(":checked");
		    });
		    termCheck()
		    $("#ChkAll").prop("checked", isChecked);
		    
		});
		
		//체크박스 체크
		function termCheck() {
		    var Chk1 = $("#Chk1").is(":checked");
		    var Chk2 = $("#Chk2").is(":checked");
		    var Chk3 = $("#Chk3").is(":checked");
		    
		    if (Chk1 && Chk2 && Chk3) {
		    	$("#term_essntial_agree").css("display", "none");
		        isAllTermsChecked = true;
		    } 
 		    else {
 		    	$("#term_essntial_agree").css("display", "block");
		       	isAllTermsChecked = false;
 		    }
		    updateButtonState();
		}
		
		updateButtonState();
	});
</script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script type="text/javascript">
	function joinUser(f) {
		alert("회원가입이 완료 되었습니다.")
		f.action="/user_add.do"
	}
</script>
</head>
<body>
	<header>
	<jsp:include page="home_top.jsp" />
	</header>
    <div class="login-wrapper">
        <h1 style="text-align: center;font-family: 'Bagel Fat One', cursive;">Join Us</h1>
        <h2 id="all-input" style="display:flex;justify-content: center;">모든 칸을 입력해주세요</h2>
        <form method="post"id="login-form">
        	<div style="display: flex; align-items: center;">
             	<!-- 요청 정보(request)  -->
	           	<input type="text" name="nickname" id="nickname" maxlength="20" placeholder="닉네임(2~20자/한글,영문자 대소문자,숫자만 입력)" required> &nbsp;&nbsp;&nbsp;
           	</div>
        	<!-- 닉네임 유효성 검사 메세지 -->
           	<div id="nickCheck" style="width:400px;"></div>
           	
           	<div style="display: flex; align-items: center;">
             	<!-- 요청 정보(request)  -->
            	<input type="text" name="user_id" id="user_id" maxlength="20" placeholder="아이디 입력(8~20자/영문자 대소문자,숫자만 입력)"  required> &nbsp;&nbsp;&nbsp;
            </div>
            <!-- 아이디 유효성 검사 메세지 -->
            <div id="idCheck" style="width:400px;"></div>
            
            <div style="display: flex; align-items: center;">
             	<!-- 요청 정보(request)  -->
            	<input type="text" name="email" id="email" maxlength="25" placeholder="이메일" required> &nbsp;&nbsp;&nbsp;
            </div>
            <!-- 이메일 유효성 검사 메세지 -->
            <div id="emailCheck" style="width:400px;"></div>
            
             <div>
             	<!-- 요청 정보(request) -->
             	<input type="password" name="pw" id="password" maxlength="20" placeholder="비밀번호 8자 이상, 20자 미만" required>
             	<label style="color:#C4C4C4">* 비밀번호는 특수문자(# ,? ,! ,@ ,$ ,% ,^ ,& ,* ,-) 중 하나를 포함 해야합니다.</label>
             	<!-- 비밀번호 확인란 -->
             	<input type="password" name="pwchk" id="passwordChk" maxlength="20" placeholder="비밀번호 확인" required>
             	<!-- 비밀번호 일치 여부 -->
             	<div id="matchMessage" style="width:400px;height:15px; margin-bottom:10px;"></div>
             	<!-- 비밀번호 정규식 특수문자 검사 -->	
             	<div id="validationMessage" style="width:400px;height:15px;"></div> 
             </div>
             <div id="term-use" >
             		<ul>
             			<li><input type="checkbox" id="ChkAll"><span><b>모두 동의</b></span></li>
             			<li><input type="checkbox" class="term-use-chk" id="Chk1"><span>서비스 이용약관 동의</span><a href="/term_serviceAddForm.do" target="_blank" class="button-link" style="margin-left:75px;">내용보기</a></li>             			
             			<li><input type="checkbox" class="term-use-chk" id="Chk2"><span>개인정보 수집 및 이용 동의</span><a href="/term_infoAddForm.do" target="_blank" class="button-link" style="margin-left:33px;">내용보기</a></li>
             			<li><input type="checkbox" class="term-use-chk" id="Chk3"><span>만 14세 이상입니다</span></li>
             			<li><input type="checkbox" class="term-use-chk" id="Chk4"><span>(선택) 마케팅 정보 수신 동의</span><a href="/term_marketingAddForm.do" target="_blank" class="button-link" style="margin-left:20px;">내용보기</a></li>
             			<!-- 모두 동의 누르면 모든 버튼 눌려야 되고 / 모두 동의 or 선택 제외한 체크박스 눌리면 회원가입 버튼 누를 수 있음 -->
             		</ul>
             </div>
             <h3 id="term_essntial_agree" style="font-size: 15px;color:red;padding-left:20px;">
             	필수 동의사항에 동의 해야 회원 가입이 가능합니다.
             </h3>
               <div>
             	<input type="submit" id ="join" value="회원가입" onclick="joinUser(this.form)" style="width:200px; margin-left: 100px; margin-top:20px;" disabled> 
             </div>
        </form>
    </div>
    <footer>
		<jsp:include page="home_bottom.jsp" />
	</footer>
</body>
</html>