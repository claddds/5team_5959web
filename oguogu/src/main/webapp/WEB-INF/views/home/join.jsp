<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
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
    background-color: #FFA629;
    margin-top: 15px;
}
#term-use{margin-top:50px;margin-right:10px;}
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
}

.button-link {
	text-decoration: none;
}

#email_dupl,#nick_dupl,#id_dupl{
	cursor: pointer;
}
</style>
<!-- 구글 폰트 -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Bagel+Fat+One&family=Noto+Sans+KR&display=swap" rel="stylesheet">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$("#nick_dupl").on("click", function() {
			$.ajax({
				url: "/nicknameChk.do",
				dataType:"json",
				method:"post",
				//data : "nickname="+$("#nickname").val(),
				data : {"nickname":$("#nickname").val()},
				//async: false,
				success: function(data) {
					if(data == 1){
						$("#nickCheck").text("사용 불가능한 닉네임입니다.");
						$("#nickCheck").css("color","red");
						$("#nick_dupl").removeAttr("disabled");
					}else{
						$("#nickCheck").text("사용 가능한 닉네임입니다.");
						$("#nickCheck").css("color","green");
						$("#nick_dupl").attr("disabled","disabled");
						$("#nickname").attr("readonly", true);
					}
				},
				error: function() {
	                alert("오류 발생");
	            }
			});
		});
		
		$("#id_dupl").on("click", function() {
			$.ajax({
				url: "/IdChk.do",
				dataType:"json",
				method:"post",
				//data : "nickname="+$("#nickname").val(),
				data : {"user_id":$("#user_id").val()},
				//async: false,
				success: function(data) {
					if(data == 1){
						$("#idCheck").text("사용 불가능한 아이디입니다.");
						$("#idCheck").css("color","red");
						$("#id_dupl").removeAttr("disabled");
					}else{
						$("#idCheck").text("사용 가능한 닉네임입니다.");
						$("#idCheck").css("color","green");
						$("#id_dupl").attr("disabled","disabled");
						$("#user_id").attr("readonly", true);
					}
				},
				error: function() {
	                alert("오류 발생");
	            }
			});
		});
		
		$("#email_dupl").on("click", function() {
			$.ajax({
				url: "/emailChk.do",
				dataType:"json",
				method:"post",
				//data : "nickname="+$("#nickname").val(),
				data : {"email":$("#email").val()},
				//async: false,
				success: function(data) {
					if(data == 1){
						$("#emailCheck").text("사용 불가능한 이메일입니다.");
						$("#emailCheck").css("color","red");
						$("#email_dupl").removeAttr("disabled");
					}else{
						$("#emailCheck").text("사용 가능한 이메일입니다.");
						$("#emailCheck").css("color","green");
						$("#email_dupl").attr("disabled","disabled");
						$("#email").attr("readonly", true);
					}
				},
				error: function(xhr, status, error) {
	                alert("오류 발생");
	            }
			});
		});
		
		$("#ChkAll").on("click", function() {
			var checked = $('#ChkAll').is(':checked');
			if(checked){
				$(".term-use-chk").attr("checked", true);
			}else{
				$(".term-use-chk").attr("checked", false);
			}
		});
	});
