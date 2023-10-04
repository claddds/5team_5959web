<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>강아지 사료 - 퍼피</title>
<style type="text/css">

#dog-food-form{font-family: 'Noto Sans KR', sans-serif;width: 1920px;margin: auto;margin-top:20px;}
#dog-food-form a{text-decoration: none;}
#dog-food-form ul li{list-style-type: none;}
#minibanner img {width: 1920px;height: 200px;}

#product-type ul {display: flex;justify-content: center;margin: 50px;margin-bottom:30px;}

#product-type ul li{margin:15px;
					display: flex;justify-content: center;}

#product-type a {font-size: 40px;font-family: 'Bagel Fat One', cursive;width:90px;
					color:#FFC700;border-radius: 10px;border:none;}

#dog-food-type ul{list-style:none;display:flex;padding:0;justify-content: center;margin-bottom:100px;}

#dog-food-type ul li{display:inline;margin:20px;padding:20px;border:none;font-size: 25px;}

.dogFeedAge{color:black; border:1px solid #FFC700; border-radius:50px; padding:10px;}

.prod {margin:auto; border: 1px solid black; border-radius: 5px; height: 500px;width: 350px;
		padding: 5px;margin-bootom: 10px;}
		
.prod-price {font-weight:bold; font-size:25px;}

.prod-img img {height: 300px;width: 350px;border-radius: 10px;margin-bottom:10px;}

.prod-info div{margin:10px;}

.prod-title{display: -webkit-box;-webkit-line-clamp: 2;-webkit-box-orient: vertical;overflow: hidden;
  text-overflow: ellipsis;font-size:20px; height:60px;} 

#prod-list{display:grid;grid-template-columns: repeat(4, 1fr);gap: 30px;list-style: none;}
#prod-list li{margin-bottom:30px;}
#feed,#desert,#supplies{cursor:pointer;}

/* #sort{display:flex; justify-content: flex-end; font-size:25px; margin-bottom:50px; margin-right:40px;}
#sort input[type="radio"]{width:25px; height:25px; margin:10px;} */

/* HOME>필수/양육/훈련 정보/#강아지,#고양이 */
#link-step{margin-left:100px; margin-top:40px;}
#link-step a{
	text-decoration: none;
	font-size: 30px;
	color:#868688;
}
/* 꺾새 */
#link-step label{
	font-size:30px;
}

.coupang-buy{
	background-color:#F8CE38;
	border:none;
	border-radius:10px;
	margin-left:25px;
	font-size: 20px;
	text-decoration: none;
	color:black;
	padding:5px;
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
$(document).ready(function() {
	$.ajax({
		  url: '/dogFoodPuppy.do',
		  type: 'GET',
		  success: function(data) {
		    // Ajax 요청이 성공했을 때 실행되는 코드
		    $("#feed").css("color", "tomato");
		    $("#dogPuppyAges").css("background-color", "tomato");
		    $("#dogAllAges, #dogAdultAges, #dogSeniorAges").css("background-color", "");
		    // 여기에 /dogfooddisplay.do에 대한 특별한 처리를 추가
		  },
		  error: function() {
		    // Ajax 요청이 실패했을 때 실행되는 코드
		  }
		});

});
</script>
</head>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Bagel+Fat+One&family=Noto+Sans+KR&display=swap"rel="stylesheet">
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<body>
	<header>
		<jsp:include page="../home/home_top.jsp" />
	</header>
	<div id = "dog-food-form">
		<div id=minibanner>
			<a href=""><img src="resources/images/page_banner/listbanner_food.png"></a>
		</div>
		<div id="link-step">
			<a href="/homedisplay.do">Home </a><label>></label>
			<a href="/dogfooddisplay.do">먹거리 </a><label>></label><!--  -->
			<a href="/dogfooddisplay.do">#강아지</a><!--  -->
		</div>
		<div id="product-type" style="margin-bottom:90px;">
			<ul>
				<li><a href="/dogfooddisplay.do" id="feed">사료</a></li>
				<li><a href="/dogFooddesert.do" id="desert">간식</a></li>
				<li><a href="/dogFoodsupplies.do" id="supplies">용품</a></li>
			</ul>
		</div>
		<div id="dog-food-type">
			<ul>
				<li><a href="/dogfooddisplay.do" class="dogFeedAge" id="dogAllAges">전연령</a></li>
				<li><a href="/dogFoodPuppy.do" class="dogFeedAge" id="dogPuppyAges">퍼피</a></li>
				<li><a href="/dogFoodAdult.do" class="dogFeedAge" id="dogAdultAges">어덜트</a></li>
				<li><a href="/dogFoodSenior.do" class="dogFeedAge" id="dogSeniorAges">시니어</a></li>
			</ul>
		</div>
	<!-- 	<div id="sort">
			<input type="radio" name="align" value="popul" checked/>인기순
			<input type="radio" name="align" value="recent"/>최신순
			<input type="radio" name="align" value="min-price"/>낮은 가격순
			<input type="radio" name="align" value="max-price"/>높은 가격순
		</div> -->
		<div>
			<ul id="prod-list">
				
				<c:forEach var="k" items="${DogFoodPuppylist}">
					<c:if test="${k.status == 0 && k.fd_open == 0}">
						<li>
							<div class="prod">
								<div class="prod-img">
									<img src="resources/images/home/mainlogo.png">
								</div>
								<div class="prod-info">
									<div style="color:gray;font-size: 18px;">${k.fd_company}</div>
									<div class="prod-title"><b>${k.fd_name}</b></div>
									<hr>
									<div style="display:flex; justify-content: space-between;">
										<span class="prod-price"><fmt:formatNumber value="${k.fd_price}" pattern="#,##0"/></span>
										<span>
											<a href="${k.fd_link}" target="_blank" class="coupang-buy">쿠팡 바로 가기</a>
										</span>
									</div>
								</div>
							</div>
						</li>
					</c:if>
				</c:forEach>
					
			</ul>
		</div>
	</div>
	<footer>
		<jsp:include page="../home/home_bottom.jsp" />
	</footer>
</body>
</html>