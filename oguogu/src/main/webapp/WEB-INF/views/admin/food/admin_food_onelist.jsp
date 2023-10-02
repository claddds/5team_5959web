<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 오구오구 상품관리 </title>
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
table{ width:1200px;  text-align: center;  border-radius:20px; color:black; }

td{border: 3px solid orange; padding: 3px ; text-align:lrft;  border-radius:20px;}
	
input[type=reset] { border:1px solid white; background-color: #FFA629; font:20px ;  color:white; border-radius:20px; font-weight: bold; }
  input[type=button] { border:2px solid white; background-color: #FFA629; font:200px ; color:white; border-radius:20px;  height: 60px; width: 60px; font-weight: bold;}
  input[type=file] { border:1px solid white; background-color: #FFA629; font:200px ; color:white;   }
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

/* 목록이동 버튼*/
#link{
	margin-right:300px;	
   text-decoration: none;
   background-color: white;
   text-align: center;
   color: white;
   font-weight: bold;
   text-shadow: 1px 1px 2px #D1D1D1;
   border: 2px solid;
   padding: 10px;
   border-radius:20px;
}
#link:link { color: #FFA629;  font-weight: bold;} /* 기본 상태 */
#link:visited { color: tomato;  font-weight: bold;} /* 사용자가 이미 링크 방문한 상태라면 갈색으로*/
#link:hover { color: #FFA629;  font-weight: bold;} /* 마우스 올려져 있을때 coral색으로 */
#link:active { color: khaki;  font-weight: bold;} /* 마우스로 클릭할떄 khaki색으로 변경 */

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
.button:hover {
    cursor: pointer;
}


	.note-btn-group{width: auto;}
	.note-toolbar{width: auto;}
</style>
<script type="text/javascript">
	function edit_go(f) {
		f.action="/food_UpdateForm.do";
		f.submit();
	}
	function delete_go(f) {
	    if (confirm("상품 정보를 삭제하시겠습니까?")) {
	        f.action = "/food_delete.do";
	        f.submit();
	    }
	}
</script>
</head>
<body>
<!-- 헤더 구역 -->
	<header>
		<jsp:include page="/WEB-INF/views/home/home_top.jsp" />
	</header>
		
<div id="repWrapper" style="width: 1920px;">
		
<!-- 사이드바 구역 -->
 <div class="sidebar" >
     <ul class="menu">
			<li><a href="" id="novel"
				class="list-group-item list-group-item-action d-flex align-items-center"></a>
				<div class="d-flex w-100 justify-content-center">
					<strong class="mb-1">회원 관리</strong>
				</div> <!-- 회원관리 -->
				<ul class="submenu">
					<li><a href="/admin_user.do">회원 목록</a></li>
					<li><a href="/admin_del_user.do">탈퇴 회원 목록</a></li>
				</ul>
			<li><a href="" id="novel"
				class="list-group-item list-group-item-action d-flex align-items-center"></a>
				<div class="d-flex w-100 justify-content-center">
					<strong class="mb-1">게시글</strong>
				</div> <!-- 게시글 -->
				<ul class="submenu">
					<li><a href="/ad_food_onelist.do">공지사항</a></li>
					<li><a href="/ad_faq_list.do">FAQ</a></li>
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
	<div>
		<p id="title">${ad_f_vo.fd_name }</p>
		<hr style="border-width:2px 0 0 0; border-style:dotted; border-color:#FFA629; width:80%; margin-bottom: 30px;" >
		<p align="center"><a id="link" href="/ad_food_list.do">상품목록 전체보기</a></p>
		
		 <!-- 파일 첨부하려면  -->
			<form method="post" enctype="multipart/form-data">
			<table>
			<tr align="center">
					<td bgcolor="FFA629" width="150px" style="background-color: #FFA629; border-radius:20px; color: white;font-weight: bold;">상품 분류</td>
					<td>${ad_f_vo.fd_type }</td>
				</tr>
				<tr align="center">
					<td bgcolor="FFA629" width="150px" style="background-color: #FFA629; border-radius:20px; color: white;font-weight: bold;">동물 분류</td>
					<td>${ad_f_vo.fd_pet_type }</td>
				</tr>
				<tr align="center">
					<td bgcolor="FFA629" width="150px" style="background-color: #FFA629; border-radius:20px; color: white;font-weight: bold;">연령 분류</td>
					<td>${ad_f_vo.fd_age_group }</td>
				</tr>				
				<tr align="center">
					<td bgcolor="FFA629" width="150px" style="background-color: #FFA629; border-radius:20px; color: white;font-weight: bold;">등록자</td>
					<td>${ad_f_vo.admin_nickname }</td>
				</tr>
				<tr align="center">
					<td bgcolor="FFA629" width="150px" style="background-color: #FFA629; border-radius:20px; color: white;font-weight: bold;">상품명</td>
					<td>${ad_f_vo.fd_name }</td>
					</tr>
				<tr align="center">	
					<td bgcolor="FFA629"width="150px" style="background-color: #FFA629; border-radius:20px; color: white;font-weight: bold;">제조회사</td>
					<td>${ad_f_vo.fd_company }</td>
				</tr>
				<tr align="center" >
					<td bgcolor="FFA629" width="150px" style="background-color: #FFA629; border-radius:20px; color: white;font-weight: bold;">상품가격</td>
				
					<td width="50%"> <fmt:formatNumber value="${ad_f_vo.fd_price}" pattern="#,##0" />원
				</tr>
				<tr align="center" >
					<td bgcolor="FFA629" height="60px" width="150px" style="background-color: #FFA629; border-radius:20px; color: white;font-weight: bold;">구매링크</td>
				<td><a id="link" target="_blank" href="${ad_f_vo.fd_link}">바로 구매하기</a></td>
				</tr>
				<tr align="center">
					<td bgcolor="FFA629" width="150px" style="background-color: #FFA629; border-radius:20px; color: white;font-weight: bold;">상품설명</td>
					<td>${ad_f_vo.fd_info}</td>
				</tr>
				<tr align="center">
					<td bgcolor="FFA629" width="150px" style="background-color: #FFA629; border-radius:20px; color: white;font-weight: bold;">상품 이미지</td>
					<c:choose>
						<c:when test="${empty ad_f_vo.fd_fname }">
							<td><b>상품이미지 없음</b></td>
						</c:when>
						<c:otherwise>
							<td>
								<a href="/guestbook2_down.do?f_name=${ad_f_vo.fd_fname}">
									<img src="resources/images/${ad_f_vo.fd_fname}" style="width: 150px;">
								</a> 	
							</td>
						</c:otherwise>
					</c:choose>
				</tr>
				<tfoot>
					<tr align="center">
						<td colspan="2">
							<input type="hidden" name="fd_idx" value="${ad_f_vo.fd_idx}">
							
							<input type="button" class="button" value="수정" onclick="edit_go(this.form)" />
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<input type="hidden" name="fd_name" value="${ad_f_vo.fd_name}">
							<input type="button" class="button" value="삭제" onclick="delete_go(this.form)" />
						</td>
					</tr>
				</tfoot>
			</table>
		</form>
	</div>
	</div>
<footer>
		<jsp:include page="/WEB-INF/views/home/home_bottom.jsp" />
	</footer>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" ></script>
</body>

</html>