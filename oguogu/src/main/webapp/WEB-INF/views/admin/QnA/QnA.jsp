<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html lang="en">
<meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>1:1 문의글 (관리자 화면)</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
<style type="text/css">
#title {
	margin : 10px auto;
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
   border-radius:20px;
}
#noticetWrapper{
        width: 1130px;
        margin: auto;
        font-family: 'Noto Sans KR', sans-serif;
    }

#liSearchOption {clear:both;}
#liSearchOption > div {
	margin:0 auto; 
	margin-top: 30px; 
	width:auto; 
	height:100px;
}
.center {
	text-align : center;
}

 .menu {
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
/*
.sidebar-menu li {
  margin-bottom: 10px;
  list-style-type: none; 
  text-align: left;
}
.sidebar-menu a {
  text-decoration: none;
  color: #333;
}  */
/*  사이드 바  */
.submenu>li {
    line-height: 30px;
}

.menu li{
 list-style-type: none;
 margin-top:10px; 
 /* padding:20px; */
}

.submenu {
    height: 0; /*ul의 높이를 안보이게 처리*/
    overflow: hidden;
}

.menu>li:hover {
    background-color: #FFA629;
    transition-duration: 0.5s;
    /* margin:auto; */
   	/* padding: 5px; */
}

.menu>li:hover .submenu {
    height: 90px; /*서브메뉴 li한개의 높이 50*5*/
    transition-duration: 1s;
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

.d-flex{
	padding:5px;
}
</style>
<script type="text/javascript"
    src="${ pageContext.servletContext.contextPath }/resources/js/jquery-3.6.3.min.js">
</script>
<script type="text/javascript">
	function write_go() {
		//글쓰기로 이동하는 함수
		location.href = "/sup_insertForm.do";
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
	
  <div id="repWrapper" style="width: 1820px;">
	<!-- 사이드바 구역 -->
	<!-- <div class="sidebar">
    <ul class="sidebar-menu">
      <li class="all"><a href="#">전체글보기</a></li>
      <hr>
      <li class="share"><a href="#">회원관리</a></li>
      <ul>
      	<li><a href="#">└ 회원 정보</a></li>
      	<li><a href="#">└ 탈퇴 회원정보</a></li>
      </ul>
      <hr>
      <li class="recomm"><a href="#">게시글</a></li>
      <ul>
      	<li><a href="#">└ 공지사항</a></li>
      	<li><a href="#">└ FAQ</a></li>
      </ul>
      <hr>
      <li class="question"><a href="#">질문</a></li>
      <ul>
      	<li><a href="#">└ 1:1 문의</a></li>
      	<li><a href="#">└ 신고</a></li>
      </ul>
      <hr>
         <li class="question"><a href="#">오구닥터</a></li>
      <ul>
      	<li><a href="#">└ 오구닥터</a></li>
      </ul>
      <hr>
         <li class="question"><a href="/alledudisplay.do">교육관리</a></li>
      <ul>
      	<li><a href="">└ 필수 정보</a></li>
       <li><a href="">└ 양육 정보</a></li>
		<li><a href="">└ 훈련 정보</a></li>
      </ul>
      <hr>
         <li class="question"><a href="#">쇼핑관리</a></li>
      <ul>
      	<li><a href="#">└ 상품정보</a></li>
      </ul>
      <hr>
         <li class="question"><a href="#">커뮤니티</a></li>
      <ul>
      	<li><a href="#">└ 일상공유</a></li>
      	<li><a href="#">└ 추천탭</a></li>
      	<li><a href="#">└ 질문</a></li>
      </ul>
      기타 사이드바 메뉴 항목 추가
    </ul>
  </div>
   </div> -->
   <ul class="menu">
                        <a href="=" id="all_list"
                            class="list-group-item list-group-item-action py-3 lh-sm d-flex align-items-center"
                            aria-current="true"
                            style="height: 50px; background-color: #FFA629;">
                                <div class="d-flex w-100 justify-content-center">
                                    <strong class="mb-1">전체보기</strong>
                                </div>
                        </a>
                        <li><a href="" id="novel"
                            class="list-group-item list-group-item-action d-flex align-items-center"></a> 
                                <div class="d-flex w-100 justify-content-center">
                                    <strong class="mb-1">회원 관리</strong>
                                </div>
                       	<!-- 회원관리 -->
                          	<ul class="submenu">
                                <li><a href="">회원 정보</a></li>
                                <li><a href="">탈퇴 회원 정보</a></li>
                            </ul>
                             <li><a href="" id="novel"
                            class="list-group-item list-group-item-action d-flex align-items-center"></a>  
                                <div class="d-flex w-100 justify-content-center">
                                    <strong class="mb-1">게시글</strong>
                                </div>
                       	<!-- 게시글 -->
                          	<ul class="submenu">
                                <li><a href="">공지사항</a></li>
                                <li><a href="">FAQ</a></li>
                            </ul>
                             <li><a href="" id="novel"
                            class="list-group-item list-group-item-action d-flex align-items-center"></a>
                                <div class="d-flex w-100 justify-content-center">
                                    <strong class="mb-1">질문</strong>
                                </div>
                       	 <!-- 질문 -->
                          	<ul class="submenu">
                                <li><a href="">1:1 문의</a></li>
                                <li><a href="">신고</a></li>
                            </ul>
                             <li><a href="" id="novel"
                            class="list-group-item list-group-item-action d-flex align-items-center"></a>
                                <div class="d-flex w-100 justify-content-center">
                                    <strong class="mb-1">오구닥터</strong>
                                </div>
                       	 <!-- 오구닥터 -->
                          	<ul class="submenu">
                                <li><a href="">자가진단</a></li>
                                <li><a href="">질병 리스트</a></li>
                            </ul>
                             <li><a href="" id="novel"
                            class="list-group-item list-group-item-action d-flex align-items-center"></a>
                                <div class="d-flex w-100 justify-content-center">
                                    <strong class="mb-1">교육 관리</strong>
                                </div>
                       	 <!-- 교육 관리 -->
                          	<ul class="submenu">
                                <li><a href="">필수 정보</a></li>
                                <li><a href="">양육 정보</a></li>
                                <li><a href="">훈련 정보</a></li>
                            </ul>
                            <li><a href="" id="novel"
                            class="list-group-item list-group-item-action d-flex align-items-center"></a>
                                <div class="d-flex w-100 justify-content-center">
                                    <strong class="mb-1">쇼핑 관리</strong>
                                </div>
                       	 <!-- 쇼핑 관리 -->
                          	<ul class="submenu">
                                <li><a href="">상품 정보</a></li>
                            </ul>
                            <li><a href="" id="novel"
                            class="list-group-item list-group-item-action d-flex align-items-center"></a>
                                <div class="d-flex w-100 justify-content-center">
                                    <strong class="mb-1">커뮤니티</strong>
                                </div>
                       	 <!-- 커뮤니티 -->
                          	<ul class="submenu">
                                <li><a href="">일상 공유</a></li>
                                <li><a href="">추천 탭</a></li>
                                <li><a href="">질문</a></li>
                            </ul>
                        </li>
				</ul>
  <!-- 게시판 리스트 구역 -->
  <!-- 기본 첫 페이지는 전체글보기 -->
  <div>
		<p id="title">1:1 문의글 관리</p>
		<hr />
</div>
  <div class="report_list">
	<table class="table">
  <thead>
    <tr>
      <th scope="col">No.</th>
      <th scope="col">제목</th>
      <th scope="col">내용</th>
      <th scope="col">작성자</th>
      <th scope="col">작성 날짜</th>
      <th scpoe="col" style="width: 150px;">
     	 <button class="report_write">글쓰기</button>
   	 </th>
    </tr>
  </thead>
  <tbody>
     <c:choose>
					<c:when test="${empty report_list}">
						<tr>
							<td colspan="6"><h2 style="text-align: center;">자료가 존재하지 않습니다.</h2></td>
						</tr>
					</c:when>
					<c:otherwise>
						<c:forEach var="s" items="${report_list}" varStatus="vs">
							<tr>
								<td>${paging.totalRecord - ((paging.nowPage-1)*paging.numPerPage + vs.index)}</td>
								<c:choose>
									<c:when test="${s.status == 1 }">
									 <td style="color: gray"> 삭제된 게시물 입니다.</td>
									</c:when>
									<c:otherwise>
									<!-- 제목을 누르면 해당 게시글의 상세정보 페이지로 이동 -->
										<td><a href="/sup_onelist.do?rep_idx=${s.sup_idx}&cPage=${paging.nowPage}">${s.sup_title}</a></td>
									</c:otherwise>
								</c:choose>
								<td>${s.user_id }</td>
								<td>${s.sup_date.substring(0,10)}</td>
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
							href="/edu_list.do?cPage=${paging.beginBlock-paging.pagePerBlock }">이전으로</a></li>
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
						<li><a href="/edu_list.do??cPage=${k}">${k}</a></li>
					</c:if>
				</c:forEach>

				<!-- 이후 버튼 -->
				<c:choose>
					<c:when test="${paging.endBlock >= paging.totalPage }">
						<li class="disable">다음으로</li>
					</c:when>
					<c:otherwise>
						<li><a
							href="/edu_list.do?cPage=${paging.beginBlock+paging.pagePerBlock }">다음으로</a></li>
					</c:otherwise>
				</c:choose>
			</ol>
		</td>
	</tr>
</tfoot>
</table>
  </div>
<%--검색 항목--%>
		<center>
            <div id='liSearchOption'>
            	<form action="qnasearch.do?page=1" method="post">
            	<!-- 공지사항은 사용자가 글 쓰는건 없어도 될듯 => 글 확인만 가능!-->
            	<!-- <input type="button" value="글쓰기" style="float: right;" onclick="write_go()"> -->
                <div>
                    <select name="searchtype" >
                        <option value="qname">제목</option>
                        <option value="qcontent">내용</option>
                        <option value="qid">작성자</option>                        
                    </select>
                    <input type="search" name="keyword">
                    <input type="submit" value="검색">
                </div>
                </form>
                </div> 
   </div>
   <br>
</center>
<footer>
		<jsp:include page="/WEB-INF/views/home/home_bottom.jsp" />
	</footer>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" ></script>
</body>

</html>