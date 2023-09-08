<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	#update-delete-pet-profileform{
		width:1920px;
		margin:auto;
		display: flex;
		margin-top:50px;
	}
	#update-delete-pet-profile{
		width:1500px;
		display: flex;
	    flex-direction: column;
	    align-items: center;
	    background-color: #FBF9D9;
	    padding-top:50px;
	    margin-left:100px;
	    border-radius:50px;
	   	padding-bottom:50px;
	}
	#update-delete-pet-profile div{
		margin:10px 0;
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
	#pet-name input[type="text"],
	#pet-birth input[type="text"]{
		width:400px;
		height:40px;
		border-radius:10px;
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
		/* 라디오 버튼 이미지로 활용할 수 있게 화면 이탈 */
		position: absolute;
    	left: -9999px;
	}
	#essential_span{
		color:red;
	}
	.pet_essential{
		color:red;
		font-size: 15px;
		padding-right:10px;
	}
	#pet_kind_list{
		width:400px;
		height:40px;
		font-size: 15px;
		border-radius:10px;
	}
	.gender_radio{
		width:18px;
		height:18px;
	}
	#pet_gender_radio,#pet_neut_div,#pet_weight_div{
		width:400px;
	}
	#pet_neut_check{
		width:18px;
		height:18px;
	}
	#pet_weight_div input[type="number"]{
		width:400px;
		height:30px;
		border-radius:10px;
	}
	#pet_add_cancel_div{
		display:grid;
		grid-template-rows:1fr 1fr 1fr;
	}
	#pet_add_cancel_div input[type="button"]{
		width:150px;
		height:30px;
		font-size:20px;
		margin:10px;
		border-radius: 10px;
		border:none;
		background-color: #FFA629;
		color:#f8f8ff;
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
<script type="text/javascript">

</script>
</head>
<body>
	<header>
		<jsp:include page="../home/home_top.jsp" />
	</header>
	<form id="update-delete-pet-profileform">
		<div style="margin-top:100px;">
			<jsp:include page="mypage-sidebar.jsp" />
		</div>
		<div id="update-delete-pet-profile">
			<div style="font-size: 50px; font-weight: bold;color:#FFA629;">반려동물 등록</div>
			<!-- 기본 이미지 뜨게 할거고 -->
			<div id="pet-img">
				<img src="resources/images/home/mainbanner_eduexplain.png" />
			</div>
			<!-- 사진 첨부 버튼 -->
			<div id="pet-upload">
				<button>사진 첨부</button>
			</div>
			<!-- 이름 입력 -->
			<div id="pet-name">
				<span class="pet_essential">*</span>
				<input type="text" placeholder="이름(문자와 숫자를 활용해 1-10자만 입력해주세요)" maxlength="10" />
			</div>
			<div><!-- 이름 조건 확인해달라는 유효성 메세지 넣어야함--></div>
			<div id="pet-birth">
				<span class="pet_essential">*</span>
				<input type="text" placeholder="반려동물의 생년월일" />
			</div>
			<div><!-- 생년월일 8자리 입력하라고 유효성 메세지 넣어야 함--></div>
			<!-- 강아지, 고양이 선택 -->
			<div id="pet-choice">
				<input type="radio" name="pet" value="dog" id="DOG"/><!-- name 언제든지 vo에 맞춰 수정 -->
				<input type="radio" name="pet" value="cat" id="CAT"/>
				<div id="pet-img">
					<label for="DOG"><img src="resources/images/mypage/cat.png"><p>강아지</p></label>
					<label for="CAT"><img src="resources/images/mypage/dog.png"><p>고양이</p></label>
				</div>
			</div>
			<!-- 품종선택 -->
			<div>
				<span class="pet_essential">*</span>
				<select id="pet_kind_list">
				<!-- 위에서 강아지 선택시 강아지 품종 리스트/고양이 선택시 고양이 품종 리스트 -->
					<option value="none" selected>품종</option>
					<option value="choice" disabled> 동물을 먼저 선택해주세요 </option>
					<!-- 품종 for문으로 돌려야함 
						자바스크립트로 radio dog이 선택 됐으면 강아지 리스트 뜨게
									radio cat이 선택 됐으면 고양이 리스트 뜨게
						<c:forEach items="$type_list}" var="k">
							<option><c:out value="${k.name}" /></option>
						</c:forEach>
					-->
				</select>
			</div>
			<!-- 성별 -->
			<div style="margin:5px 0; width:420px;font-size:18px;"><span class="pet_essential">*</span><label for="gender_radio">성별</label></div>
			<div id="pet_gender_radio">
				<input type="radio" name="pet_gender" value="male" class="gender_radio"/><label id="male" style="margin-right:50px;font-size:20px;">남아</label>
				<input type="radio" name="pet_gender" value="female" class="gender_radio"/><label id="female" style="font-size:20px;">여아</label>
			</div>
			<!-- 중성화 여부 -->
			<div id="pet_neut_div">
				<input type="checkbox" id="pet_neut_check"/><label for="pet_neut_check" style="font-size: 20px;">중성화 여부</label>
			</div>
			<!-- 몸무게 입력, 최소 0 -->
			<div id="pet_weight_div">
				<input type="number" placeholder="몸무게(kg)" id="pet_weight" min="0" />
			</div>
			<!-- 등록, 취소 버튼 -->
			<div id="pet_add_cancel_div">
				<input type="button" id="pet_add_btn" value="등록"/>
				<input type="button" id="pet_cancel_btn" value="취소"/>
				<input type="button" id="pet_delete_btn" value="삭제하기" style="background-color: red;"/>
			</div>
		</div>
	</form>
	<footer>
		<jsp:include page="/WEB-INF/views/home/home_bottom.jsp" />
	</footer>
</body>
</html>


