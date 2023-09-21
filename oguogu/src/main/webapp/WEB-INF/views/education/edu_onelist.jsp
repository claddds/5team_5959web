<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
  	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<title>상세 보기</title>
<style type="text/css">
#edu-onelist-form {
	width: 1920px;
	font-family: 'Noto Sans KR', sans-serif;
	margin: auto;
}

#minibanner img {
	width: 1920px;
	height: 200px;
	margin-top: 20px;
}

#link-step {
	margin-top: 30px;
	margin-bottom: 30px;
}

div#main-text {
	width: 1000px;
	float: left;
	margin-left: 300px;
}
/* HOME>필수/양육/훈련 정보/#강아지,#고양이 */
#link-step a {
	text-decoration: none;
	font-size: 30px;
	color: #868688;
}
/* 꺾새 */
#link-step label {
	font-size: 30px;
}
/* 컨텐츠 제목 */
#edu-one-title {
	font-size: 50px;
	display: -webkit-box;
	-webkit-line-clamp: 3;
	-webkit-box-orient: vertical;
}
/* 컨텐츠 날짜 조회수 */
#date_hit {
	font-size: 20px;
	margin-top: 20px;
	margin-bottom: 80px;
}

/* position : sticky 언제든지 변경 가능 */
#sidebar-parent {
	width: 300px;
	height: 1500px;
	float: right;
	margin-right: 250px;
}

#sidebar {
	padding-top: 100px;
	position: sticky;
	top: 0px;
}

#sidebar img {
	width: 250px;
	height: 150px;
	margin-bottom: 20px;
	border-radius: 10px;
}

#sidebar ul li {
	list-style-type: none;
}

footer {
	width: 1920px;
	margin: auto;
	margin-top: 20px;
	margin-bottom: 20px;
	
}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
<script type="text/javascript">
	   var heart = "${heartvo}"
       var heartval = "${heartvo.heart}" // 초기값을 0으로 설정
       var edu_idx = "${heartvo.edu_idx}"
       
		$(document).ready(function() {
// 		       console.log(heartval)
// 		       console.log(nickname)
		       if(heart != null){  
	 		       if (heartval > 0) { 
	 	               $("#eduheart").attr('class', 'bi-heart-fill');
		           } else {
	 	               $("#eduheart").attr('class', 'bi-heart');   
	 	           }
		       }
	           
	           $("#eduheart").on("click", function() {
			       var nickname = "${sessionScope.nickname}"
			       sessionStorage.setItem("returnUrl", window.location.href);
	               $.ajax({
	                   url: '/heartChk.do',
	                   type: 'get',
	                   data: {'edu_idx': edu_idx, 'nickname': nickname},
	                   success: function(data) {
	                       if (data == 1) {
	                    	   console.log(nickname);
                           	   alert("좋아요를 눌렀습니다. 마이 페이지에서 목록을 확인 할 수 있습니다.")
	                           $("#eduheart").attr('class', 'bi-heart-fill');
	                       } else if(data == 0){
                           	   alert("좋아요를 취소하시겠습니까?")
	                           $("#eduheart").attr('class', 'bi-heart');
	                       } else{
	                    	   alert("로그인을 해야 이용할 수 있습니다.")
		                       $("#eduheart").attr('class', 'bi-heart');
	                       }
	                       
	                       $.ajax({
	   						url:"/heartCount.do",
	   						type:"get",
	   						data: {'edu_idx' : edu_idx},
	   						success: function(likeCount) {
	   							$("#heartcount").text(likeCount);
	   						},
	   						error: function() {
	   							//에러 처리 로직
	   						}
	   					})
	                   },
	                   error: function() {
	                       // 에러 처리 로직
	                   }
	               });
	           });    
		});

		
</script>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Bagel+Fat+One&family=Noto+Sans+KR&display=swap"
	rel="stylesheet">
</head>
<body>
	<header>
		<jsp:include page="../home/home_top.jsp"></jsp:include>
	</header>
	<div id="edu-onelist-form">
		<div id=minibanner>
			<a href="/alledudisplay.do">
				<img src="resources/images/page_banner/listbanner_edu.png">
			</a>
		</div>
		<div id="main-sidebar">
			<div id="main-text">
			<c:choose>
				<c:when test="${not empty evo}">
					<div id="link-step">
						<a href="/homedisplay.do">Home </a><label>></label>
						<c:choose>
							<c:when test="${evo.edu_kind == '필수 정보'}">
								<a href="/essentialdisplayDog.do">필수 정보 </a><label>></label>
							</c:when>
							<c:when test="${evo.edu_kind == '훈련 정보'}">
								<a href="/trainingdisplayDog.do">훈련 정보 </a><label>></label>
							</c:when>
							<c:otherwise>
								<a href="/bringingdisplayDog.do">양육 정보 </a><label>></label>							
							</c:otherwise>
						</c:choose>
						<c:choose>
							<c:when test="${evo.edu_aml_kind == '강아지'}">
								<a href="/essentialdisplayDog.do">#강아지</a>							
							</c:when>
							<c:otherwise>
								<a href="/essentialdisplayDog.do">#고양이</a>							
							</c:otherwise>
						</c:choose>
					</div>
	
					<div id="edu-one-title">${evo.edu_title}</div>
					<div id="date_hit">
						<span id="date">날짜 : ${evo.edu_date} / </span>
						<span id="hit">조회수 : ${evo.edu_hit} </span> 
						<span style="display: flex; justify-content: flex-end; align-items: center;">
							<i id="eduheart" class="bi-heart" style="font-size:2.5rem; color: red; cursor: pointer;"></i>&nbsp;&nbsp;&nbsp;
							<label id="heartcount" style="font-size: 40px;">${heartcount}</label>								
						</span>
					</div>
					<div id="content">
						${evo.edu_content}
					</div>
				</c:when>
			</c:choose>
			</div>
		</div>
		<div id="sidebar-parent">
			<div id="sidebar">
				<ul>
					<li><a href="/alledudisplay.do"><img
							src="resources/images/home/mainbanner_eduexplain.png"> </a></li>
					<li><a href="/dogfooddisplay.do"><img
							src="resources/images/home/mainbanner_food.png"> </a></li>
					<li><a href="/loungemaindisplay.do"><img
							src="resources/images/home/mainbanner_lounge.png"> </a></li>
					<li><a href="/ogudoctormaindisplay.do"><img
							src="resources/images/home/mainbanner_ogudoctor.png"> </a></li>
					<li><a href="/placemaindisplay.do"><img
							src="resources/images/home/mainbanner_place.png"> </a></li>
					<li><a href="/pocketmaindisplay.do"><img
							src="resources/images/home/mainbanner_pocket.png"> </a></li>
				</ul>
			</div>
		</div>
	</div>

	<footer>
		<jsp:include page="../home/home_bottom.jsp" />
	</footer>
</body>

</html>