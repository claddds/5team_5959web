<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html lang="en">
<meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>오구오구 양육정보</title>
    <!-- 신고 게시판 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
<style type="text/css">
#title {
    width: 600px;
    height: 100px;
    background-color: white;
    text-align: center;
    margin : auto;
    margin-top : 20px;
    margin-bottom : 40px;
    color: #FFA629;
    font-family: 'Bagel Fat One', cursive;        
    text-shadow: 1px 1px 2px #D1D1D1;
    font-size: 60pt;
    border: none;
    padding-top: 10px;
}
#atitle{
text-decoration :none;
}
#atitle:link { color: #FFA629;  font-weight: bold;} /* 기본 상태 */
#atitle:visited { color: #FFA629;  font-weight: bold;} /* 사용자가 이미 링크 방문한 상태라면 갈색으로*/
#atitle:hover { color: tomato;  font-weight: bold;} /* 마우스 올려져 있을때 coral색으로 */
#atitle:active { color: khaki;  font-weight: bold;} /* 마우스로 클릭할떄 khaki색으로 변경 */

#repWrapper{
        width: 1130px;
        height: 1200px;
        margin: auto;
        font-family: 'Noto Sans KR', sans-serif;
    }
#repWrapper > ul > li:first-child {
        text-align: center;
        font-size:14pt;
        height:40px;
        vertical-align:middle;
        line-height:30px;
}
    #liSearchOption {clear:both;}
    #liSearchOption > div {
    text-align: center;
        margin: auto; 
        margin-top: 30px; 
        width:auto; 
        height:100px;

}
.center {
        text-align : center;
}


.sidebar {
	width: 18%;
	background-color: white;
	font-size: 20pt;
	float: left;
	text-align: center;
	padding: 20px;
	box-sizing: border-box;
	margin-top: 80px;
	margin-right: 10px;
}
.sidebar-menu li {
  margin-bottom: 10px;
  list-style-type: none; 
  text-align: center;
}
.sidebar-menu a {
  text-decoration: none;
  color: #333;
}

.menu li {
	list-style-type: none;
	margin-top: 0px;
	/* padding:20px; */
}

.submenu {
	height: 0; /*ul의 높이를 안보이게 처리*/
	overflow: hidden;
	margin: auto;
}

.menu>li:hover {
	background-color: #FFA629;
	text-align: center;
	transition-duration: 0.5s;
	/* margin:auto; */
	/* padding: 5px; */
}

.menu>li:hover .submenu {
	height: 150px; /*서브메뉴 li한개의 높이 50*5*/
	transition-duration: 1s;
}


footer{
		width:1920px;
		display:flex;
		margin:auto;
		margin-top:20px;
		margin-bottom: 20px;
	}
.table{
	width:1500px;
	margin:0 auto;
	float: right;
	margin-top: 30px;
	
}
.table > th {
background-color :#FFA629;
border-radius: 10px;
}
/* paging */
.paging{text-align: center;}

