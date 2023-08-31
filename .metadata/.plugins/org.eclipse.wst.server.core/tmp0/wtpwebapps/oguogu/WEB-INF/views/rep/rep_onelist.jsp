<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">
/* 하단 버튼만 가운데 정렬 */
.button{
	text-align: center;
}
#repWrapper{
	text-align: center;
    padding:10px;
    margin:auto;
    font-family: 'Noto Sans KR', sans-serif;
    }
#repWrapper > ul > li:first-child {
        text-align: center;
        font-size:14pt;
        height:40px;
        vertical-align:middle;
        line-height:30px;
}
    
#title {
    width: 600px;
    height: 100px;
    background-color: white;
    text-align: center;
    margin : auto;
    margin-top:60px;
    color: #FFA629;
    font-family: 'Bagel Fat One', cursive;        
    text-shadow: 1px 1px 2px #D1D1D1;
    font-size: 60pt;
    border: none;
    padding-top: 10px;
    justify-content: center; /* 가로 가운데 정렬 */
    align-items: center; /* 세로 가운데 정렬 */
    display: flex; /* Flexbox 사용 */
}
#onelist table{
	width:1130px;
	height: 600px;
	margin:0 auto;
	margin-top:100px;
	border:1px solid black;
	border-collapse:collapse;
	font-size:20px;
}
#onelist table th {
	text-align:center;
	border:1px solid black;
	padding:2px 4px;
}
	
#onelist table td {
	text-align:left;
	border:1px solid black;
	padding:2px 4px;
}

.sidebar {
	width: 15%;
	background-color: white;
	font-size: 15pt;
	float: left;
	text-align: left;
	padding: 20px;
	box-sizing: border-box;
	margin-top: 160px;
	margin-right: 10px;
}
.sidebar-menu li {
  margin-bottom: 10px;
  list-style-type: none; 
  text-align: left;
}
.sidebar-menu a {
  text-decoration: none;
  color: #333;
}	
input{
	padding: 10px;
	margin:auto;
	}
.btn{
	text-align: center;
	}
.content{
	width: 100%;
	float:right;
	margin-left: -215px;          
    padding-left: 215px;          
    box-sizing: border-box;
}	
    


</style>
<script type="text/javascript"
	src="${ pageContext.servletContext.contextPath }/resources/js/jquery-3.6.3.min.js"></script>
<script type="text/javascript">
</script>
<title>rep_onelist</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Bagel+Fat+One&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
</head>
<body>
	<!-- 헤더 구역 -->
	<header>
		<jsp:include page="../home/home_top.jsp" />
	</header>
		
	<div id="repWrapper" style="width: 1920px;">
	
	<!-- 사이드바 구역 -->      
 <div class="sidebar">
      <ul class="sidebar-menu">
      <li class="notice"><a href="/sup_list.do">공지사항</a></li>
      <hr>
      <li class="faq"><a href="/faq_list.do">문의사항</a></li>
      <hr>
      <li class="report" style="font-weight: bold;"><a href="/rep_list.do">신고</a></li>
     </ul>
  </div>      
  <!-- 상세보기 구역 -->
	<div>
	<!--!!! 비공개 처리하기 !!!-->
	
		<p id="title">신고 내용</p>
	</div>
	<div id="onelist">
	<form action="qinsert.do" method="post"
			enctype="multipart/form-data" name="boardform">
			<table width="1200px;"  border="1px solid" cellpadding="0"
				cellspacing="0">
				<tr height="50">
					<th>신고 제목</th>
					<td style="padding: 8px; text-align: left;">${bv.rep_title}</td>
				</tr>
				<tr height="50">
					<th>신고자 이름</th>
					<td style="padding: 8px; text-align: left;">${bv.user_id}</td>
				</tr>
				<tr height="50">
					<th>신고할 대상 아이디</th>
					<td style="padding: 8px; text-align: left;">${bv.user_id}</td>
				</tr>
				<tr height="50">
					<th>작성 날짜</th>
					<td style="padding: 8px; text-align: left;">${bv.rep_date}</td>
				</tr>
				<tr height="50">
					<th>신고 내용</th>
					<td style="padding: 8px; text-align: left;"><pre>${bv.rep_content}</pre></td>
				</tr>
				<tr height="50">
					<th>첨부파일</th>
					<c:choose>
						<c:when test="${empty bv.rep_fname}">
							<td style="padding: 8px; text-align: left;"><b>첨부 파일 없음</b></td>
						</c:when>
						<c:otherwise>
							<td style="padding: 8px; text-align: left;"><a href="/board_down.do?f_name=${bv.rep_fname}">
							<img src="resources/images/${bv.rep_fname}" style="80px;"></a>
							</td>
						</c:otherwise>
					</c:choose>
				</tr>
				<tr height="30">
					<td colspan="2">
						<input type="hidden" value="${bv.rep_idx}" name="idx">
						<input type="hidden" value="${cPage}" name="cPage">
						
						<div class="btn">
						<!-- 
						<c:if test="${sessionScope.userId == bv.user_id}">
							<input type="button" value="수정" onclick="update_go(this.form)">
						</c:if>	
						 -->
						 <!-- 신고 게시물은 수정, 삭제 불가! 목록으로만 이동 가능(관리자?)-->
							<input type="button" value="목록" style="font-size: 20px;" onclick="list_go(this.form)">
						</div>
					</td>
				</tr>
		</table>
	</form>
	</div>  
	</div>  
</body>
</html>