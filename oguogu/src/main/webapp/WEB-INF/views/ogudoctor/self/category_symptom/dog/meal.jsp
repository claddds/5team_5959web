<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>증상체크-식사</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>

<!-- 라디오 버튼 부트스트랩 (아래2개다 넣어야함 (왜인지는 모름,,,,))-->
<link href="resources/css/oguself/sym_check/radio.css" rel="stylesheet" id="bootstrap-css">
<link href="resources/css/start_bootstrap/styles.css" rel="stylesheet" />

<style type="text/css">
	@font-face {
	    font-family: 'Cafe24Ssurround';
	    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2105_2@1.0/Cafe24Ssurround.woff') format('woff');
	    font-weight: normal;
	    font-style: normal;
	}
	h1, h2, h3, h4, h5, h6{
		font-family: 'Cafe24Ssurround';
	}

	#minibanner img{
		width:1920px;
		height:200px;
		display:flex;
		margin:auto;
		margin-top:20px;
		margin-bottom: 20px;
    }
    .category_explain{
		width: 1920px;
		text-align: center;
		margin: 0 auto;
		margin-bottom: 30px;
	}
	.sym_form{
		width:1920px;
		display:flex;
		margin:auto;
		margin-top:50px;
		margin-bottom: 20px;
		color: black;
    }
    .category_ex{
    	width: 1920px;
		text-align: center;
		margin: 0 auto;
		margin-bottom: 30px;
    }

    .col-md-4{
    	width: 1000px;
    	margin: 0 auto;
    }
    .food_amount{
    	width: 1000px;
    	margin: 0 auto;
    }
    .water_amount{
    	width: 1000px;
    	margin: 0 auto;
    }
    .meal_period{
    	width: 1000px;
    	margin: 0 auto;
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
		width: 1000px;
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
	a:hover {
	color: white;
	text-decoration: none;
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
	function onNextButtonClick() {
		 var chkBox1 = document.getElementsByName("option1");
	     var selectedvalues1 = [];	// 배열 초기화
	       
	     for (var i = 0; i < chkBox1.length; i++) {
	     	if (chkBox1[i].checked) {
	        	selectedvalues1.push(chkBox1[i].value);
	        }
	     }
	     
	     if (selectedvalues1.length === 0) {
	     	alert("증상을 최소 하나 선택해야 합니다.");
	     	event.preventDefault(); // 폼 제출을 막음
	        return;
	     }
	     
	     var chkBox2 = document.getElementsByName("option2");
	     var selectedvalues2 = [];	// 배열 초기화
	       
	     for (var i = 0; i < chkBox2.length; i++) {
	     	if (chkBox2[i].checked) {
	        	selectedvalues2.push(chkBox2[i].value);
	        }
	     }
	     
	     if (selectedvalues2.length === 0) {
	     	alert("증상을 최소 하나 선택해야 합니다.");
	     	event.preventDefault(); // 폼 제출을 막음
	        return;
	     }
	     
	     var chkBox3 = document.getElementsByName("period");
	     var selectedvalues3 = [];	// 배열 초기화
	       
	     for (var i = 0; i < chkBox3.length; i++) {
	     	if (chkBox3[i].checked) {
	        	selectedvalues3.push(chkBox3[i].value);
	        }
	     }
	     
	     if (selectedvalues3.length === 0) {
	     	alert("증상을 최소 하나 선택해야 합니다.");
	     	event.preventDefault(); // 폼 제출을 막음
	        return;
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
    
    <div class="category_explain">
		<h2>증상체크</h2>
		<br>
	</div>
	
	<div class="sym_form">
		<form action="/goresult.do" method="post">
		
			<div class="category_ex">
				<h1>식사</h1>
				<h4>평소와 다른 반려견의 식사 행동에 대해서 아래 항목 중 선택해 주세요.</h4>
			</div>
		
			<div class="col-md-4">
			<div class="col-md-6">
			<div class="funkyradio">
			
				<div class="food_amount">
					<h5>필수</h5><h3>식사량</h3>
					<!-- 여기서부터는 DB에서 가져오기 -->
					<c:choose>
						<c:when test="${empty mealfoodlist}">
							<h2>원하는 정보가 존재하지 않습니다.</h2>
						</c:when>
						<c:otherwise>
							<c:forEach var="k" items="${mealfoodlist}" varStatus="vs">
								<div class="funkyradio-warning">
	            					<input type="radio" name="option1" id="meal_food_${vs.count}" value="${k.dis_info},${k.period_line}" />
	            					
	            					<label for="meal_food_${vs.count}">${k.dis_info}</label>
	        					</div>
							</c:forEach>
						</c:otherwise>
					</c:choose>
				</div>
				<br><br><br>
				
				<div class="water_amount">
					<h5>필수</h5><h3>음수량</h3>
					<c:choose>
						<c:when test="${empty mealfoodlist}">
							<h2>원하는 정보가 존재하지 않습니다.</h2>
						</c:when>
						<c:otherwise>
							<c:forEach var="k" items="${mealwaterlist}" varStatus="vs">
								<div class="funkyradio-warning">
	            					<input type="radio" name="option2" id="meal_water_${vs.count}" value="${k.dis_info},${k.period_line}"/>
	            					<label for="meal_water_${vs.count}">${k.dis_info}</label>
	        					</div>
							</c:forEach>
						</c:otherwise>
					</c:choose>
				</div>
				<br><br><br>
				
				<div class="meal_period">
					<h5>필수</h5><h3>지속시기</h3>
					<div class="funkyradio-warning">
	            		<input type="radio" name="period" id="oneday" value="oneday"/>
	            		<label for="oneday">1일 이내</label>
	        		</div>
					<div class="funkyradio-warning">
	            		<input type="radio" name="period" id="threeday" value="threeday"/>
	            		<label for="threeday">3일 이내</label>
	        		</div>
					<div class="funkyradio-warning">
	            		<input type="radio" name="period" id="week_d" value="week_d"/>
	            		<label for="week_d">1주일 미만</label>
	        		</div>
					<div class="funkyradio-warning">
	            		<input type="radio" name="period" id="week_u" value="week_u"/>
	            		<label for="week_u">1주일 이상</label>
	        		</div>
				</div>
				
				
				<div class="button_location">
					<button class="button" style="vertical-align: middle" onclick="onNextButtonClick()">
						<span>결과보기</span>
					</button>	
				</div>	
			
			</div>
			</div>
			</div>
			
		</form>
	</div>
	
	<footer>
		<jsp:include page="/WEB-INF/views/home/home_bottom.jsp" />
	</footer>
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
</body>
</html>