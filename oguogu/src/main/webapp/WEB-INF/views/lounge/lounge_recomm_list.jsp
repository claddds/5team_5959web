<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html lang="en">
<meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>lounge_recomm_list</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
<style type="text/css">
#minibanner img {
		width: 1920px;
		height: 200px;
		display: flex;
		place-items: center;
		margin: auto;
		margin-top: 20px;
		margin-bottom: 20px;
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

#loungeWrapper{
        width: 1130px;
        margin: auto;
        font-family: 'Noto Sans KR', sans-serif;
    }
#loungeWrapper > ul > li:first-child {
        text-align: center;
        font-size:14pt;
        height:40px;
        vertical-align:middle;
        line-height:30px;
}
#liSearchOption {clear:both;}
#liSearchOption > div {
	margin:0 auto; 
    margin-top: 30px; 
    width:auto; 
    height:100px;
    display:flex;
	justify-content:center;

}
.center {
        text-align : center;
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
.table{
	width:1500px;
	margin:0 auto;
	float: right;
	margin-top: 100px;
	
}
.nav > div{
    margin-left:100px;
}
footer{
		width:1920px;
		display:flex;
		margin:auto;
		margin-top:20px;
		margin-bottom: 20px;
	}
/* paging */
.paging{
	text-align: center;
}

table tfoot ol.paging {
	list-style: none;
	display:flex;
	justify-content:center;
}

table tfoot ol.paging li {
	float: left;
	margin-right: 8px;
	text-align: center;
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

.button{
	background-color: #FFA629;
	color: #f8f8ff;
	border: none;
	width: 80px;
    height: 40px;
    font-size: 15pt;
	border-radius: 10px;
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
</style>

<script type="text/javascript"
            src="${ pageContext.servletContext.contextPath }/resources/js/jquery-3.6.3.min.js"></script>
<script type="text/javascript">
	function write_go() {
		//글쓰기로 이동하는 함수
		location.href = "/lounge_insertForm.do";
	}
    
</script>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
</head>
<body>
	<!-- 헤더 구역 -->
	<header>
		<jsp:include page="../home/home_top.jsp" />
	</header>
<!-- 리스트 배너 구역 -->
	<div id=minibanner>
		<a href="/loungerecommdisplay.do"><img src="resources/images/page_banner/listbanner_lounge.png"></a>
	</div>
<div id="loungeWrapper" style="width: 1920px; ">
	<!-- 사이드바 구역 -->
	<div class="sidebar">
    <ul class="sidebar-menu">
      <li class="all"><a href="/lounge_list.do">전체글보기</a></li>
      <hr>
      <li class="share"><a href="/lounge_share_list.do">일상 공유</a></li>
      <hr>
      <li class="recomm" style="font-weight: bold;"><a href="/lounge_recomm_list.do">추천탭</a></li>
      <hr>
      <li class="question"><a href="/lounge_qna_list.do">질문</a></li>
      <!-- 기타 사이드바 메뉴 항목 추가 -->
    </ul>
  </div>
  <!-- 게시판 리스트 구역 -->
  <!-- 기본 첫 페이지는 전체글보기 -->
  <div>
	<p id="title">추천탭</p>
	</div>
  <div class="lounge_list" >
	<table class="table">
  <thead>
    <tr>
      <th scope="col">No.</th>
      <th scope="col">유형</th>
      <th scope="col">동물종류</th>
      <th scope="col">제목</th>
      <th scope="col">작성자</th>
      <th scope="col">작성 날짜</th>
      <th scope="col">조회수</th>
    </tr>
  </thead>
  <tbody>
      <c:choose>
	<c:when test="${empty lounge_recomm_list}">
		<tr>
			<td colspan="7"><h2 style="text-align: center;">자료가 존재하지 않습니다.</h2></td>
		</tr>
	</c:when>
	<c:otherwise>
		<c:forEach var="l" items="${lounge_recomm_list}" varStatus="vs">
			<tr>
			<!-- 제목을 누르면 해당 게시글의 상세정보 페이지로 이동 -->
			<td>${l.lo_idx}</td>
            <td>${l.lo_type}</td>
            <td>${l.lo_petkind}</td>
			<td>
				<a href="/lounge_onelist.do?lo_idx=${l.lo_idx}">${l.lo_title}</a>
			</td>
			<td>${l.user_id }</td>
			<td>${l.lo_date.substring(0,10)}</td>
			<td>${l.lo_hit}</td>
			</tr>
		</c:forEach>
	</c:otherwise>
	</c:choose>
  </tbody>
  <tfoot>
	<tr>
		<td colspan="7">
			<ol class="paging"> 
				<!-- 이전 버튼 -->
				<c:choose>
					<c:when test="${paging.beginBlock <= paging.pagePerBlock }">
						<li class="disable">이전으로</li>
					</c:when>
					<c:otherwise>
						<li><a
							href="/lounge_list.do?cPage=${paging.beginBlock-paging.pagePerBlock }">이전으로</a></li>
					</c:otherwise>
				</c:choose>
				<!-- 페이지번호들 -->
				<c:forEach begin="${paging.beginBlock }"
					end="${paging.endBlock }" step="1" var="k">
					<!--  현재 페이지는 링크 X, 나머지 페이지는 해당 페이지로 이동하게 링크 처리 -->
					<c:if test="${ k == paging.nowPage}">
						<li class="now">${k}</li>
					</c:if>
					<c:if test="${ k != paging.nowPage}">
						<li><a href="/lounge_list.do?cPage=${k}">${k}</a></li>
					</c:if>
				</c:forEach>

				<!-- 이후 버튼 -->
				<c:choose>
					<c:when test="${paging.endBlock >= paging.totalPage }">
						<li class="disable">다음으로</li>
					</c:when>
					<c:otherwise>
						<li><a
							href="/lounge_list.do?cPage=${paging.beginBlock+paging.pagePerBlock }">다음으로</a></li>
					</c:otherwise>
				</c:choose>
			</ol>
		</td>
		<td>
        	<input type="button" value="글쓰기" class="button" onclick=" write_go()">
        </td>
	</tr>
</tfoot>	
</table>
  </div>
<%--검색 항목--%>
<div style="text-align: center;">
	<li id='liSearchOption' style="display: block;">
		<form action="qnasearch.do?page=1" method="post">
			<div>
				<select name="searchtype" >
					<option value="qname">제목</option>
					<option value="qcontent">내용</option>
					<option value="qid">작성자</option>                        
				</select>
                <input type="search" name="keyword">
                <input type="submit" value="검색" class="button">
			</div>
		</form>
	</li>
   </div>
</div>
<footer>
		<jsp:include page="/WEB-INF/views/home/home_bottom.jsp" />
	</footer>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" ></script>
</body>
</html>