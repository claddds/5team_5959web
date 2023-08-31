<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	#pet-profile-form{
		width:1200px;
		display: flex;
		flex-direction: column;
	    align-items: center;
	}
	#pet-img img{
		width:200px;
		height:200px;
		border-radius:50px;
	}
	#pet-upload button{
		border-radius:10px;
		width:100px;
		height:40px;
		font-size: 17px;
		font-family: 'Noto Sans KR', sans-serif;
		color:black;
	}
	#pet-img{
		display: flex;
	    grid-gap: 20px;
	    gap: 20px;
	    flex-wrap: wrap;
	    justify-content: center;
	    align-items: center;
	    max-width: 100%;
	}
	#pet-img p{margin-left:70px;}
	#pet-choice input[type="radio"]{
		/* position: absolute;
    	left: -9999px; */
	}
	#essential_span{
		color:red;
	}
</style>
</head>
<body>
	<div id="pet-profile-form">
		<div style="font-size: 50px; font-weight: bold;color:#FFA629;">반려동물 등록</div>
		<div id="pet-img">
			<img src="resources/images/home/mainbanner_eduexplain.png" />
		</div>
		<div id="pet-upload">
			<button>사진 첨부</button>
		</div>
		<div id="pet-name">
			<input type="text" placeholder="이름(문자와 숫자를 활용해 1-10자만 입력해주세요)" maxlength="10" />
		</div>
		<div><!-- 유효성 메세지 --></div>
		<div id="pet-birth">
			<input type="text" placeholder="반려동물의 생년월일" />
		</div>
		<div id="pet-choice">
			<input type="radio" name="pet" value="dog" id="DOG"/>
			<input type="radio" name="pet" value="cat" id="CAT"/>
			<div id="pet-img">
				<label for="DOG"><img src="resources/images/cat.png"><p>강아지</p></label>
				<label for="CAT"><img src="resources/images/dog.png"><p>고양이</p></label>
			</div>
		</div>
		<div>
			
		</div>
		<div id="pet_gender">
			<input type="radio" name="pet_gender_radio" value="male" id="male"/><label id="male">남아</label>
			<input type="radio" name="pet_gender_radio" value="female" id="female"/><label id="female">여아</label>
		</div>
	</div>
</body>
</html>