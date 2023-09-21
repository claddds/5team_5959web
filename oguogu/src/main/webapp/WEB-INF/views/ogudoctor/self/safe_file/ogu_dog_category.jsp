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
	// 체크박스의 개수가 3개가 안넘어가게 막아주는 함수
	function count_check(obj) {
		var chkBox = document.getElementsByName("bodypart_dog");
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
	 function onNextButtonClick() {
		 var chkBox = document.getElementsByName("bodypart_dog");
	        var selectedvalues = [];	// 배열 초기화
	        
	        for (var i = 0; i < chkBox.length; i++) {
	            if (chkBox[i].checked) {
	            	selectedvalues.push(chkBox[i].value);
	            }
	        }
	        if (selectedvalues.length === 0) {
	            alert("증상을 최소 하나 선택해야 합니다.");
	            event.preventDefault(); // 폼 제출을 막음
	            return;
	        }
	 }
	/*
	// 다음으로 버튼 클릭 시 체크박스 확인 및 액션 수행
    function onNextButtonClick() {
        var chkBox = document.getElementsByName("bodypart_dog");
        var selectedvalues = [];	// 배열 초기화
        
        for (var i = 0; i < chkBox.length; i++) {
            if (chkBox[i].checked) {
            	selectedvalues.push(chkBox[i].value);
            }
        }
        if (selectedvalues.length === 0) {
            alert("증상을 최소 하나 선택해야 합니다.");
            return;
        } else{
        	//alert(selectedvalues)
        	$.ajax({
        		url:"/ogunextbt.do",
        		type:"post",
        		dataType:"text",
        		data:{
        			selectedvalues:selectedvalues
        		},
        		success:function(data){
        			sessionStorage.setItem("selectedvalues", JSON.stringify(selectedvalues));
        			window.location.href = "/gosymsel.do"; // 새 페이지의 URL로 이동
        		},
        		error:function(request,error){
        			alert("code:"+request.status+"\n"+"message: "+request.responseText+"\n"+"error: "+error);
        			
        		}
        	});
        } 
    }
	*/
</script>
</head>
<body>
	<header>
		<jsp:include page="/WEB-INF/views/home/home_top.jsp" />
	</header>
	<div id=minibanner>
        <a href="/ogudoctormaindisplay.do"><img src="resources/images/page_banner/listbanner_ogudoctor.png"></a>
    </div>
    <!-- 
	<div class="category_check">
		<div class="category_explain">
			<h2 style="font-family:'Noto Sans KR', sans-serif;">유형 선택</h2>
			<br>
			<h3 style="font-family: 'Noto Sans KR', sans-serif;">반려견의 증상 유형을 선택해주세요</h3>
			<h4 style="font-family: 'Noto Sans KR', sans-serif; color: gray;"><p>최대 3개까지 가능합니다.</h4>
		</div>
		<div class="wrapper">
			<div class="container">
				<input type="checkbox" name="bodypart_dog" onclick="count_check(this);" id="stool" value="stool">
				<label for="stool">
 					<img src="resources/images/ogudoctor/self_category/stool.png" />
 				</label>
			</div>
			<div class="container">
				<input type="checkbox" name="bodypart_dog" onclick="count_check(this);" id="urine" value="urine">
				<label for="urine">
 					<img src="resources/images/ogudoctor/self_category/urine.png" />
 				</label>
			</div>
			<div class="container">
				<input type="checkbox" name="bodypart_dog" onclick="count_check(this);" id="meal" value="meal">
				<label for="meal">
 					<img src="resources/images/ogudoctor/self_category/meal.png" />
 				</label>
			</div>
			<div class="container">
				<input type="checkbox" name="bodypart_dog" onclick="count_check(this);" id="vomit" value="vomit">
				<label for="vomit">
 					<img src="resources/images/ogudoctor/self_category/vomit.png" />
 				</label>
			</div>
			<div class="container">
				<input type="checkbox" name="bodypart_dog" onclick="count_check(this);" id="ear" value="ear">
				<label for="ear">
 					<img src="resources/images/ogudoctor/self_category/ear.png" />
 				</label>
			</div>
			<div class="container">
				<input type="checkbox" name="bodypart_dog" onclick="count_check(this);" id="face_dog" value="face">
				<label for="face_dog">
 					<img src="resources/images/ogudoctor/self_category/face_dog.png" />
 				</label>
			</div>
			<div class="container">
				<input type="checkbox" name="bodypart_dog" onclick="count_check(this);" id="eye" value="eye">
				<label for="eye">
 					<img src="resources/images/ogudoctor/self_category/eye.png" />
 				</label>
			</div>
			<div class="container">
				<input type="checkbox" name="bodypart_dog" onclick="count_check(this);" id="paw" value="paw">
				<label for="paw">
 					<img src="resources/images/ogudoctor/self_category/paw.png" />
 				</label>
			</div>
			<div class="container">
				<input type="checkbox" name="bodypart_dog" onclick="count_check(this);" id="joint" value="joint">
				<label for="joint">
 					<img src="resources/images/ogudoctor/self_category/joint.png" />
 				</label>
			</div>
			<div class="container">
				<input type="checkbox" name="bodypart_dog" onclick="count_check(this);" id="skin" value="skin">
				<label for="skin">
 					<img src="resources/images/ogudoctor/self_category/skin.png" />
 				</label>
			</div>
			<div class="container">
				<input type="checkbox" name="bodypart_dog" onclick="count_check(this);" id="tooth" value="tooth">
				<label for="tooth">
 					<img src="resources/images/ogudoctor/self_category/tooth.png" />
 				</label>
			</div>
			<div class="container">
				<input type="checkbox" name="bodypart_dog" onclick="count_check(this);" id="breath" value="breath">
				<label for="breath">
 					<img src="resources/images/ogudoctor/self_category/breath.png" />
 				</label>
			</div>
			<div class="container">
				<input type="checkbox" name="bodypart_dog" onclick="count_check(this);" id="genitals_dog" value="genitals">
				<label for="genitals_dog">
 					<img src="resources/images/ogudoctor/self_category/genitals_dog.png" />
 				</label>
			</div>
			<div class="container">
				<input type="checkbox" name="bodypart_dog" onclick="count_check(this);" id="behavior_dog" value="behavior">
				<label for="behavior_dog">
 					<img src="resources/images/ogudoctor/self_category/behavior_dog.png" />
 				</label>
			</div>
			<div class="container">
				<input type="checkbox" name="bodypart_dog" onclick="count_check(this);" id="abdomen_dog" value="abdomen">
				<label for="abdomen_dog">
 					<img src="resources/images/ogudoctor/self_category/abdomen_dog.png" />
 				</label>
			</div>
			<div class="container">
				<input type="checkbox" name="bodypart_dog" onclick="count_check(this);" id="waist_dog" value="waist">
				<label for="waist_dog">
 					<img src="resources/images/ogudoctor/self_category/waist_dog.png" />
 				</label>
			</div>
		</div>
		<div class="button_location">
			<button class="button" style="vertical-align: middle" onclick="onNextButtonClick()">
				<span>다음으로</span>
			</button>	
		</div>
	</div>
	 -->
	 <form action="/gosym.do" method="post">
	 <div class="category_check">
		<div class="category_explain">
			<h2 style="font-family:'Noto Sans KR', sans-serif;">유형 선택</h2>
			<br>
			<h3 style="font-family: 'Noto Sans KR', sans-serif;">반려견의 증상 유형을 선택해주세요</h3>
			<h4 style="font-family: 'Noto Sans KR', sans-serif; color: gray;"><p>최대 3개까지 가능합니다.</h4>
		</div>
		<div class="wrapper">
			<div class="container">
				<input type="checkbox" name="bodypart_dog" onclick="count_check(this);" id="stool" value="stool">
				<label for="stool">
 					<img src="resources/images/ogudoctor/self_category/stool.png" />
 				</label>
			</div>
			<div class="container">
				<input type="checkbox" name="bodypart_dog" onclick="count_check(this);" id="urine" value="urine">
				<label for="urine">
 					<img src="resources/images/ogudoctor/self_category/urine.png" />
 				</label>
			</div>
			<div class="container">
				<input type="checkbox" name="bodypart_dog" onclick="count_check(this);" id="meal" value="meal">
				<label for="meal">
 					<img src="resources/images/ogudoctor/self_category/meal.png" />
 				</label>
			</div>
			<div class="container">
				<input type="checkbox" name="bodypart_dog" onclick="count_check(this);" id="vomit" value="vomit">
				<label for="vomit">
 					<img src="resources/images/ogudoctor/self_category/vomit.png" />
 				</label>
			</div>
			<div class="container">
				<input type="checkbox" name="bodypart_dog" onclick="count_check(this);" id="ear" value="ear">
				<label for="ear">
 					<img src="resources/images/ogudoctor/self_category/ear.png" />
 				</label>
			</div>
			<div class="container">
				<input type="checkbox" name="bodypart_dog" onclick="count_check(this);" id="face_dog" value="face">
				<label for="face_dog">
 					<img src="resources/images/ogudoctor/self_category/face_dog.png" />
 				</label>
			</div>
			<div class="container">
				<input type="checkbox" name="bodypart_dog" onclick="count_check(this);" id="eye" value="eye">
				<label for="eye">
 					<img src="resources/images/ogudoctor/self_category/eye.png" />
 				</label>
			</div>
			<div class="container">
				<input type="checkbox" name="bodypart_dog" onclick="count_check(this);" id="paw" value="paw">
				<label for="paw">
 					<img src="resources/images/ogudoctor/self_category/paw.png" />
 				</label>
			</div>
			<div class="container">
				<input type="checkbox" name="bodypart_dog" onclick="count_check(this);" id="joint" value="joint">
				<label for="joint">
 					<img src="resources/images/ogudoctor/self_category/joint.png" />
 				</label>
			</div>
			<div class="container">
				<input type="checkbox" name="bodypart_dog" onclick="count_check(this);" id="skin" value="skin">
				<label for="skin">
 					<img src="resources/images/ogudoctor/self_category/skin.png" />
 				</label>
			</div>
			<div class="container">
				<input type="checkbox" name="bodypart_dog" onclick="count_check(this);" id="tooth" value="tooth">
				<label for="tooth">
 					<img src="resources/images/ogudoctor/self_category/tooth.png" />
 				</label>
			</div>
			<div class="container">
				<input type="checkbox" name="bodypart_dog" onclick="count_check(this);" id="breath" value="breath">
				<label for="breath">
 					<img src="resources/images/ogudoctor/self_category/breath.png" />
 				</label>
			</div>
			<div class="container">
				<input type="checkbox" name="bodypart_dog" onclick="count_check(this);" id="genitals_dog" value="genitals">
				<label for="genitals_dog">
 					<img src="resources/images/ogudoctor/self_category/genitals_dog.png" />
 				</label>
			</div>
			<div class="container">
				<input type="checkbox" name="bodypart_dog" onclick="count_check(this);" id="behavior_dog" value="behavior">
				<label for="behavior_dog">
 					<img src="resources/images/ogudoctor/self_category/behavior_dog.png" />
 				</label>
			</div>
			<div class="container">
				<input type="checkbox" name="bodypart_dog" onclick="count_check(this);" id="abdomen_dog" value="abdomen">
				<label for="abdomen_dog">
 					<img src="resources/images/ogudoctor/self_category/abdomen_dog.png" />
 				</label>
			</div>
			<div class="container">
				<input type="checkbox" name="bodypart_dog" onclick="count_check(this);" id="waist_dog" value="waist">
				<label for="waist_dog">
 					<img src="resources/images/ogudoctor/self_category/waist_dog.png" />
 				</label>
			</div>
		</div>
		<div class="button_location">
			<!-- <input type="submit"> -->
			<button class="button" style="vertical-align: middle" onclick="onNextButtonClick()">
				<span>다음으로</span>
			</button>	
		</div>
	</div>
	</form>
	<footer>
		<jsp:include page="/WEB-INF/views/home/home_bottom.jsp" />
	</footer>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
</body>
</html>