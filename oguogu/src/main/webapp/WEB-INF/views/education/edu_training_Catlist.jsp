<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>훈련 정보 - 고양이</title>
<style type="text/css">
#eduform {
	font-family: 'Noto Sans KR', sans-serif;
	width: 1920px;
	margin: auto;
}

#eduform li {
	list-style-type: none;
}

#minibanner img {
	width: 1920px;
	height: 200px;
	display: flex;
	margin: auto;
	margin-top: 20px;
}

#menulist a {
	text-decoration: none;
}

#edumenu {
	background-color: #FFA629;
	box-sizing: border;
	border-radius: 8px;
	width: 600px;
	margin: auto;
}

#edumenu ul {
	display: flex;
	justify-content: center;
	margin: 30px;
	background-color: #ffa629;
}

#edumenu li {
	list-style-type: none;
}

#edumenu li:not(:first-child) a::before {
	content: "|";
	margin: 0 40px; /* 원하는 간격으로 설정 */
}

#edumenu a {
	color: #f8f8ff;
	font-size: 50px;
	text-decoration: none;
	font-family: 'Bagel Fat One', cursive;
}

.onecard {
	display: grid;
	grid-template-columns: 70% 30%;
}

.edu-card {
	margin-left: 100px;
	border: none;
	border-radius: 5px;
	height: 400px;
	width: 1100px;
	padding: 5px;
	margin-botom: 10px;
}

.card-img {
	float: left;
}

.edu_img img {
	height: 360px;
	width: 500px;
	border-radius: 10px;
}

.edu_menu_title {
	font-size: 40px;
	margin-left: 30px;
	margin-top: 50px;
	margin-bottom: 50px;
}

.label_one {
	text-decoration: none;
	color: #ffa629;
	font-size: 50px;
	font-weight: bold;
}

.label_two {
	font-size: 50px;
	font-family: 'Bagel Fat One', cursive;
}

.edu_menu_title button {
	background-color: #FFA629;
	color: #f8f8ff;
	border-radius: 10px;
	border: 1px solid #FFA629;
	width: 120px;
	height: 30px;
	font-size: 20px;
}

.cardList {
	display: grid;
	grid-template-rows: auto;
	gap: 20px; /* 간격 설정 */
	list-style: none;
	padding: 0;
	margin: 0;
}

.edutext button {
	background-color: #FFA629;
	color: #f8f8ff;
	border-radius: 10px;
	border: 1px solid #FFA629;
	width: 70px;
}

.edu_title {
	margin-bottom: 20px;
	font-size: 50px;
	white-space: nowrap;
	overflow: hidden;
	text-overflow: ellipsis;
	color: 5E5958;
}
#onelistlink{
	text-decoration: none;
	color:black;
}
.edu_content {
	margin-right: 30px;
	margin-top: 30px;
	margin-bottom: 30px;
	font-size: 30px;
	text-overflow: ellipsis;
	overflow: hidden;
	display: -webkit-box;
	-webkit-line-clamp: 5;
	-webkit-box-orient: vertical;
	color: #868688;
}

.div_card {
	margin: 30px;
}


footer{
        width:1920px;
        display:flex;
        margin:auto;
        margin-top:20px;
        margin-bottom: 20px;
    }
    
    
/* paging */


ol.paging {
	list-style: none;
	display:flex;
	justify-content: center;
	margin-top:20px;
}

ol.paging li {
	float: left;
	margin-right: 8px;
	font-size: 40px;
}

ol.paging li a {
	display: block;
	padding: 3px 7px;
	border: 1px solid #FFA629;
	color: #2f313e;
	font-weight: bold;
	border-radius:10px;
}

ol.paging li a:hover {
	background: #FFA629;
	color: white;
	font-weight: bold;
}

.disable {
	padding: 3px 7px;
	border: 1px solid silver;
	color: silver;
	border-radius:10px;
}

.now {
	padding: 3px 7px;
	border: 1px solid #FFA629;
	background: #FFA629;
	color: white;
	font-weight: bold;
	border-radius:10px;
}
</style>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Bagel+Fat+One&family=Noto+Sans+KR&display=swap"
	rel="stylesheet">
</head>
<!-- 
	1. edumenu list(강아지,고양이,기타동물) 눌렀을 때 #edumenu a color:를 변경 할것
	2. 검색바 넣기
	3. label class one에 el 써서 초보 반려인들의 필수 상식!/반려 동물 잘 키우는 방법!/훈련 방법 모음집!으로 db에서 긁을수 있게
	4. label class two에 el 써서 강아지, 고양이, 기타동물 분류
 -->
<body>
	<header>
		<jsp:include page="../home/home_top.jsp" />
	</header>
	<div id="eduform">
		<div id=minibanner>
			<img src="resources/images/page_banner/listbanner_edu.png">
		</div>


		<div id="edumenu">
			<ul>
				<li><a href="/trainingdisplayDog.do"># 강아지</a></li>
				<li><a href="/trainingdisplayCat.do"># 고양이</a></li>
			</ul>
		</div>


		
		<div class="edu_menu_title">
			<label class="label_one">훈련 방법 모음집 ! >> </label>
			<label class="label_two"> # 고양이</label>
		</div>
		
		<div class="div_card">
			<ul class="cardList">
			<c:forEach var = "k" items="${CatTlist}">
				<c:if test="${k.status == 0 && k.edu_open == 0}">
					<li>
						<a href = "/trainingOneListDog.do?edu_idx=${k.edu_idx}&page=${paging.nowPage}" id="onelistlink">
							<div class="onecard">
								<div class="edu-card">
									<div id="essential">
										<div class="edutext">
											<div class="edu_title">${k.edu_title}</div>
											<div class="edu_content">${k.edu_content}</div>
										</div>
									</div>
								</div>
								<div class="card-img">
									<div class="edu_img">
										<img src="resources/images/${k.edu_F_name}">
										<!-- ${k.edu_F_name} -->
									</div>
								</div>
							</div>
						</a>
					</li>
				</c:if>
			</c:forEach>
			</ul>
		</div>
	</div>
	<div>
			<ol class="paging">
			   <!-- 이전 -->
			   <c:choose>
			   		<c:when test="${paging.beginBlock <= paging.pagePerBlock }">
			   			<li class="disable">이전으로</li>
			   		</c:when>
			   		<c:otherwise>
			   			<!-- a링크처리 -->
			   			<li><a href="/trainingdisplayCat.do?page=${paging.beginBlock-paging.pagePerBlock}">이전으로</a></li>
			   		</c:otherwise>
			   </c:choose>
			    <!-- 블록안에 들어간 페이지번호들 -->
				<c:forEach begin="${paging.beginBlock}" end="${paging.endBlock }" step="1" var="k">
				   
				   <c:if test="${k == paging.nowPage}">
				   		<li class="now">${k}</li>
				   </c:if>
				   <c:if test="${k != paging.nowPage}">
				   		<!-- a링크처리 -->
				   		<li><a href="/trainingdisplayCat.do?page=${k}">${k}</a></li>
				   </c:if>
				</c:forEach>
				<!-- 다음 -->
				  <c:choose>
			   		<c:when test="${paging.endBlock >= paging.totalPage }">
			   			<li class="disable">다음으로</li>
			   		</c:when>
			   		<c:otherwise>
			   			<!-- a링크처리 -->
			   			<li><a href="/trainingdisplayCat.do?page=${paging.beginBlock+paging.pagePerBlock}">다음으로</a></li>
			   		</c:otherwise>
			   </c:choose> 
			</ol>
		</div>
	<footer>
		<jsp:include page="../home/home_bottom.jsp" />
	</footer>
</body>
</html>