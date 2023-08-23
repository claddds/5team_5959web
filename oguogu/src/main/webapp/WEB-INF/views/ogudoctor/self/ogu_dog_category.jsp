<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오구닥터 간단체크-강아지</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Poppins&display=swap"
	rel="stylesheet">
	 
<style type="text/css">
/*  
* {
	padding: 0;
	margin: 0;
	box-sizing: border-box;
}
body {
	background-color: #f5f7ff;
}
img{
	width: 150px;
	height: 150px;
}
section {
	width: 100vmin;
	height: 100vh;
	position: absolute;
	transform: translate(-50%, -50%);
	left: 50%;
	top: 50%;
	display: flex;
	align-items: center;
	justify-content: space-around;
	flex-wrap: wrap;
	gap: 20px;
}
.tile {
	height: 200px;
	width: 170px;
	position: relative;
}
label {
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: center;
	gap: 20px;
	height: 80%;
	width: 100%;
	position: absolute;
	bottom: 0;
	cursor: pointer;
}
input[type="checkbox"] {
	-webkit-appearance: none;
	position: relative;
	height: 100%;
	width: 100%;
	background-color: #ffffff;
	border-radius: 10px;
	cursor: pointer;
	border: 3px solid transparent;
	outline: none;
	box-shadow: 15px 15px 25px rgba(2, 28, 53, 0.05);
}

input[type="checkbox"]:after {
	position: absolute;
	font-family: "Font Awesome 5 Free";
	font-weight: 400;
	content: "\f111";
	font-size: 22px;
	top: 10px;
	left: 10px;
	color: #e2e6f3;
}

input[type="checkbox"]:hover {
	transform: scale(1.08);
}

input[type="checkbox"]:checked {
	border: 3px solid #478bfb;
}

input[type="checkbox"]:checked:after {
	font-weight: 900;
	content: "\f058";
	color: #478bfb;
}
input[type="checkbox"]:checked+label .fas {
	animation: grow 0.5s;
}

@
keyframes grow { 50%{
	font-size: 80px;
}
}
*/
</style>

<script type="text/javascript">
</script>
</head>
<body>
<jsp:include page="/WEB-INF/views/home/home_top.jsp" />

<h2>유형 선택</h2>
<h3>반려견의 증상 유형을 선택해주세요<p>최대 3개까지 가능합니다.</h3>
<!-- 
<section>
 	<div class="tile">
 		<input type="checkbox" name = "bodypart" id="stool">
 		<label for="stool">
 			<img src="resources/images/ogudoctor/self_category/stool.png" >
 		</label>
 	</div>
 	<div class="tile">
 		<input type="checkbox" name="bodypart" id="urine">
 		<label for="urine">
 			<img src="resources/images/ogudoctor/self_category/urine.png" >
 		</label>
 	</div>
 	<div class="tile">
 		<input type="checkbox" name="bodypart" id="meal">
 		<label for="meal">
 			<img src="resources/images/ogudoctor/self_category/meal.png" >
 		</label>
 	</div>
 	<div class="tile">
 		<input type="checkbox" name="bodypart" id="vomit">
 		<label for="vomit">
 			<img src="resources/images/ogudoctor/self_category/vomit.png" >
 		</label>
 	</div>
 	<div class="tile">
 		<input type="checkbox" name="bodypart" id="ear">
 		<label for="ear">
 			<img src="resources/images/ogudoctor/self_category/ear.png" >
 		</label>
 	</div>
 	<div class="tile">
 		<input type="checkbox" name="bodypart" id="face_dog">
 		<label for="face_dog">
 			<img src="resources/images/ogudoctor/self_category/face_dog.png" >
 		</label>
 	</div>
 	<div class="tile">
 		<input type="checkbox" name="bodypart" id="eye">
 		<label for="eye">
 			<img src="resources/images/ogudoctor/self_category/eye.png" >
 		</label>
 	</div>
 	<div class="tile">
 		<input type="checkbox" name="bodypart" id="paw">
 		<label for="paw">
 			<img src="resources/images/ogudoctor/self_category/paw.png" >
 		</label>
 	</div>
 	<div class="tile">
 		<input type="checkbox" name="bodypart" id="joint">
 		<label for="joint">
 			<img src="resources/images/ogudoctor/self_category/joint.png" >
 		</label>
 	</div>
 	<div class="tile">
 		<input type="checkbox" name="bodypart" id="skin">
 		<label for="skin">
 			<img src="resources/images/ogudoctor/self_category/skin.png" >
 		</label>
 	</div>
 	<div class="tile">
 		<input type="checkbox" name="bodypart" id="tooth">
 		<label for="tooth">
 			<img src="resources/images/ogudoctor/self_category/tooth.png" >
 		</label>
 	</div>
 	<div class="tile">
 		<input type="checkbox" name="bodypart" id="breath">
 		<label for="breath">
 			<img src="resources/images/ogudoctor/self_category/breath.png" >
 		</label>
 	</div>
 	<div class="tile">
 		<input type="checkbox" name="bodypart" id="genitals_dog">
 		<label for="genitals_dog">
 			<img src="resources/images/ogudoctor/self_category/genitals_dog.png" >
 		</label>
 	</div>
 	<div class="tile">
 		<input type="checkbox" name="bodypart" id="behavior_dog">
 		<label for="behavior_dog">
 			<img src="resources/images/ogudoctor/self_category/behavior_dog.png" >
 		</label>
 	</div>
 	<div class="tile">
 		<input type="checkbox" name="bodypart" id="abdomen_dog">
 		<label for="abdomen_dog">
 			<img src="resources/images/ogudoctor/self_category/abdomen_dog.png" >
 		</label>
 	</div>
 	<div class="tile">
 		<input type="checkbox" name="bodypart" id="waist_dog">
 		<label for="waist_dog">
 			<img src="resources/images/ogudoctor/self_category/waist_dog.png" >
 		</label>
 	</div>
</section>
 -->
</body>
</html>