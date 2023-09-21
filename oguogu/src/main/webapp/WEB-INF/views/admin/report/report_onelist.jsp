<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">
#repWrapper>ul>li:first-child {
	text-align: center;
	font-size: 14pt;
	height: 40px;
	vertical-align: middle;
	line-height: 30px;
}
#report_title {
	margin: 10px auto;
	text-decoration: none;
	top: 50%;
	width: 400px;
	text-decoration: none;
	background-color: white;
	text-align: center;
	color: #FFA629;
	font-weight: bold;
	text-shadow: 1px 1px 2px #D1D1D1;
	font-size: 20pt;
	border: 1px solid;
	padding: 10px;
	border-radius: 20px;
}
#onelist table {
	width: 1000px;
	height: 400px;
	margin: auto;
	margin-top: 30px;
	margin-left: 50px;
	border: 1px solid black;
	border-collapse: collapse;
	font-size: 20px;
}
#onelist table th {
	text-align: center;
	border: 1px solid black;
	padding: 2px 4px;
	background-color: #FFA629;
}
#onelist table td {
	text-align: left;
	border: 1px solid black;
	padding: 2px 4px;
}
input {
	padding: 10px;
	margin: auto;
}



.content {
	width: 100%;
	float: right;
	margin-left: -215px;
	padding-left: 215px;
	box-sizing: border-box;
}

button {
	text-align: right;
}

#report_sea {
	display: flex;
	padding-top: 15px;
	padding-bottom: 15px;
	border-bottom: 1px solid #bcc;
	padding-top: 15px;
}
</style>
<script type="text/javascript"
	src="${ pageContext.servletContext.contextPath }/resources/js/jquery-3.6.3.min.js"></script>
<script type="text/javascript">
	
</script>
<script type="text/javascript">
	function list_go(f) {
		location.href = "/rep_list.do"
		submit();
	}
</script>
</head>
<body style="width: 100%;">
	<!-- 헤더 구역 -->
	<header style="width: 100%;">
		<jsp:include page="/WEB-INF/views/home/home_top.jsp" />
	</header>
	<!-- 사이드바 -->
	<jsp:include page="/WEB-INF/views/adminhome/sidebar.jsp" />

	<div style="border-bottom: 1px solid #bcc;">
	<!-- 상세보기 구역 -->
			<p id="report_title">신고 내용</p>
		</div>
		<div id="report_sea">
			<div id="onelist">
				<form action="qinsert.do" method="post" enctype="multipart/form-data" name="boardform">
					<table width="120px;" border="1px solid" cellpadding="0" cellspacing="0">
						<tr height="50">
							<th>신고 제목</th>
							<td style="padding: 8px; text-align: left;">${rvo.rep_title}</td>
						</tr>
						<tr height="50">
							<th>신고자 아이디</th>
							<td style="padding: 8px; text-align: left;">${rvo.user_id}</td>
						</tr>
						<tr height="50">
							<th>작성 날짜</th>
							<td style="padding: 8px; text-align: left;">${rvo.rep_date}</td>
						</tr>
						<tr height="50">
							<th>신고 내용</th>
							<td style="padding: 8px; text-align: left;"><pre>${rvo.rep_content}</pre></td>
						</tr>
						<tr height="50">
							<th>첨부파일</th>
							<c:choose>
								<c:when test="${empty rvo.rep_fname}">
									<td style="padding: 8px; text-align: left;"><b>첨부 파일
											없음</b></td>
								</c:when>
								<c:otherwise>
									<td style="padding: 8px; text-align: left;"><a
										href="/board_down.do?f_name=${rvo.rep_fname}"> <img
											src="resources/images/${rvo.rep_fname}" style=""></a></td>
								</c:otherwise>
							</c:choose>
						</tr>
			</div>
			<tr height="30">
				<td colspan="2">
				<input type="hidden" value="${rvo.rep_idx}" name="idx"> 
				<input type="hidden" value="${cPage}" name="cPage">
				<div>
					<select class="search-form selectBox" name="searchOption" 
						style="width: 100px; height: 30px; border-radius: 5px; border: 1px solid #bcc; text-align: center;">
						<option value="">처리 대기중</option>
						<option value="">처리중</option>
						<option value="">처리 완료</option>
					</select>
					<button class="report_sea searchBtn"
						style="border: none; height: 30px; background: #FFA629; border-radius: 5px; border-bottom-right-radius: 5px;">저장</button>
					<button class="report_re resetBtn"
						style="border: none; height: 30px; background: #FFA629; border-radius: 5px; margin-left: 20px;">목록</button>
				</div>
		</div>
		</td>
		</tr>
		</table>
		</form>
	</div>
	<%-- <footer>
		<jsp:include page="/WEB-INF/views/home/home_bottom.jsp" />
	</footer> --%>
</body>
</html>