<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>교육 정보</title>
<style type="text/css">
#eduform {
	font-family: 'Noto Sans KR', sans-serif;
	width: 1920px;
	margin: auto;
}

#minibanner img {
	height: 200px;
	margin-top: 20px;
}

#menulist a {
	text-decoration: none;
}

#edumenu {
	background-color: #FFA629;
	box-sizing: border;
	border-radius: 8px;
	width: 900px;
	margin: auto;
}

#edumenu ul {
	display: flex;
	justify-content: center;
	margin: 30px;
	background-color: #ffa629;
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

.edu_img img {
	height: 300px;
	width: 350px;
	border-radius: 10px;
	margin-bottom: 10px;
}

.edu-card {
	margin-left: 50px;
	border: 1px solid black;
	border-radius: 5px;
	height: 430px;
	width: 350px;
	padding: 5px;
	margin-botom: 10px;
}

.edu-card:hover {
	cursor: pointer;
	transform: scale(1.05);
	transition: transform 0.3s ease-in-out;
}

.edu_menu_title {
	font-size: 40px;
	margin-right: 40px;
	margin-bottom: 40px;
	margin-top:40px;
}

.edu_menu_title label {
	text-decoration: none;
	color: #ffa629;
}

#eduform li {
	list-style-type: none;
}

.cardList {
	display: grid;
	grid-template-columns: repeat(4, 1fr); /* 4칸 그리드, 1fr은 비율을 나타냄 */
	gap: 20px; /* 간격 설정 */
	list-style: none;
	padding: 0;
	margin: 0;
}

.edu_title {
	white-space: nowrap;
	overflow: hidden;
	text-overflow: ellipsis;
	font-size: 24px;
}

.edu_content {
	margin-right: 5px;
	margin-top: 5px;
	margin-bottom: 5px;
	color: #868688;
	text-overflow: ellipsis;
	overflow: hidden;
	display: -webkit-box;
	-webkit-line-clamp: 2;
	-webkit-box-orient: vertical;
}

footer{
        width:1920px;
        display:flex;
        margin:auto;
        margin-top:20px;
        margin-bottom: 20px;
    }
</style>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Bagel+Fat+One&family=Noto+Sans+KR&display=swap"
	rel="stylesheet">

</head>
<body>
	<header>
		<jsp:include page="../home/home_top.jsp" />
	</header>
	<main id="eduform">
		<div id=minibanner>
			<a href="">
				<img src="resources/images/page_banner/listbanner_edu.png">
			</a>
		</div>
		
		<div id="edumenu">
			<ul>
				<li><a href="/essentialdisplayDog.do">필수 정보</a></li>
				<li><a href="/bringingdisplayDog.do">양육 정보</a></li>
				<li><a href="/trainingdisplayDog.do">훈련 정보</a></li>
			</ul>
		</div>

		<div class="edu_menu_title">
			<label>초보 반려인들의 필수 상식 !</label>
		</div>

		<div>
			<ul class="cardList">
				<c:forEach var="k" items="${Elist}" >
					<c:if test="${k.status == 0 && k.edu_open == 0}">
						<li>
							<div class="edu-card">
								<div id="essential">
									<div class="edu_img">
										<a href="/essentialOneListDog.do?edu_idx=${k.edu_idx}">
											<img src="resources/images/${k.edu_F_name}">
										</a>
									</div>
									<div class="edutext">
										<div class="edu_title">${k.edu_title}</div>
										<div class="edu_content">${k.edu_content}</div>
									</div>
								</div>
							</div>
						</li>
					</c:if>
				</c:forEach>
			</ul>
		</div>

		<div class="edu_menu_title">
			<label>반려 동물 잘 키우는 방법 !</label>
		</div>

		<ul class="cardList">
			<c:forEach var="k" items="${Blist}" >
				<c:if test="${k.status == 0 && k.edu_open == 0}">
					<li>
						<div class="edu-card">
							<div id="essential">
								<div class="edu_img">
									<a href="/bringingOneListDog.do?edu_idx=${k.edu_idx}">
										<img src="resources/images/${k.edu_F_name}">
									</a>
								</div>
								<div class="edutext">
									<div class="edu_title">${k.edu_title}</div>
									<div class="edu_content">
										${k.edu_content}
									</div>
								</div>
							</div>
						</div>
					</li>
				</c:if>
			</c:forEach>
		</ul>

		<div class="edu_menu_title">
			<label>훈련 방법 모음집 !</label>
		</div>
		
		<ul class="cardList">
			<c:forEach var="k" items="${Tlist}" >
				<c:if test="${k.status == 0 && k.edu_open == 0}">
					<li>
						<div class="edu-card">
							<div id="essential">
								<div class="edu_img">
									<a href="/trainingOneListDog.do?edu_idx=${k.edu_idx}">
										<img src="resources/images/${k.edu_F_name }">
									</a>
								</div>
								<div class="edutext">
									<div class="edu_title">${k.edu_title}</div>
									<div class="edu_content">
										${k.edu_content}
									</div>
								</div>
							</div>
						</div>
					</li>
				</c:if>
			</c:forEach>
		</ul>
	</main>
	
	<footer>
		<jsp:include page="../home/home_bottom.jsp" />
	</footer>
</body>
</html>