<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	#update-myprofile{
		width:1920px;
		margin:auto;
		display: flex;
		margin-top:50px;
	}
	#update-myprofileform{
		width:1500px;
		display: flex;
	    flex-direction: column;
	    align-items: center;
	    background-color: #FBF9D9;
	    padding-top:50px;
	    margin-left:100px;
	    border-radius:50px;
	}
	#myprofileform button{
		border:none;
	}
	#myimg{
		width:200px;
		height:200px;
		border-radius:50px;
	}
	#update-myprofile div{
		margin:10px 0;
	}
	
	#myimg-add-btn{
		border-radius:10px;
		width:100px;
		font-size: 15px;
	}
	#edit-remove button{
		width:350px;
		height:50px;
		border-radius:10px;
		background-color:#FFA629;
		font-size: 20px;
		color:#fff0f5;
	}
	#update-myprofileform input[type="text"]{
		height:30px;
		border:none;
	 	font-size: 20px;
	 	border-radius:5px;
	}
	#edit-remove-line{
		height:1px;
		width:350px;
		background-color: black;
	}
	#update-email input{
		user-select: none;
	 	pointer-events: none;
	 	width:280px;
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
	<div id="update-myprofile">
		<div style="margin-right:70px;">
			<jsp:include page="mypage-sidebar.jsp" />
		</div>
		<div id="update-myprofileform">
			<div style="font-size: 40px; font-weight: bold; color:#FFA629;">회원 정보 수정</div>
			<div>
				<img src="resources/images/home/mainbanner_eduexplain.png" id="myimg" />
			</div>
			<div id="myimg-add-delete">
				<button id="myimg-add-btn"> 사진 추가 </button>
			</div>
			
			<div id="my-nickname" style="margin-left:65px;">
				<label>닉네임 : </label><input type="text"value="nickname" style="width:50%"maxlength="20">
				<button style="border-radius:10px;font-size: 15px;margin-left:10px;">중복체크</button>
			</div>
			<div id="update-email">
				이메일 : <input type="text" id="" value="poiu62875@gmail.com" readonly>
			</div>
			<div id="edit-remove">
				<button id="edit-button" onclick="">수정하기</button><!-- 수정 완료 후 변경 완료한 아이디를 가지고 프로필 페이지로  -->
				<div id="edit-remove-line"></div>
				<button id="remove-button" onclick="">회원탈퇴</button><!-- 누르면 비번 찾기 페이지로 이동  -->
			</div>
		</div>
	</div>
	<footer>
		<jsp:include page="/WEB-INF/views/home/home_bottom.jsp" />
	</footer>
</body>
</html>