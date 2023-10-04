<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>rep_onelist</title>
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
#repcom_field{
	text-align: left;
}
.repcom{
	 border: 1px solid gray;
	 width: 1100px; 
	 margin-left: 510px; 
	 padding:50px;
	 text-align: left;
}
</style>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Bagel+Fat+One&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>

<script type="text/javascript">
	function list_go(f) {
		f.action = "/rep_list.do";
		f.submit();
	}
// 댓글 저장
	function comment_go(f) {
		f.action = "/repcom_insert.do";
		f.submit();
	}
// 댓글 삭제
	function comment_del(f) {
		f.action = "/repcom_delete.do";
		f.submit();
	}
</script>
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
      <li class="faq"><a href="/faq_list.do">자주 묻는 질문</a></li>
      <hr>
      <li class="qna" ><a href="/userqna_list.do">1:1 문의</a></li>
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
					<td style="padding: 8px; text-align: left;">${rvo.rep_title}</td>
				</tr>
				<tr height="50">
					<th>신고자 이름</th>
					<td style="padding: 8px; text-align: left;">${rvo.user_id}</td>
				</tr>
				<tr height="50">
					<th>작성 날짜</th>
					<td style="padding: 8px; text-align: left;">${rvo.rep_date}</td>
				</tr>
				<tr height="50">
					<th>처리 상태</th>
					<td style="padding: 8px; text-align: left;">
					<c:choose>
						<c:when test="${rvo.rep_ing == 0}">
							처리 대기중
						</c:when>
						<c:otherwise>
							처리 완료
						</c:otherwise>
					</c:choose>
					</td>
				</tr>
				<tr height="50">
					<th>신고 내용</th>
					<td style="padding: 8px; text-align: left;"><pre>${rvo.rep_content}</pre></td>
				</tr>
				<tr height="50">
					<th>첨부파일</th>
					<c:choose>
						<c:when test="${empty rvo.rep_fname}">
							<td style="padding: 8px; text-align: left;"><b>첨부 파일 없음</b></td>
						</c:when>
						<c:otherwise>
							<td style="padding: 8px; text-align: left;"><a href="/board_down.do?f_name=${rvo.rep_fname}">
							<img src="resources/images/${rvo.rep_fname}" style="80px;"></a>
							</td>
						</c:otherwise>
					</c:choose>
				</tr>
				<tr height="30">
					<td colspan="2">
						<input type="hidden" value="${rvo.rep_idx}" name="idx">
						<input type="hidden" value="${cPage}" name="cPage">
						
						<div class="btn">
							<input type="button" value="목록" style="font-size: 20px;" onclick="list_go(this.form)">
						</div>
					</td>
				</tr>
		</table>
	</form>
	</div> 
	<!-- 댓글 작성 영역 -->
	<%--
	<!-- 댓글 입력 -->
	<div style="padding:50px; width:1200px; margin-left: 460px; ">
		<form method="post">
			<fieldset id="repcom_field">
				<p>작성자  <input type="text" name="user_id" ></p>
				<p>내용  <br>
					<textarea rows="4" cols="40" name="repcom_content" style="width: 1000px;"></textarea>
				 </p>
				 <input type="button" value="댓글저장" onclick="comment_go(this.form)">
				 <input type="hidden" name="rep_idx" value="${rvo.rep_idx}">
				 <input type="hidden" name="cPage" value="${cPage}">
			 </fieldset>
		</form>
	</div>
	<br>
	<!-- 댓글 출력 -->
	<div style="display: table;" class="repcom">
		<c:forEach var="k" items="${rc_list}">
	
		 <div>
		 	<form method="post">
		 		<p>작성자 : ${k.user_id}</p>
		 		<p>내용 : ${k.repcom_content }</p>
		 		<p>날짜 : ${k.repcom_date.substring(0,10)}</p>
		 		
		 		<input type="button" value="삭제" onclick="comment_del(this.form)">
		 		<input type="button" value="수정" onclick="comment_up(this.form)">
		 		<input type="hidden" value="${k.repcom_idx}" name="repcom_idx">
		 		<input type="hidden" value="${k.rep_idx}" name="rep_idx">
		 		<input type="hidden" name="cPage" value="${cPage}">
		 	</form>
		 </div>

		</c:forEach>
	</div>	
	 --%>
</div>  
</body>
</html>