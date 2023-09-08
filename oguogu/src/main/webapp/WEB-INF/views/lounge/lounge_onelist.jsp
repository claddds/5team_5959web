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
#loungeWrapper{
	text-align: center;
    padding:10px;
    margin:auto;
    font-family: 'Noto Sans KR', sans-serif;
    }
#loungeWrapper > ul > li:first-child {
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
	font-weight: bold;
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
}
.sidebar-menu a {
  text-decoration: none;
  color: #333;
  font-weight: normal;
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
#com_field{
	text-align: left;
}
</style>
<script type="text/javascript"
	src="${ pageContext.servletContext.contextPath }/resources/js/jquery-3.6.3.min.js"></script>
<script type="text/javascript">
</script>
<title>게시글 상세보기</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Bagel+Fat+One&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">

<script type="text/javascript">
	function update_go() {
		location.href ="/lounge_updateForm.do"
		submit();
	}
	function list_go(f) {
		location.href ="/lounge_list.do"
		submit();
	}
	function delete_gp(f) {
		f.action="/lounge_deleteForm.do"
	}
	// 댓글
	function comment_go(f) {
	// 유효성 검사
	// 댓글 작성자는 닉네임 바로 입력되게 만들기
	// 댓글 입력 
		if(f.com_content.value.trim().length <=0){
			alert("내용을 입력해 주세요");
			f.content.focus();
			return;
		}
		f.action = "/com_insert.do";
		f.submit();
	}
	// 댓글 삭제
	function comment_del(f) {
		f.action = "/com_delete.do";
		f.submit();
	}
	// 댓글 수정
	function comment_up(f) {
		f.action = "/com_update.do";
		f.submit();
	}
</script>
</head>
<body>
	<!-- 헤더 구역 -->
	<header>
		<jsp:include page="../home/home_top.jsp" />
	</header>
		
	<div id="loungeWrapper" style="width: 1920px;">
	
	<!-- 사이드바 구역 -->      
 <div class="sidebar">
    <ul class="sidebar-menu">
      <li class="all" style="font-weight: bold;"><a href="/lounge_list.do">전체글보기</a></li>
      <hr>
      <li class="share"><a href="/lounge/lounge_share_list.do">일상 공유</a></li>
      <hr>
      <li class="recomm"><a href="/lounge/lounge_recomm_list.do">추천탭</a></li>
      <hr>
      <li class="question"><a href="/lounge/lounge_qna_list.do">질문</a></li>
      <!-- 기타 사이드바 메뉴 항목 추가 -->
    </ul>
  </div>      
  <!-- 상세보기 구역 -->
	<div>
		<p id="title">게시글 상세보기</p>
	</div>
	<div id="onelist">
	<form action="qinsert.do" method="post"
			enctype="multipart/form-data" name="boardform">
			<table width="1200px;"  border="1px solid" cellpadding="0"
				cellspacing="0">
				<tr height="50">
					<th>게시판 종류</th>
					<td style="padding: 8px; text-align: left;">${bv.lo_type}</td>
				</tr>
				<tr height="50">
					<th>동물 종류</th>
					<td style="padding: 8px; text-align: left;">${bv.lo_type}</td>
				</tr>
				<tr height="50">
					<th>제목</th>
					<td style="padding: 8px; text-align: left;">${bv.lo_title}</td>
				</tr>
				<tr height="50">
					<th>이름</th>
					<td style="padding: 8px; text-align: left;">${bv.user_id}</td>
				</tr>
				<tr height="50">
					<th>내용</th>
					<td style="padding: 8px; text-align: left;"><pre>${bv.lo_content}</pre></td>
				</tr>
				<tr height="50">
					<th>첨부파일</th>
					<c:choose>
						<c:when test="${empty bv.lo_fname}">
							<td style="padding: 8px; text-align: left;"><b>첨부 파일 없음</b></td>
						</c:when>
						<c:otherwise>
							<td style="padding: 8px; text-align: left;"><a href="/board_down.do?f_name=${bv.lo_fname}">
							<img src="resources/images/${bv.lo_fname}" style="80px;"></a>
							</td>
						</c:otherwise>
					</c:choose>
				</tr>
				<tr height="50">
					<td colspan="2" style="padding: 8px; text-align: left;">
						<input type="hidden" value="${bv.idx}" name="idx">
						<input type="hidden" value="${cPage}" name="cPage">
						
						<div class="btn">
							<c:if test="${sessionScope.userId == bv.writer}">
							<input type="button" value="삭제" onclick="delete_go(this.form)">
							<input type="button" value="수정" onclick="update_go()">
							</c:if>
						</div>
					</td>
				</tr>
		</table>
		<hr style="width: 1200px; text-align:center; margin-left: 510px; margin-top: 50px;" >
	</form>
	</div>  
	
	<!-- 댓글 작성 영역 -->
	<%-- 댓글 입력 --%>
	<div style="padding:50px; width:1200px; margin-left: 460px; ">
		<form method="post">
			<fieldset id="com_field">
				<p>이름  <input type="text" name="user_id" ></p>
				<p>내용  <br>
					<textarea rows="4" cols="40" name="content" style="width: 1000px;"></textarea>
				 </p>
				 <input type="button" value="댓글저장" onclick="comment_go(this.form)">
				 <input type="hidden" name="lo_idx" value="${lvo.lo_idx}">
				 <input type="hidden" name="cPage" value="${cPage}">
			 </fieldset>
		</form>
	</div>
	<br><br><br>
	
	<%-- 댓글 출력 --%>
	<div style="display: table;" >
		<c:forEach var="k" items="${c_list}">
		 <div style="border: 1px solid #cc00cc; width: 400px; margin: 20px; padding: 20px;">
		 	<form method="post">
		 		<p>이름 : ${k.user_id}</p>
		 		<p>내용 : ${k.com_content }</p>
		 		<p>날짜 : ${k.com_date.substring(0,10)}</p>
		 		<%-- 실제로는 로그인 성공해야 지만 삭제번트이 보여야 한다. --%>
		 		<input type="button" value="삭제" onclick="comment_del(this.form)">
		 		<input type="button" value="수정" onclick="comment_up(this.form)">
		 		<input type="hidden" value="${k.com_idx}" name="com_idx">
		 		<input type="hidden" value="${k.lo_idx}" name="lo_idx">
		 		<input type="hidden" name="cPage" value="${cPage}">
		 	</form>
		 </div>
		</c:forEach>
	</div>
</div>  
</body>
</html>