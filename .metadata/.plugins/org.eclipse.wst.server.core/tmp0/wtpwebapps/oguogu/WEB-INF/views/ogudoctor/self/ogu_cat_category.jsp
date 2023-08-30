<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오구닥터 간단체크-고양이</title> 
<!-- Font Awesome Icons -->
<link
	rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"
/>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;500&display=swap" rel="stylesheet">
<style type="text/css">
	body{
		
	}
	
	#minibanner img{
		width:1920px;
		height:200px;
		display:flex;
		margin:auto;
		margin-top:20px;
		margin-bottom: 20px;
    }
    
	.category_check{
   
	}
	
	.category_explain{
		width: 1920px;
		text-align: center;
		margin: 0 auto;
		margin-bottom: 30px;
	}
	.wrapper{
		width: 1600px;
		text-align: center;
		margin: 0 auto;
		display: grid;
		place-items: center;
		gap:15px;
		
	}
	.container{
		width: 180px;
		height: 180px;
		background-color: #ffffff;
		position: relative;
		cursor: pointer;
	}
	.container img{
		width: 70%;
		height: 70%;
  		position: absolute;
  		margin: auto;
  		left: 0;
  		right: 0;
  		top: 0;
  		bottom: 0;
  		cursor: pointer;
	}
	input[type="checkbox"]{
		-webkit-appearance: none;
		position: relative;
		width: 100%;
		cursor:pointer;
	}
	input[type="checkbox"]:after {
  		position: absolute;
  		font-family: "Font Awesome 5 Free";
  		font-weight: 400;
  		content: "\f111";
  		font-size: 18px;
  		color: #ffa234;
  		right: 10px;
  		top: -5px;
	}
	
	input[type="checkbox"]:checked:after {
  		font-weight: 900;
  		content: "\f058";
  		color: #ffa234;
	}
	
	@media screen and (min-width: 950px) {
		.wrapper{
			grid-template-columns: repeat(4, 1fr);
    		gap: 10px;
		}
		.container {
    		height: 300px;
    		width: 300px;
  		}
  		input[type="checkbox"]:after {
   			font-size: 22px;
  		}
	}
	
	/* 버튼 스타일 */
	.button {
  		display: inline-block;
  		border-radius: 4px;
  		background-color: #ffa234;
  		border: none;
  		color: #FFFFFF;
  		text-align: center;
  		font-size: 25px;
  		border-radius: 15px;
  		
  		padding: 20px;
  		margin: 0 auto;
  		width: 200px;
  		transition: all 0.5s;
  		cursor: pointer;
  		align-items: center;
	}
	.button_location{
		width: 1920px;
		text-align: center;
		margin: 0 auto;
		margin-top: 30px;
	}
	.button span {
	  	cursor: pointer;
  		display: inline-block;
  		position: relative;
	  	transition: 0.5s;
	}

	.button span:after {
		content: '\00bb';
		position: absolute;
		opacity: 0;
		top: 0;
		right: -20px;
		transition: 0.5s;
	}

	.button:hover span {
		padding-right: 25px;
	}

	.button:hover span:after {
		opacity: 1;
		right: 0;
	}
	footer{
		width:1920px;
		display:flex;
		margin:auto;
		margin-top:20px;
		margin-bottom: 20px;
	}
	
</style>
<script type="text/javascript">
	function count_check(obj) {
		var chkBox = document.getElementsByName("bodypart_cat");
		var chkCnt = 0;
		for (var i = 0; i < chkBox.length; i++) {
			if(chkBox[i].checked){
				chkCnt++;
			}
		}
		if(chkCnt > 3){
			alert("3개까지만 체크 가능합니다.");
			obj.checked = false;
			return false;
		}
	}
