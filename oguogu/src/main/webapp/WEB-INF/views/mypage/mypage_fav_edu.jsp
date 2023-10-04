<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지-교육</title>
<style type="text/css">
#fav_edu_form {
	width: 1920px;
	display: flex;
	margin: auto;
	margin-top: 50px;
}

#fav_edu_list {
	width: 1500px;
	display: grid;
	grid-template-columns: repeat(4, 1fr);
	background-color: #FBF9D9;
	padding-top: 50px;
	margin-left: 100px;
	border-radius: 50px;
	padding-left: 70px;
	padding-bottom:100px;
}


.fav_edu_img {
	border-radius: 10px;
}

.card-title {
	text-overflow: ellipsis;
	overflow: hidden;
	display: -webkit-box;
	-webkit-line-clamp: 2;
	-webkit-box-orient: vertical;
}

footer {
	width: 1920px;
	display: flex;
	margin: auto;
	margin-top: 20px;
	margin-bottom: 20px;
}
</style>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Bagel+Fat+One&display=swap"
	rel="stylesheet">
</head>
<body>
	<header>
		<jsp:include page="../home/home_top.jsp" />
	</header>

	<div id="fav_edu_form">
		<div style="margin-top:10px;">
			<jsp:include page="mypage-sidebar.jsp" />
		</div>
		<div id="fav_edu_list">
			<div style="grid-column:span 4; font-family: font-family: 'Noto Sans KR', sans-serif;
						font-size: 50px;margin:auto;margin-bottom:60px; padding-right:100px; color:#FFA629;font-weight: bold;">
				즐겨찾기 - 교육
			</div>
			<c:forEach var="k" items="${elist}">
				<c:if test="${k.status == 0 && k.edu_open == 0}">
					<a href="/essentialOneListDog.do?edu_idx=${k.edu_idx}" style="text-decoration: none;color:black;">
						<div class="fav_place_card" style="width: 200px; height: 300px;">
							<img src="resources/images/${k.edu_F_name}"
								class="fav_edu_img" style="width: 200px; height: 200px;">
							<h3 class="card-title">${k.edu_title}</h3>
						</div>
					</a>
				</c:if>
			</c:forEach>
		</div>
	</div>

	<footer>
		<jsp:include page="../home/home_bottom.jsp" />
	</footer>
</body>
</html>