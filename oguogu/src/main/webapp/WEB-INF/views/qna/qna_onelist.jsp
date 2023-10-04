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
#qnaWrapper{
	text-align: center;
    padding:10px;
    margin:auto;
    font-family: 'Noto Sans KR', sans-serif;
    }
#qnaWrapper > ul > li:first-child {
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
	width:1200px;
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
	background-color: #FFA629;
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
/* 댓글 입력 폼*/
#qnacom_field {
	margin-bottom: 20px;
	width: 80%;
	margin: 0 auto;
	text-align: left;
	}

#qnacom_field input[type="text"],
#qnacom_field textarea {
	width: calc(100% - 20px); 
	padding: 10px;
	margin-bottom: 10px;
	font-size: 16px;
	border: 1px solid #ccc;
	border-radius: 5px;
	}

#qnacom_field textarea {
	resize: vertical;
	}

#qnacom_field input[type="button"] {
	background-color: #FFA629;
	color: white;
	border: none;
	padding: 10px 20px;
	cursor: pointer;
	font-size: 18px;
	border-radius: 5px;
	}

#qnacom_field input[type="button"]:hover {
	background-color: #2980b9;
    }

#qnacomOut_field {
	margin-bottom: 20px;
	width: 80%;
	margin: 0 auto;
	text-align: left;
	}
.qnacom{
	
	 width: 1100px; 
	 margin-left: 510px; 
	 padding:50px;
	 text-align: left;
}
</style>
<script type="text/javascript"
	src="${ pageContext.servletContext.contextPath }/resources/js/jquery-3.6.3.min.js"></script>
<title>qna_onelist</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Bagel+Fat+One&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">


<script type="text/javascript">
	function list_go(){
		location.href="userqna_list.do";
	}
	function update_go(f) {
		f.action= "/qna_updateForm.do";
		f.submit();
	}
	function delete_go(f) {
		f.action = "/qna_deleteForm.do";
		f.submit();
	}
	// 댓글 저장
	function comment_go(f) {
		f.action = "/qnacom_insert.do";
		f.submit();
	}
	// 댓글 삭제
	function comment_del(f) {
		alert("댓글 삭제 성공!");
		f.action = "/qnacom_delete.do";
		f.submit();
	}
</script>
</head>
<body>
	<!-- 헤더 구역 -->
	<header>
		<jsp:include page="../home/home_top.jsp" />
	</header>
		
	<div id="qnaWrapper" style="width: 1920px;">
	
	<!-- 사이드바 구역 -->      
 <div class="sidebar">
    <ul class="sidebar-menu">
      <li class="notice"><a href="/sup_list.do">공지사항</a></li>
      <hr>
      <li class="faq"><a href="/faq_list.do">자주 묻는 질문</a></li>
      <hr>
      <li class="qna" style="font-weight: bold;"><a href="/userqna_list.do">1:1 문의</a></li>
      <hr>
      <li class="report"><a href="/rep_list.do">신고</a></li>
     </ul>
  </div>      
  <!-- 상세보기 구역 -->
	<div>
		<p id="title">문의사항 상세보기</p>
	</div>
	<div id="onelist">
	<form action="qinsert.do" method="post"
			enctype="multipart/form-data" name="boardform">
			<table width="1200px;"  border="1px solid" cellpadding="0"
				cellspacing="0">
				<tr height="50">
					<th>제목</th>
					<td style="padding: 8px; text-align: left;">${qvo.one_title}</td>
				</tr>
				<tr height="50">
					<th>작성자</th>
					<td style="padding: 8px; text-align: left;">${qvo.user_id}</td>
				</tr>
				<tr height="50">
					<th>작성 날짜</th>
					<td style="padding: 8px; text-align: left;">${qvo.one_date}</td>
				</tr>
				<tr height="50">
					<th>내용</th>
					<td style="padding: 8px; text-align: left;"><pre>${qvo.one_content}</pre></td>
				</tr>
				<tr height="50">
					<th>첨부파일</th>
					<c:choose>
						<c:when test="${empty qvo.one_fname}">
							<td style="padding: 8px; text-align: left;"><b>첨부 파일 없음</b></td>
						</c:when>
						<c:otherwise>
							<td style="padding: 8px; text-align: left;"><a href="/board_down.do?one_fname=${qvo.one_fname}">
							<img src="resources/images/${qvo.one_fname}" style="80px;"></a>
							</td>
						</c:otherwise>
					</c:choose>
				</tr>
				<tr height="30">
					<td colspan="2" align="center" style="padding: 8px; text-align: center;">
						<input type="hidden" value="${qvo.one_idx}" name="one_idx">
						<input type="button" style="font-size: 20px;" value="목록" onclick="list_go())">
						<c:if test="${sessionScope.user_id == qvo.user_id}">
							<input type="button" value="수정" style="font-size: 20px;" onclick="update_go(this.form)">
							<input type="button" value="삭제" style="font-size: 20px;"onclick="delete_go(this.form)">
						</c:if>	
					</td>
				</tr>
		</table>
	</form>
	</div>  
		<!-- 댓글 작성 영역 -->
	<%-- 댓글 입력 --%>
	<div style="padding:50px; width:1200px; margin-left: 460px; ">
		<form method="post">
			<fieldset id="qnacom_field">
				<p>작성자  <input type="text" name="user_id" value="${ sessionScope.user_id }" readonly ></p>
				<p>내용  <br>
					<textarea rows="4" cols="40" name="qnacom_content" style="width: 1000px;"></textarea></p>
				 <input type="button" value="댓글저장" style="font-size: 15px;" onclick="comment_go(this.form)">
				 <input type="hidden" name="one_idx" value="${qvo.one_idx}">
				 <input type="hidden" name="cPage" value="${cPage}">
			 </fieldset>
		</form>
	</div>
	<br>
	<%-- 댓글 출력 --%>
	<div style="display: table;" class="qnacom">
		<c:forEach var="k" items="${c_list}">
		
		 	<form method="post">
		 	<fieldset id="qnacomOut_field">
		 		<p>작성자 : ${k.user_id}</p>
		 		<p>내용 : ${k.qnacom_content }</p>
		 		<p>날짜 : ${k.qnacom_date.substring(0,10)}</p>
		 		<hr>
		 		<%-- 실제로는 로그인 성공해야 지만 삭제번트이 보여야 한다. --%>
		 		<c:if test="${sessionScope.user_id == k.user_id}">
		 			<input type="hidden" value="${k.qnacom_idx}" name="qnacom_idx">
	 				<input type="hidden" name="one_idx" value="${k.one_idx}">
					<input type="hidden" name="cPage" value="${cPage}">
		 			<input type="button" value="삭제" onclick="comment_del(this.form)">
		 		</c:if>
		 	</fieldset>
		 	</form>
		 
		
		</c:forEach>
	</div>
	</div>  
</body>
</html>