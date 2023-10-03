<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
<!DOCTYPE HTML>
<html>
<head>
<meta charset=UTF-8>
<title>오구닥터-질병사전리스트(관리자 페이지)</title>
<style type="text/css">
#board table {
	width:1400px;
	margin:0 auto;
	margin-top:20px;
	border: 1px solid black;
	border-collapse: collapse;
	font-size: 14px;
}

#board table caption {
	font-size: 20px;
	font-weight: bold;
	margin-bottom: 10px;
}

#board table th, #board table td {
	text-align: center;
	border: 1px solid black;
	padding: 4px 10px;
}

.no { width: 15% }
.subject { 	width: 30% }
.writer {	width: 20% }
.reg {	width: 20% }
.hit {	width: 15% }
.title {	background: lightsteelblue }
.odd {	background: silver }

/* paging */
table tfoot ol.paging {
	list-style: none;
}

table tfoot ol.paging li {
	float: left;
	margin-right: 8px;
}

table tfoot ol.paging li a {
	display: block;
	padding: 3px 7px;
	border: 1px solid #00B3DC;
	color: #2f313e;
	font-weight: bold;
}

table tfoot ol.paging li a:hover {
	background: #00B3DC;
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
	border: 1px solid #ff4aa5;
	background: #ff4aa5;
	color: white;
	font-weight: bold;
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
	function write_go() {
		location.href = "/board_insertForm.do";
	}
</script>
</head>
<body>
	<header>
		<jsp:include page="/WEB-INF/views/home/home_top.jsp" />
	</header>
	
	<!-- 사이드바 -->
	<jsp:include page="/WEB-INF/views/adminhome/sidebar.jsp" />
	
	<div id="board" align="center">
		<table>
			<thead>
				<tr class="title">
					<th class="no">번호</th>
					<th class="pet_kind">동물종류</th>
					<th class="title">제목</th>
					<th class="writer">글쓴이</th>
					<th class="regate">날짜</th>
					<th class="hit">조회수</th>
				</tr>
			</thead>
			<tbody>
				<c:choose>
					<c:when test="${empty board_list}">
						<tr>
							<td colspan="5"><h2>자료가 존재하지 않습니다.</h2></td>
						</tr>
					</c:when>
					<c:otherwise>
						<c:forEach var="k" items="${board_list}" varStatus="vs">
							<tr>
								<td>${k.ogu_idx}</td>
								<td style="text-align: left; padding-left: 20px">
									<a href="/board_onelist.do?idx=${k.idx}&cPage=${paging.nowPage}">${k.title}</a>
								</td>
								<td>${k.writer }</td>
								<td>${k.regdate.substring(0,10)}</td>
								<td>${k.hit}</td>
							</tr>
						</c:forEach>
					</c:otherwise>
				</c:choose>
			</tbody>
			<tfoot>
				<tr>
					<td colspan="4">
						<ol class="paging">
							<!-- 이전 버튼 -->
							<c:choose>
								<c:when test="${paging.beginBlock <= paging.pagePerBlock }">
									<li class="disable">이전으로</li>
								</c:when>
								<c:otherwise>
									<li><a href="/board_list.do?cPage=${paging.beginBlock-paging.pagePerBlock }">이전으로</a></li>
								</c:otherwise>
							</c:choose>
							
							<!-- 페이지번호들 -->
							<c:forEach begin="${paging.beginBlock }" end="${paging.endBlock }" step="1" var="k">
								<!--  현재 페이지는 링크 X, 나머지 페이지는 해당 페이지로 이동하게 링크 처리 -->
								<c:if test="${ k == paging.nowPage}">
									<li class="now">${k}</li>
								</c:if>
								<c:if test="${ k != paging.nowPage}">
									<li><a href="/board_list.do?cPage=${k}">${k}</a></li>
								</c:if>   		
							</c:forEach>
							
							<!-- 이후 버튼 -->
							<c:choose>
								<c:when test="${paging.endBlock >= paging.totalPage }">
									<li class="disable">다음으로</li>
								</c:when>
								<c:otherwise>
									<li><a href="/board_list.do?cPage=${paging.beginBlock+paging.pagePerBlock }">다음으로</a></li>
								</c:otherwise>
							</c:choose>
						</ol>
					</td>
					<td>
						<input type="button" value="글쓰기" onclick=" write_go()">
					</td>
				</tr>
			</tfoot>	
		</table>
	</div>
	
	<footer>
		<jsp:include page="/WEB-INF/views/home/home_bottom.jsp" />
	</footer>
</body>
</html>
