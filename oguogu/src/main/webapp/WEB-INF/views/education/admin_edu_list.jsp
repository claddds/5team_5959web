<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html lang="en">
<meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>교육정보</title>
    <!-- 신고 게시판 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
<style type="text/css">
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
        margin:0 auto; 
        margin-top: 30px; 
        width:auto; 
        height:100px;

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
<%--
.pagination{
	justify-content: center;
	margin:auto;
}
--%>
footer{
		width:1920px;
		display:flex;
		margin:auto;
		margin-top:20px;
		margin-bottom: 20px;
	}
</style>

<script type="text/javascript"
	 src="${ pageContext.servletContext.contextPath }/resources/js/jquery-3.6.3.min.js">
</script>
<script type="text/javascript">
	function write_go() {
		location.href = "/edu_write.do";
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

<div id="repWrapper" style="width: 1920px;">
	<!-- 사이드바 구역 -->
 <div class="sidebar">
      <ul class="sidebar-menu">
      <li class="Alist"><a href="/edu_Alist.do">필수정보</a></li>
      <hr>
      <li class="blist"><a href="/edu_blist.do">양육정보</a></li>
      <hr>
      <li class="clist"><a href="/edu_clist.do">훈련정보</a></li>
     </ul>
  </div>    
  <!-- 게시판 리스트 구역 -->
  <div>
	<p id="title">교육정보</p>
	</div>
  <div class="edu_list">
	<table class="table">
  <thead>
    <tr>
      <th scope="col">No.</th>
      <th scope="col">제목</th>
      <th scope="col">작성자</th>
      <th scope="col">작성 날짜</th>
    </tr>
  </thead>
  <tbody>
   <c:choose>
					<c:when test="${empty elist}">
						<tr>
							<td colspan="5"><h2 style="text-align: center;">자료가 존재하지 않습니다.</h2></td>
						</tr>
					</c:when>
					<c:otherwise>
						<c:forEach var="e" items="${elist}" varStatus="vs">
							<tr>
								<td>${paging.totalRecord - ((paging.nowPage-1)*paging.numPerPage + vs.index)}</td>
								<c:choose>
									<c:when test="${e.status == 1 }">
									 <td style="color: gray"> 삭제된 게시물 입니다.</td>
									</c:when>
									<c:otherwise>
									<!-- 제목을 누르면 해당 게시글의 상세정보 페이지로 이동 -->
										<td><a href="/edu_onelist.do?edu_idx=${e.edu_idx}&cPage=${paging.nowPage}">${e.edu_title}</a></td>
									</c:otherwise>
								</c:choose>
								<td>${e.admin_nikname }</td>
								<td>${e.eu_date.substring(0,10)}</td>
							</tr>
						</c:forEach>
					</c:otherwise>
				</c:choose>
  </tbody>
</table>
<!-- 페이지네이션 -->
<!-- 
<div>
	<nav aria-label="Page navigation">
		<ul class="pagination" style=" justify-content: center;">
			<li class="page-item"><a class="page-link" href="#"
				aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
			</a></li>
			<li class="page-item"><a class="page-link" href="#">1</a></li>
			<li class="page-item"><a class="page-link" href="#">2</a></li>
			<li class="page-item"><a class="page-link" href="#">3</a></li>
			<li class="page-item"><a class="page-link" href="#"
				aria-label="Next"> <span aria-hidden="true">&raquo;</span>
			</a></li>
		</ul>
	</nav>
	</div>

 -->
 
<%--검색 항목--%>
	<div>
		<center>
            <li id='liSearchOption'>
            	<form action="qnasearch.do?page=1" method="post">
                 <input type="button" value="글쓰기" style="float: right;" onclick="write_go()">
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