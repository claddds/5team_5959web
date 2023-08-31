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
	#myprofileform div{
		margin:10px 0;
	} 
	#myprofileform button{
		border:none;
	}
	#myimg img{
		width:200px;
		height:200px;
		border-radius:50px;
	}
	
	#myimg-add-delete button{
		border-radius:10px;
		width:80px;
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
	#myprofileform input[type="text"]{
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
	#my-email input{
		user-select: none;
	 	pointer-events: none;
	 	width:280px;
	}
</style>
</head>
<body>
	<div id="myprofileform">
			<div style="font-size: 40px; font-weight: bold; color:#FFA629;">회원 정보 수정</div>
			<div id="myimg">
				<img src="resources/images/home/mainbanner_eduexplain.png" />
			</div>
			<div id="myimg-add-delete">
				<button id="myimg-add-btn"> 사진 추가 </button>
			</div>

			<div id="my-nickname" style="margin-left:35px;">
				<label>닉네임 :</label><input type="text" id="" value=" nickname" style="width:50%;"maxlength="20">
				<button style="border-radius:10px;font-size: 15px;">중복체크</button>
			</div>
			<div id="my-email">
				이메일 : <input type="text" id="" value="poiu62875@gmail.com" readonly>
			</div>
			<div id="edit-remove">
				<button id="edit-button" onclick="">수정하기</button><!-- 수정 완료 후 변경 완료한 아이디를 가지고 프로필 페이지로  -->
				<div id="edit-remove-line"></div>
				<button id="remove-button" onclick="">회원탈퇴</button><!-- 누르면 비번 찾기 페이지로 이동  -->
			</div>
	</div>
</body>
</html>