<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오구닥터 간단체크-강아지</title> 
<!-- Font Awesome Icons -->
<link
	rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"
/>
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
	
</style>
<script type="text/javascript">

</script>
</head>
<body>
	<header>
		<jsp:include page="/WEB-INF/views/home/home_top.jsp" />
	</header>
	<div id=minibanner>
        <img src="resources/images/list_banner/minibanner_eduexplain.png">
    </div>
	<div class="category_check">
		<div class="category_explain">
			<h2>유형 선택</h2>
			<h3>반려견의 증상 유형을 선택해주세요<p>최대 3개까지 가능합니다.</h3>
		</div>
		<div class="wrapper">
			<div class="container">
				<input type="checkbox" id="stool">
				<label for="stool">
 					<img src="resources/images/ogudoctor/self_category/stool.png" />
 				</label>
			</div>
			<div class="container">
				<input type="checkbox" id="urine">
				<label for="urine">
 					<img src="resources/images/ogudoctor/self_category/urine.png" />
 				</label>
			</div>
			<div class="container">
				<input type="checkbox" id="meal">
				<label for="meal">
 					<img src="resources/images/ogudoctor/self_category/meal.png" />
 				</label>
			</div>
			<div class="container">
				<input type="checkbox" id="vomit">
				<label for="vomit">
 					<img src="resources/images/ogudoctor/self_category/vomit.png" />
 				</label>
			</div>
			<div class="container">
				<input type="checkbox" id="ear">
				<label for="ear">
 					<img src="resources/images/ogudoctor/self_category/ear.png" />
 				</label>
			</div>
			<div class="container">
				<input type="checkbox" id="face_dog">
				<label for="face_dog">
 					<img src="resources/images/ogudoctor/self_category/face_dog.png" />
 				</label>
			</div>
			<div class="container">
				<input type="checkbox" id="eye">
				<label for="eye">
 					<img src="resources/images/ogudoctor/self_category/eye.png" />
 				</label>
			</div>
			<div class="container">
				<input type="checkbox" id="paw">
				<label for="paw">
 					<img src="resources/images/ogudoctor/self_category/paw.png" />
 				</label>
			</div>
			<div class="container">
				<input type="checkbox" id="joint">
				<label for="joint">
 					<img src="resources/images/ogudoctor/self_category/joint.png" />
 				</label>
			</div>
			<div class="container">
				<input type="checkbox" id="skin">
				<label for="skin">
 					<img src="resources/images/ogudoctor/self_category/skin.png" />
 				</label>
			</div>
			<div class="container">
				<input type="checkbox" id="tooth">
				<label for="tooth">
 					<img src="resources/images/ogudoctor/self_category/tooth.png" />
 				</label>
			</div>
			<div class="container">
				<input type="checkbox" id="breath">
				<label for="breath">
 					<img src="resources/images/ogudoctor/self_category/breath.png" />
 				</label>
			</div>
			<div class="container">
				<input type="checkbox" id="genitals_dog">
				<label for="genitals_dog">
 					<img src="resources/images/ogudoctor/self_category/genitals_dog.png" />
 				</label>
			</div>
			<div class="container">
				<input type="checkbox" id="behavior_dog">
				<label for="behavior_dog">
 					<img src="resources/images/ogudoctor/self_category/behavior_dog.png" />
 				</label>
			</div>
			<div class="container">
				<input type="checkbox" id="abdomen_dog">
				<label for="abdomen_dog">
 					<img src="resources/images/ogudoctor/self_category/abdomen_dog.png" />
 				</label>
			</div>
			<div class="container">
				<input type="checkbox" id="waist_dog">
				<label for="waist_dog">
 					<img src="resources/images/ogudoctor/self_category/waist_dog.png" />
 				</label>
			</div>
		</div>
		<div class="button_location">
			<button class="button" style="vertical-align: middle">
				<span>다음으로</span>
			</button>
		</div>	
	</div>
</body>
</html>