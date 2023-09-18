<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>증상체크-식사</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;500&display=swap" rel="stylesheet">
<style type="text/css">
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
    }
    .category_ex{
    	width: 1920px;
		text-align: center;
		margin: 0 auto;
		margin-bottom: 30px;
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
	 /* 스타일링을 위한 CSS */
        .radio-group {
            display: flex;
            flex-direction: column;
        }
        .radio-item {
            margin-bottom: 10px;
        }
</style>
</head>
<body>
	<header>
		<jsp:include page="/WEB-INF/views/home/home_top.jsp" />
	</header>
	
	<div id=minibanner>
        <a href="/ogudoctormaindisplay.do"><img src="resources/images/page_banner/listbanner_ogudoctor.png"></a>
    </div>
    
  <%--   <div class="category_explain">
			<h2 style="font-family:'Noto Sans KR', sans-serif;">증상체크</h2>
			<br>
	</div>
    
	<div class="sym_form">
		<form action="/goresult.do" method="post">
			<div class="category_ex">
				<h1>식사</h1>
				<h4>평소와 다른 반려견의 식사 행동에 대해서 아래 항목 중 선택해 주세요.</h4>
			</div>
		
			<div class="food_amount">
				<h3>필수</h3><h2>식사량</h2>
				<!-- 여기서부터는 DB에서 가져오기 -->
				<c:choose>
					<c:when test="${empty mealfoodlist}">
						<h2>원하는 정보가 존재하지 않습니다.</h2>
					</c:when>
					<c:otherwise>
						<c:forEach var="k" items="${mealfoodlist}">
							${k.dis_info}
						</c:forEach>
					</c:otherwise>
				</c:choose>
				
				<select id="mealfoodSelect">
					<c:choose>
						<c:when test="${empty mealfoodlist}">
							<option value="">원하는 정보가 존재하지 않습니다.</option>
						</c:when>
						<c:otherwise>
							<c:forEach var="k" items="${mealfoodlist}">
								<option value="${k.dis_info}">${k.dis_info}</option>
							</c:forEach>
						</c:otherwise>
					</c:choose>
				</select>

				<c:choose>
					<c:when test="${empty mealfoodlist}">
						<h2>원하는 정보가 존재하지 않습니다.</h2>
					</c:when>
					<c:otherwise>
						<form>
							<c:forEach var="k" items="${mealfoodlist}">
								<input type="radio" name="mealFood" value="${k.dis_info}"
									id="${k.id}">
								<label for="${k.id}">${k.dis_info}</label>
								<br>
							</c:forEach>
						</form>
					</c:otherwise>
				</c:choose>
 
 			
 			<div class="radio-group">
        <label class="radio-item">
            <input type="radio" name="meal" value="평소"> 평소와 변화없는 식사
        </label>
        
        <label class="radio-item">
            <input type="radio" name="meal" value="과식"> 과식
        </label>
        <label class="radio-item">
            <input type="radio" name="meal" value="식욕저하"> 식욕저하
        </label>
        <label class="radio-item">
            <input type="radio" name="meal" value="식사거부"> 식사거부
        </label>
    </div>
			</div>
			
			<div class="water_amount">
				<h3>필수</h3><h2>음수량</h2>
				<div class="radio-group">
        <label class="radio-item">
            <input type="radio" name="meal" value="평소"> 평소와 변화 없는 물 마시기
        </label>
        
        <label class="radio-item">
            <input type="radio" name="meal" value="과식"> 평소보다 많은 물 마시기
        </label>
        <label class="radio-item">
            <input type="radio" name="meal" value="식욕저하"> 평소보다 적은 물 마시기
        </label>
        <label class="radio-item">
            <input type="radio" name="meal" value="식사거부"> 물 마시지 않음
        </label>
    </div>
			</div>
			
			<div class="meal_period">
				<h3>필수</h3><h2>지속지기</h2>
				<div class="radio-group">
        <label class="radio-item">
            <input type="radio" name="meal" value="평소"> 1일 이내
        </label>
        
        <label class="radio-item">
            <input type="radio" name="meal" value="과식"> 3일 이내
        </label>
        <label class="radio-item">
            <input type="radio" name="meal" value="식욕저하"> 1주일 미만
        </label>
        <label class="radio-item">
            <input type="radio" name="meal" value="식사거부"> 1주일 이상
        </label>
    </div>
			</div>
			
			<div class="button_location">
				<button class="button" style="vertical-align: middle" onclick="onNextButtonClick()">
					<span>결과보기</span>
				</button>	
			</div>
			
		</form>
	</div> --%>
	<div class="category_explain">
	<h4> 선택하신 증상은 하루이상 지속 시 병원 방문이 필요합니다.</h4><br>
	<h2>식사</h2><br>
	<h4>식사량이 줄어든 경우 아이가 평소처럼 잘 노는지 잘 살펴 보셔야 합니다. 식사 투정으로 안 먹는 경우 평소와 같은 활동량을 보이지만 질병으로 인한 경우 기운이 없고 움직임의
	변화가 동반됩니다.</h4><br>
	<h2>관련질병리스트</h2>
	<h4>스트레스</h4><br>
	<h4>식욕부진</h4><br>
	</div>
	<footer>
		<jsp:include page="/WEB-INF/views/home/home_bottom.jsp" />
	</footer>
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
</body>
</html>