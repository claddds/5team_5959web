<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html lang="en">
<meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>오구오구 상품관리</title>
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



.table{
	width:90%;
	margin-left : 100px;
	margin-top: 20px;
}
.table > th {
background-color :#FFA629;
border-radius: 10px;
}
#sup_list {
	display: flex;
	padding-bottom: 15px;
	border-bottom: 1px solid #bcc;
	padding-top: 15px;
}

    #liSearchOption {clear:both; text-align: center; }
    #liSearchOption > div {
    text-align: center;
        margin: auto; 
        margin-top: 30px; 
        width:auto; 
        height:100px;

}


/* paging */
.paging{

text-align: center;}

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
    margin-top: 60px; 
	border-radius: 10px;
	
}
</style>
<script type="text/javascript"
	 src="${ pageContext.servletContext.contextPath }/resources/js/jquery-3.6.3.min.js">
</script>
<script type="text/javascript">
	function write_go() {
		location.href = "/food_write.do";
	}
	function search_go() {
	    var keyword = document.search.keyword.value;
	    if (keyword === "") {
	        alert('검색어를 입력하세요');
	        document.search.keyword.focus();
	    } else {
	        // 검색어를 포함한 URL 생성
	        var searchUrl = "/food_search.do?keyword=" + encodeURIComponent(keyword);
	        // 생성한 URL로 이동
	        location.href = searchUrl;
	    }
	    return false;
	}
	
	function validateSearch() {
	    var keyword = document.search.keyword.value;
	    if (keyword === "") {
	        alert('검색어를 입력하세요');
	        document.search.keyword.focus();
	        return false; // 검색 중지
	    }
	    return true; // 검색 진행
	}
</script>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
</head>
<body style="width: 100%;">
	<!-- 헤더 구역 -->
	<header style="width: 100%;">
		<jsp:include page="/WEB-INF/views/home/home_top.jsp" />
	</header>
<jsp:include page="/WEB-INF/views/adminhome/sidebar.jsp" />	
<div id="repWrapper" >
  <!-- 게시판 리스트 구역 -->
  <div style="border-bottom: 1px solid #bcc;">
	<p id="title">상품관리</p>
	</div>
	<hr/>
  <div id="sup_list" style="margin-right: 20px;">
	<table class="table">
  <thead>
    <tr>
      <th scope="col">No.</th>
      <th scope="col">상품 분류</th>
      <th scope="col">동물 분류</th>
      <th scope="col">연령 분류</th>
      <th scope="col">상품명</th>
      <th scope="col">제조사</th>
      <th scope="col">이미지</th>
      <th scope="col">상품가격</th>
      <th scope="col">등록자</th>
      <th scope="col">등록일</th>
      <th scope="col">게시 여부</th>
    </tr>
  </thead>
  <tbody>
   <c:choose>
	<c:when test="${empty ad_flist}">
						<tr>
							<td colspan="11"><h2>등록된 상품이 없습니다.</h2></td>
						</tr>
					</c:when>
					<c:otherwise>
						<c:forEach var="fd" items="${ad_flist}"  varStatus="vs">
							<tr>
								<td>${fd.fd_idx}</td>
								
								<td>${fd.fd_type}</td>
								<td>${fd.fd_pet_type}</td>
								<td>${fd.fd_age_group}</td>
								<td><a id="atitle" href="/ad_food_onelist.do?fd_idx=${fd.fd_idx}&cPage=${paging.nowPage}">${fd.fd_name}</a></td>
								<td>${fd.fd_company}</td>	
								<td><img src="/resources/images/food/${fd.fd_fname }" width="100"></td>
								
								 <td><fmt:formatNumber value="${fd.fd_price}" pattern="#,##0"/>원</td>
								<td>${fd.admin_nickname}</td>
								<td>${fd.fd_date.substring(0,10)}</td>
								<c:if test="${fd.fd_open == 0}">
								<td ${fd.fd_open} > 게시</td>		
								</c:if>
								<c:if test="${fd.fd_open == 1}">
								<td ${fd.fd_open} > 미게시</td>		
								</c:if>
							
							</tr>
						</c:forEach>
					</c:otherwise>
				</c:choose>
				
  </tbody>
 <tfoot>
<!-- 페이징  기법 -->
	<tr>
		<td colspan="7">
			<ol class="paging"> 
				<!-- 이전 버튼 -->
				<c:choose>
					<c:when test="${paging.beginBlock <= paging.pagePerBlock }">
						<li class="disable"><<</li>
					</c:when>
					<c:otherwise>
						<li><a
							href="/ad_food_list.do?cPage=${paging.beginBlock-paging.pagePerBlock }"><<</a></li>
					</c:otherwise>
				</c:choose>
				<!-- 페이지번호들 -->
				<c:forEach begin="${paging.beginBlock }" end="${paging.endBlock }" step="1" var="k">
					<!--  현재 페이지는 링크 X, 나머지 페이지는 해당 페이지로 이동하게 링크 처리 -->
					<c:if test="${ k == paging.nowPage}">
						<li class="now">${k}</li>
					</c:if>
					<c:if test="${ k != paging.nowPage}">
						<li><a href="/ad_food_list.do?cPage=${k}">${k}</a></li>
					</c:if>
				</c:forEach>

				<!-- 이후 버튼 -->
				<c:choose>
					<c:when test="${paging.endBlock >= paging.totalPage }">
						<li class="disable">>></li>
					</c:when>
					<c:otherwise>
						<li><a
							href="/ad_food_list.do?cPage=${paging.beginBlock+paging.pagePerBlock }">>></a></li>
					</c:otherwise>
				</c:choose>
			</ol>
		</td>
		<td>
		<input type="button" class="button" value="상품등록" onclick=" write_go()">
		</td>
	</tr>
	
</tfoot>
</table>
 </div>
<!--검색 항목-->
	<div id='liSearchOption' style="margin: auto;">
            	<form name="search" action="/food_search.do" method="get"  onsubmit="return validateSearch()"> 
                <div>
                      <select name="searchtype"  >
                        <option value="fd_name">상품명</option>
                        <option value="fd_company">제조사</option>
                        <option value="fd_date">날짜</option>
                        <option value="admin_nickname">등록자</option>                        
                    </select>
                    <input type="search" name="keyword">
                    <input type="submit" class="button" value="검색">
               </div>
                </form>
	</div>
</div>
<footer>
		<jsp:include page="/WEB-INF/views/home/home_bottom.jsp" />
	</footer>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" ></script>
</body>
</html>