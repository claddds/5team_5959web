<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style type="text/css">

#mywrite_qna_form {
	width: 1920px;
	display: flex;
	margin: auto;
	padding-top: 50px;
}

#mywrite_qna_list {
	width: 1500px;
	display: flex;
	flex-direction: column;
	align-items: center;
	background-color: #FBF9D9;
	padding-top: 50px;
	margin-left: 100px;
	border-radius: 50px;
}
th,td{
	text-align: center;
	font-size: 20px;
}

footer {
	width: 1920px;
	display: flex;
	margin: auto;
	margin-top: 20px;
	margin-bottom: 20px;
}

/* paging */


table tfoot ol.paging {
	list-style: none;
	display:flex;
	justify-content: center;
	margin-top:20px;
}

table tfoot ol.paging li {
	float: left;
	margin-right: 8px;
}

table tfoot ol.paging li a {
	display: block;
	padding: 3px 7px;
	border: 1px solid #FFA629;
	color: #2f313e;
	font-weight: bold;
}

table tfoot ol.paging li a:hover {
	background: #FFA629;
	color: white;
	font-weight: bold;
}

.disable {
	padding: 3px 7px;
	border: 1px solid silver;
	color: silver;
}

.now {
	padding: 3px 7px;
	border: 1px solid #FFA629;
	background: #FFA629;
	color: white;
	font-weight: bold;
}
</style>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Bagel+Fat+One&display=swap" rel="stylesheet">
<!-- 부트스트랩 css -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" 
integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">

</head>
<body>
	<!-- 부트스트랩 스크립트 -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" 
	integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
	<header>
		<jsp:include page="../home/home_top.jsp" />
	</header>

	<div id="mywrite_qna_form">
		<div style="margin-top:10px;">
			<jsp:include page="mypage-sidebar.jsp" />
		</div>
		<div id="mywrite_qna_list">
			<div style="font-size: 50px;font-family: 'Noto Sans KR', sans-serif;
			color:#FFA629; margin-bottom:50px;font-weight: bold;">
				나의 댓글
			</div>
			<table class="table table-border" style="width:80%; height:25%; margin-bottom:100px;">
				<thead>
					<tr style="text-align: center;">
						<th scope="col" style="width:10%;font-size: 25px;">No</th>
						<th scope="col" style="width:15%;font-size: 25px;">대상 게시판</th><!-- 라운지 내부 일상/추천/유저간 질문 -->
						<th scope="col" style="width:60%;font-size: 25px;">내용</th>
						<th scope="col" style="width:20%;font-size: 25px;">날짜</th>
					</tr>
				</thead>
				<tbody class="table-group-divider">
					<tr>
						<td>1</td>
						<td>Mark</td>
						<td>Otto</td><!-- 2줄 이상 넘어가지 않게 처리 해야 됨. 모르면 물어봐주세요 --><!-- a링크처리도 달아서 해당 게시물 이동 -->
						<td>@mdo</td>
					</tr>
					<tr>
						<td>2</td>
						<td>Jacob</td>
						<td>Thornton</td>
						<td>@fat</td>
					</tr>
					<tr>
						<td>2</td>
						<td>Thornton</td>
						<td>Thornton</td>
						<td>@twitter</td>
					</tr>
					<tr>
						<td>2</td>
						<td>Thornton</td>
						<td>Thornton</td>
						<td>@twitter</td>
					</tr>
					<tr>
						<td>2</td>
						<td>Thornton</td>
						<td>Thornton</td>
						<td>@twitter</td>
					</tr>
					<tr>
						<td>2</td>
						<td>Thornton</td>
						<td>Thornton</td>
						<td>@twitter</td>
					</tr>
					<tr>
						<td>2</td>
						<td>Thornton</td>
						<td>Thornton</td>
						<td>@twitter</td>
					</tr>
					<tr>
						<td>2</td>
						<td>Thornton</td>
						<td>Thornton</td>
						<td>@twitter</td>
					</tr>
					<tr>
						<td>2</td>
						<td>Thornton</td>
						<td>Thornton</td>
						<td>@twitter</td>
					</tr>
					<tr>
						<td>2</td>
						<td>Thornton</td>
						<td>Thornton</td>
						<td>@twitter</td>
					</tr>
				</tbody>
				<tfoot>
				<tr>
					<td id="paging_list" colspan="4">
						<ol class="paging">
						   <!-- 이전 -->
						   <c:choose>
						   		<%-- 시작블록과 pagePerBlock를 비교해서 
						   		시작블록 작으면 이전으로 가 비활성화 된다. --%>
						   		<c:when test="${paging.beginBlock <= paging.pagePerBlock }">
						   			<li class="disable">이전으로</li>
						   		</c:when>
						   		<c:otherwise>
						   			<!-- a링크처리 -->
						   			<li><a href="/board_list.do?page=${paging.beginBlock-paging.pagePerBlock}">이전으로</a></li>
						   		</c:otherwise>
						   </c:choose>
						    <!-- 블록안에 들어간 페이지번호들 -->
							<c:forEach begin="${paging.beginBlock}" end="${paging.endBlock }" step="1" var="k">
							   <%-- 현재 페이지와 현재 페이지가 아닌 것을 나누자  --%>
							   <%-- 현재 페이지는 링크 X, 나머지 페이지는 해당 페이지로 이동하게 링크 처리  --%>
							   <%-- <c:choose>
							   		<c:when test="${k == paging.nowPage}">
							   			<li class="now">${k}</li>
							   		</c:when>
							   		<c:otherwise>
							   			<li><a href="/bbs_list.do?page=${k}">${k}</a></li>
							   		</c:otherwise>
							   </c:choose> --%>
							   <c:if test="${k == paging.nowPage}">
							   		<li class="now">${k}</li>
							   </c:if>
							   <c:if test="${k != paging.nowPage}">
							   		<!-- a링크처리 -->
							   		<li><a href="/board_list.do?page=${k}">${k}</a></li>
							   </c:if>
							</c:forEach>
							<!-- 다음 -->
							  <c:choose>
						   		<%-- 시작블록과 pagePerBlock를 비교해서 
						   		시작블록 작으면 이전으로 가 비활성화 된다. --%>
						   		<c:when test="${paging.endBlock >= paging.totalPage }">
						   			<li class="disable">다음으로</li>
						   		</c:when>
						   		<c:otherwise>
						   			<!-- a링크처리 -->
						   			<li><a href="/board_list.do?page=${paging.beginBlock+paging.pagePerBlock}">다음으로</a></li>
						   		</c:otherwise>
						   </c:choose> 
						</ol>
					</td>
				</tr>
			</tfoot>
			</table>
		</div>
	</div>

	<footer>
		<jsp:include page="../home/home_bottom.jsp" />
	</footer>
</body>
</html>