table tfoot ol.paging {
    list-style: none;
    display:flex;
    justify-content: center;
    margin-top:20px;
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

tfoot{
	text-align: center;
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
footer{
		width:1920px;
		display:flex;
		margin:auto;
		margin-top:20px;
		margin-bottom: 20px;
	}
.button{
    background-color: #FFA629;
    color: #f8f8ff;
    border: none;
    width: 80px;
    height: 40px;
    font-size: 13pt;
    font-family: 'Bagel Fat One', cursive;        
    
	border-radius: 10px;
	
}



</style>

<script type="text/javascript">
console.log("현재 페이지: " + ${paging.nowPage});
	function write_go() {
		location.href = "/edu_write.do";
	}
function submit() {
	if(document.search.keyword.value==""){
		alert('검색어를 입력하세요');
		document.search.ketword.focus();
		return false;
	}
}
</script>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
</head>
<body>
	<!-- 헤더 구역 -->
	<header>
		<jsp:include page="/WEB-INF/views/home/home_top.jsp" />
	</header>
<div id="repWrapper" style="width: 1920px;">
<!-- 사이드바 구역 -->
 <div class="sidebar" style="font-family: 'Bagel Fat One', cursive;">
     <ul class="menu">
			<li><a href="" id="novel"
				class="list-group-item list-group-item-action d-flex align-items-center"></a>
				<div class="d-flex w-100 justify-content-center">
					<strong class="mb-1">회원 관리</strong>
				</div> <!-- 회원관리 -->
				<ul class="submenu">
					<li><a href="/admin_user.do">회원 목록</a></li>
					<li><a href="/admin_del_user.do">탈퇴 회원 목록</a></li>
					<li><a href="/admin_list.do">신고 회원 목록</a></li>
				</ul>
			<li><a href="" id="novel"
				class="list-group-item list-group-item-action d-flex align-items-center"></a>
				<div class="d-flex w-100 justify-content-center">
					<strong class="mb-1">게시글</strong>
				</div> <!-- 게시글 -->
				<ul class="submenu">
					<li><a href="/ad_food_onelist.do">공지사항</a></li>
					<li><a href="/admin_faq.do">FAQ</a></li>
				</ul>
			<li><a href="" id="novel"
				class="list-group-item list-group-item-action d-flex align-items-center"></a>
				<div class="d-flex w-100 justify-content-center">
					<strong class="mb-1">질문</strong>
				</div> <!-- 질문 -->
				<ul class="submenu">
					<li><a href="/admin_qan.do">1:1 문의</a></li>
					<li><a href="/admin_report.do">신고</a></li>
				</ul>
			<li><a href="" id="novel"
				class="list-group-item list-group-item-action d-flex align-items-center"></a>
				<div class="d-flex w-100 justify-content-center">
					<strong class="mb-1">오구닥터</strong>
				</div> <!-- 오구닥터 -->
				<ul class="submenu">
					<li><a href="">자가진단</a></li>
					<li><a href="">질병 리스트</a></li>
				</ul>
			<li><a href="" id="novel"
				class="list-group-item list-group-item-action d-flex align-items-center"></a>
				<div class="d-flex w-100 justify-content-center">
					<strong class="mb-1">교육 관리</strong>
				</div> <!-- 교육 관리 -->
				<ul class="submenu">
					<li><a href="/edu_Alist.do">필수 정보</a></li>
					<li><a href="/edu_Blist.do">양육 정보</a></li>
					<li><a href="/edu_Clist.do">훈련 정보</a></li>
				</ul>
			<li><a href="" id="novel"
				class="list-group-item list-group-item-action d-flex align-items-center"></a>
				<div class="d-flex w-100 justify-content-center">
					<strong class="mb-1">쇼핑 관리</strong>
				</div> <!-- 쇼핑 관리 -->
				<ul class="submenu">
					<li><a href="/ad_food_list.do">상품 관리</a></li>
				</ul>
			<li><a href="" id="novel"
				class="list-group-item list-group-item-action d-flex align-items-center"></a>
				<div class="d-flex w-100 justify-content-center">
					<strong class="mb-1">커뮤니티</strong>
				</div> <!-- 커뮤니티 -->
				<ul class="submenu">
					<li><a href="">일상 공유</a></li>
					<li><a href="">추천 탭</a></li>
					<li><a href="">질문</a></li>
				</ul></li>
				</ul>
  </div>    
  <!-- 게시판 리스트 구역 -->
  <div>
	<p id="title">오구오구 양육정보</p>
	</div>
	<hr/>
  <div class="edu_list">
	<table class="table">
  <thead>
    <tr>
      <th scope="col">등록번호</th>
      <th scope="col">교육종류</th>
      <th scope="col">동물종류</th>
      <th scope="col">교육정보 제목</th>
      <th scope="col">작성자</th>
      <th scope="col">작성 날짜</th>
      <th scope="col">게시 여부</th>
    </tr>
  </thead>
  <tbody>
   <c:choose>
	<c:when test="${empty e_Blist}">
						<tr>
							<td colspan="7"><h2>자료가 존재하지 않습니다.</h2></td>
						</tr>
						
					</c:when>
					<c:otherwise>
						<c:forEach var="e" items="${e_Blist}"  varStatus="vs">
							<tr>
							<c:if test="${e.status == 0}">
								<td>${e.edu_idx}</td>
								<td>${e.edu_kind}</td>
								<td>${e.edu_aml_kind}</td>
								<td ><a id="atitle" href="/edu_onelist.do?edu_idx=${e.edu_idx}&cPage=${paging.nowPage}">${e.edu_title}</a></td>
								<td>${e.admin_nikname }</td>
								<td>${e.edu_date.substring(0,10)}</td>
								<c:if test="${e.edu_open == 0}">
								<td ${e.edu_open} > 게시</td>		
								</c:if>
								<c:if test="${e.edu_open == 1}">
								<td ${e.edu_open} > 미게시</td>		
								</c:if>
							</c:if>
							</tr>
						</c:forEach>
					</c:otherwise>
				</c:choose>	
  </tbody>
 <tfoot>
<!-- 페이징  기법 -->
	<tr>
		<td colspan="6">
			<ol class="paging"> 
				<!-- 이전 버튼 -->
				<c:choose>
					<c:when test="${paging.beginBlock <= paging.pagePerBlock }">
						<li class="disable">이전으로</li>
					</c:when>
					<c:otherwise>
						<li><a
							href="/edu_Blist.do?cPage=${paging.beginBlock-paging.pagePerBlock }">이전으로</a></li>
					</c:otherwise>
				</c:choose>
				<!-- 페이지번호들 -->
				<c:forEach begin="${paging.beginBlock }" end="${paging.endBlock }" step="1" var="k">
					<!--  현재 페이지는 링크 X, 나머지 페이지는 해당 페이지로 이동하게 링크 처리 -->
					<c:if test="${ k == paging.nowPage}">
						<li class="now">${k}</li>
					</c:if>
					<c:if test="${ k != paging.nowPage}">
						<li><a href="/edu_Blist.do?cPage=${k}">${k}</a></li>
					</c:if>
				</c:forEach>

				<!-- 이후 버튼 -->
				<c:choose>
					<c:when test="${paging.endBlock >= paging.totalPage }">
						<li class="disable">다음으로</li>
					</c:when>
					<c:otherwise>
						<li><a
							href="/edu_Blist.do?cPage=${paging.beginBlock+paging.pagePerBlock }">다음으로</a></li>
					</c:otherwise>
				</c:choose>
			</ol>
		</td>
		<td>
						<input type="button" class="button" value="글쓰기" onclick=" write_go()">
					</td>
	</tr>
	
</tfoot>
</table>
 
<!--검색 항목-->
	<div>
		<center>
            <li id='liSearchOption'  style="display: block; ">
            	<form action="/edu_search.do?page=1" method="post">
                <div>
                    <select name="searchtype" >
                        <option value="edu_title">제목</option>
                        <option value="edu_content">내용</option>
                        <option value="admin_nikname">작성자</option>                        
                    </select>
                    <input type="search" name="keyword">
                    <input type="submit" class="button" value="검색">
                </div>
                </form>
                
             </li>
   </div>
   <br>
</center>
	</div>
</div>
<footer>
		<jsp:include page="/WEB-INF/views/home/home_bottom.jsp" />
	</footer>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" ></script>
</body>
</html>