</script>
</head>
<body>
	<header>
		<jsp:include page="/WEB-INF/views/home/home_top.jsp" />
	</header>
	<div id=minibanner>
        <a href="/ogudoctormaindisplay.do"><img src="resources/images/page_banner/listbanner_ogudoctor.png"></a>
    </div>
	<div class="category_check">
		<div class="category_explain">
			<h2 style="font-family:'Noto Sans KR', sans-serif;">유형 선택</h2>
			<br>
			<h3 style="font-family: 'Noto Sans KR', sans-serif;">반려묘의 증상 유형을 선택해주세요</h3>
			<h4 style="font-family: 'Noto Sans KR', sans-serif; color: gray;"><p>최대 3개까지 가능합니다.</h4>
		</div>
		<div class="wrapper">
			<div class="container">
				<input type="checkbox" name="bodypart_cat" onclick="count_check(this);" id="stool">
				<label for="stool">
 					<img src="resources/images/ogudoctor/self_category/stool.png" />
 				</label>
			</div>
			<div class="container">
				<input type="checkbox" name="bodypart_cat" onclick="count_check(this);" id="urine">
				<label for="urine">
 					<img src="resources/images/ogudoctor/self_category/urine.png" />
 				</label>
			</div>
			<div class="container">
				<input type="checkbox" name="bodypart_cat" onclick="count_check(this);" id="meal">
				<label for="meal">
 					<img src="resources/images/ogudoctor/self_category/meal.png" />
 				</label>
			</div>
			<div class="container">
				<input type="checkbox" name="bodypart_cat" onclick="count_check(this);" id="vomit">
				<label for="vomit">
 					<img src="resources/images/ogudoctor/self_category/vomit.png" />
 				</label>
			</div>
			<div class="container">
				<input type="checkbox" name="bodypart_cat" onclick="count_check(this);" id="ear">
				<label for="ear">
 					<img src="resources/images/ogudoctor/self_category/ear.png" />
 				</label>
			</div>
			<div class="container">
				<input type="checkbox" name="bodypart_cat" onclick="count_check(this);" id="face_cat">
				<label for="face_cat">
 					<img src="resources/images/ogudoctor/self_category/face_cat.png" />
 				</label>
			</div>
			<div class="container">
				<input type="checkbox" name="bodypart_cat" onclick="count_check(this);" id="eye">
				<label for="eye">
 					<img src="resources/images/ogudoctor/self_category/eye.png" />
 				</label>
			</div>
			<div class="container">
				<input type="checkbox" name="bodypart_cat" onclick="count_check(this);" id="paw">
				<label for="paw">
 					<img src="resources/images/ogudoctor/self_category/paw.png" />
 				</label>
			</div>
			<div class="container">
				<input type="checkbox" name="bodypart_cat" onclick="count_check(this);" id="joint">
				<label for="joint">
 					<img src="resources/images/ogudoctor/self_category/joint.png" />
 				</label>
			</div>
			<div class="container">
				<input type="checkbox" name="bodypart_cat" onclick="count_check(this);" id="skin">
				<label for="skin">
 					<img src="resources/images/ogudoctor/self_category/skin.png" />
 				</label>
			</div>
			<div class="container">
				<input type="checkbox" name="bodypart_cat" onclick="count_check(this);" id="tooth">
				<label for="tooth">
 					<img src="resources/images/ogudoctor/self_category/tooth.png" />
 				</label>
			</div>
			<div class="container">
				<input type="checkbox" name="bodypart_cat" onclick="count_check(this);" id="breath">
				<label for="breath">
 					<img src="resources/images/ogudoctor/self_category/breath.png" />
 				</label>
			</div>
			<div class="container">
				<input type="checkbox" name="bodypart_cat" onclick="count_check(this);" id="genitals_cat">
				<label for="genitals_cat">
 					<img src="resources/images/ogudoctor/self_category/genitals_cat.png" />
 				</label>
			</div>
			<div class="container">
				<input type="checkbox" name="bodypart_cat" onclick="count_check(this);" id="behavior_cat">
				<label for="behavior_cat">
 					<img src="resources/images/ogudoctor/self_category/behavior_cat.png" />
 				</label>
			</div>
			<div class="container">
				<input type="checkbox" name="bodypart_cat" onclick="count_check(this);" id="abdomen_cat">
				<label for="abdomen_cat">
 					<img src="resources/images/ogudoctor/self_category/abdomen_cat.png" />
 				</label>
			</div>
			<div class="container">
				<input type="checkbox" name="bodypart_cat" onclick="count_check(this);" id="waist_cat">
				<label for="waist_cat">
 					<img src="resources/images/ogudoctor/self_category/waist_cat.png" />
 				</label>
			</div>
		</div>
		<div class="button_location">
			<button class="button" style="vertical-align: middle">
				<span>다음으로</span>
			</button>
		</div>	
	</div>
	<footer>
		<jsp:include page="/WEB-INF/views/home/home_bottom.jsp" />
	</footer>
</body>
</html>