</script>
</head>
<body>
	<header>
	<jsp:include page="home_top.jsp" />
	</header>
    <div class="login-wrapper">
        <h1 style="text-align: center;font-family: 'Bagel Fat One', cursive;">Join Us</h1>
        <form method="post"id="login-form">
        	<div style="display: flex; align-items: center;">
             	<!-- 요청 정보(request)  -->
	           	<input type="text" name="nickname" id="nickname" maxlength="20" placeholder="닉네임(2~20자/한글,영문자 대소문자,숫자만 입력)" required> &nbsp;&nbsp;&nbsp;
	           	<!-- db로 가서 닉네임 중복 체크함 -->	
	           	<input type="button" value="중복체크" id="nick_dupl" style="width:80px; display:none;">
           	</div>
        	<!-- 닉네임 유효성 검사 메세지 -->
           	<div id="nickCheck" style="width:400px;"></div>
           	
           	<div style="display: flex; align-items: center;">
             	<!-- 요청 정보(request)  -->
            	<input type="text" name="user_id" id="user_id" maxlength="20" placeholder="아이디 입력(8~20자/영문자 대소문자,숫자만 입력)"  required> &nbsp;&nbsp;&nbsp;
				<!-- db로 가서 아이디 중복 체크함 -->	
            	<input type="button" value="중복체크" id="id_dupl" style="width:80px; display:none;">
            </div>
            <!-- 아이디 유효성 검사 메세지 -->
            <div id="idCheck" style="width:400px;"></div>
            
            <div style="display: flex; align-items: center;">
             	<!-- 요청 정보(request)  -->
            	<input type="text" name="email" id="email" maxlength="20" placeholder="이메일" required> &nbsp;&nbsp;&nbsp;
				<!-- db로 가서 이메일 중복 체크함 -->	
            	<input type="button" value="중복체크" id="email_dupl" style="width:80px; display:none;">
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
             <div id="term-use">
             		<ul>
             			<li><input type="checkbox" id="ChkAll"><span><b>모두 동의</b></span></li>
             			<li><input type="checkbox" class="term-use-chk"><span>서비스 이용약관 동의</span><a href="https://www.naver.com" target="_blank" class="button-link" style="margin-left:75px;">내용보기</a></li>             			
             			<li><input type="checkbox" class="term-use-chk"><span>개인정보 수집 및 이용 동의</span><a href="https://www.naver.com" target="_blank" class="button-link" style="margin-left:33px;">내용보기</a></li>
             			<li><input type="checkbox" class="term-use-chk"><span>만 14세 이상입니다</span></li>
             			<li><input type="checkbox" class="term-use-chk"><span>(선택) 마케팅 정보 수신 동의</span><a href="https://www.naver.com" target="_blank" class="button-link" style="margin-left:20px;">내용보기</a></li>
             			<!-- 모두 동의 누르면 모든 버튼 눌려야 되고 / 모두 동의 or 선택 제외한 체크박스 눌리면 회원가입 버튼 누를 수 있음 -->
             		</ul>
             </div>
             <div>
             	<input type="submit" id ="join" value="회원가입" onclick="joinUsers(this.form)" style="width:200px; margin-left: 100px; margin-top:20px;"> 
             </div>
        </form>
    </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
    <script type="text/javascript">
		var passwordInput = document.getElementById("password"); //비밀번호
		var passwordChkInput = document.getElementById("passwordChk"); //비밀번호 확인
		var matchMessage = document.getElementById("matchMessage"); // 비밀번호 일치/불일치 메세지
	    var validationMessage = document.getElementById("validationMessage"); // 비밀번호 정규식
		var user_id = document.getElementById("user_id"); //유저 아이디 
		var email = document.getElementById("email"); //이메일
		var nicknameInput = document.getElementById("nickname");//닉네임
		
	    // 1.비밀번호 일치 펑션
		function checkPasswordMatch() {
		// 변수는 script 내부 최상단에 위치
			var password = passwordInput.value;
			var passwordChk = passwordChkInput.value;
			
			if(password == null && passwordChk == null){
		        matchMessage.textContent = null;				
			}
			
		    if (password === passwordChk) {
		        matchMessage.textContent = "*비밀번호가 일치합니다.";
		        matchMessage.style.color = "green";
		    } else {
		        matchMessage.textContent = "*비밀번호가 일치하지 않습니다.";
		        matchMessage.style.color = "red";
		    }
			
		}
		
	    // 2.비밀번호 유효성 펑션(8자 이상 20자 미만, 특수문자)
		  function validatePassword() {
			// 변수는 script 내부 최상단에 위치
	            var password = passwordInput.value;
	            var pattern = /^(?=.*?[A-Za-z])(?=.*?[0-9])(?=.*?[#?!@$ %^&*-]).{8,20}$/;
	            
	            if (!pattern.test(password)) {
	            	validationMessage.textContent = "*비밀번호는 8자 이상, 20자 미만 또는 특수문자(#?!@$ %^&*-)를 포함해야 합니다.";
		            validationMessage.style.color = "red";
		            validationMessage.style.marginBottom = "10px";
	            }else{
	            	validationMessage.textContent = "";
	            }
	            
	        }
	    
		  // 3.유저 아이디 유효성 검사
		  
		  function IDLengthChk() {
			// 변수는 script 내부 최상단에 위치
	            var user_id_Input = user_id.value;
	            var pattern = /^(?=.*?[A-Za-z])(?=.*?[0-9]).{8,20}$/;
	            
	            
	            if (!pattern.test(user_id_Input)) {
	            	idCheck.textContent = "*아이디 입력 조건을 확인해 주세요";
	            	id_dupl.style.display= "none";// 중복체크 버튼 비활성화
	            	idCheck.style.color = "red";
	            }else{
	            	idCheck.textContent = "*유효한 아이디입니다. 중복체크를 진행해주세요.";
	            	id_dupl.style.display= ""; // 중복체크 버튼 활성화
	            	idCheck.style.color = "green";
	            }
	        }
		  
		
		  // 4.이메일 유효성 검사
		  
		  function emailChk() {
			// 변수는 script 내부 최상단에 위치
	            var emailInput = email.value;
	            var pattern = /^([a-z0-9_\.-]+)@([\da-z\.-]+)\.([a-z\.]{2,6})$/;
	            
	            if (!pattern.test(emailInput)) {
	            	emailCheck.textContent = "*올바른 이메일 형식이 아닙니다.";
	            	email_dupl.style.display= "none";// 중복체크 버튼 비활성화
	            	emailCheck.style.color = "red";	            	
	            }else{
	            	emailCheck.textContent = "*이메일 중복체크를 진행해 주세요";
	            	email_dupl.style.display= ""; // 중복체크 버튼 활성화
	            	emailCheck.style.color = "green";
	            }
	        }
		// 5. 닉네임 유효성 검사
		function nickChk(){
			// 변수는 script 내부 최상단에 위치
			var nicknameInput = nickname.value;
			var pattern = /^[A-Za-z0-9가-힣].{1,20}$/;
			
			if(!pattern.test(nicknameInput)){
				nickCheck.textContent = "*닉네임 조건을 확인해주세요."
				nick_dupl.style.display="none"; //중복체크 버튼 비활성화
				nickCheck.style.color = "red";
			}else{
				nickCheck.textContent = "*유효한 닉네임 방식입니다."
				nick_dupl.style.display = ""; //중복체크 버튼 활성화
				nickCheck.style.color = "green";
			}
		}
		  
		passwordInput.addEventListener("input", checkPasswordMatch); // 1. 비밀번호칸 이벤트 리스너
		passwordChkInput.addEventListener("input", checkPasswordMatch); // 1. 비밀번호 확인칸 이벤트 리스너
		passwordInput.addEventListener("input", validatePassword);   // 2. 비밀번호 정규식 확인 이벤트 리스너
		
		user_id.addEventListener("input", IDLengthChk); // 3. 유저아이디 유효성 검사
		email.addEventListener("input", emailChk);		// 4. 이메일 유효성 검사
		nickname.addEventListener("input", nickChk);	// 5. 닉네임 유효성 검사
		
		// 비밀번호가 같고 === / 아이디, 이메일, 닉네임 중복체크도 했고 / 모든 칸이 다 입력되어 있으면 회원가입 submit 활성화
		// 체크박스도 체크 되어 있어야 회원가입 버튼 누를 수 있음
		// 중복체크 완료 됐으면 nickCheck.textContent,emailCheck.textContent,idCheck.textContent
		// 중복체크 완료 메세지 띄우기
		
		
		
	</script>
</body>
</html>