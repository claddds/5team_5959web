<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오구오구 메인화면</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style type="text/css">

#mainbanner_slide{
	display: flex;
	justify-content: center;
	margin-top: 20px;
}
.w3-left, .w3-right, .w3-badge {
	cursor: pointer
}

.w3-badge {
	height: 13px;
	width: 13px;
	padding: 0;
}

header {
	position: relative;
	z-index: 1;
}

footer{
	width:1920px;
	display:flex;
	margin:auto;
	margin-top:20px;
	margin-bottom: 20px;
}

</style>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
<script type="text/javascript">

</script>
</head>
<body>
	<header>
		<jsp:include page="/WEB-INF/views/home/home_top.jsp" />
	</header>
	<div class="w3-content w3-display-container">
		<div id="mainbanner_slide">
		<a href="/alledudisplay.do"><img class="mySlides" src="resources/images/home/mainbanner_eduexplain.png"></a>
		<a href="/ogudoctormaindisplay.do"><img class="mySlides" src="resources/images/home/mainbanner_ogudoctor.png"></a>
		<a href="/placemaindisplay.do"><img class="mySlides" src="resources/images/home/mainbanner_place.png"></a>
		<a href="/pocketmaindisplay.do"><img class="mySlides" src="resources/images/home/mainbanner_pocket.png"></a>
		<a href="/loungemaindisplay.do"><img class="mySlides" src="resources/images/home/mainbanner_lounge.png"></a>
		<a href="/dogfooddisplay.do"><img class="mySlides" src="resources/images/home/mainbanner_food.png"></a>
		</div>
		<div class="w3-center w3-container w3-section w3-large w3-text-white w3-display-bottommiddle" style="width: 150%">
			<div class="w3-left w3-hover-text-khaki" onclick="plusDivs(-1)">&#10094;</div>
			<div class="w3-right w3-hover-text-khaki" onclick="plusDivs(1)">&#10095;</div>
				<span class="w3-badge demo w3-border w3-transparent w3-hover-white" onclick="currentDiv(1)"></span>
				<span class="w3-badge demo w3-border w3-transparent w3-hover-white" onclick="currentDiv(2)"></span>
				<span class="w3-badge demo w3-border w3-transparent w3-hover-white" onclick="currentDiv(3)"></span>
				<span class="w3-badge demo w3-border w3-transparent w3-hover-white" onclick="currentDiv(4)"></span>
				<span class="w3-badge demo w3-border w3-transparent w3-hover-white" onclick="currentDiv(5)"></span>
				<span class="w3-badge demo w3-border w3-transparent w3-hover-white" onclick="currentDiv(6)"></span>
		</div>
	</div>
	<footer>
		<jsp:include page="/WEB-INF/views/home/home_bottom.jsp" />
	</footer>
	<script>
	var slideIndex = 0; // 이미지 인덱스 0으로 시작
	autoSlide(); // 페이지 로드시 자동 슬라이드 시작

	function plusDivs(n) {
	    showDivs(slideIndex += n);
	}

	function currentDiv(n) {
	    showDivs(slideIndex = n);
	}9633

	function showDivs(n) {
	    var i;
	    var x = document.getElementsByClassName("mySlides");
	    var dots = document.getElementsByClassName("demo");
	    if (n > x.length) {slideIndex = 1}
	    if (n < 1) {slideIndex = x.length}
	    for (i = 0; i < x.length; i++) {
	        x[i].style.display = "none";  
	    }
	    for (i = 0; i < dots.length; i++) {
	        dots[i].className = dots[i].className.replace(" w3-white", "");
	    }
	    x[slideIndex-1].style.display = "block";  
	    dots[slideIndex-1].className += " w3-white";
	}

	function autoSlide() {
	    var i;
	    var x = document.getElementsByClassName("mySlides");
	    var dots = document.getElementsByClassName("demo");
	    for (i = 0; i < x.length; i++) {
	        x[i].style.display = "none";  
	    }
	    slideIndex++;
	    if (slideIndex > x.length) {slideIndex = 1}
	    for (i = 0; i < dots.length; i++) {
	        dots[i].className = dots[i].className.replace(" w3-white", "");
	    }
	    x[slideIndex-1].style.display = "block";  
	    dots[slideIndex-1].className += " w3-white";
	    setTimeout(autoSlide, 3000); // 3초마다 자동 슬라이드 실행
	}
	</script>
</body>
</html>