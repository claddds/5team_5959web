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
table{ margin:auto; width:1400px;  text-align: center;  border-radius:20px; color:black; }
table > td {border: 3px solid orange; padding: 3px ; text-align:left;  border-radius:20px;}
	
input[type=reset] { border:1px solid white; background-color: #FFA629; font:20px ;  color:white; border-radius:20px; font-weight: bold; }
  input[type=button] { border:2px solid white; background-color: #FFA629; font:200px ; color:white; border-radius:20px;  height: 60px; width: 60px; font-weight: bold;}
  input[type=file] { border:1px solid white; background-color: #FFA629; font:200px ; color:white;   }


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

footer{
		width:1920px;
		display:flex;
		margin:auto;
		margin-top:1000px;
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
<body style="width: 100%;">
	<!-- 헤더 구역 -->
	<header style="width: 100%;">
		<jsp:include page="/WEB-INF/views/home/home_top.jsp" />
	</header>
<jsp:include page="/WEB-INF/views/adminhome/sidebar.jsp" />	
<div id="repWrapper">
	<div>
		<p id="title">${ad_f_vo.fd_name }</p>
		<hr style="border-width:2px 0 0 0; border-style:dotted; border-color:#FFA629; width:80%; margin-bottom: 30px;" >
		<p align="center"><a id="link" href="/ad_food_list.do">상품목록 전체보기</a></p>
		
		 <!-- 파일 첨부하려면  -->
			<form method="post" enctype="multipart/form-data">
		<table style="margin: auto;">
			<tr align="center">
					<td style="border-radius:20px; border: 3px solid orange; ">상품 분류</td>
					<td align="left" style="border-radius:20px; border: 3px solid orange; ">${ad_f_vo.fd_type }</td>
				</tr>
				<tr align="center">
					<td  style="border-radius:20px; border: 3px solid orange; ">동물 분류</td>
					<td align="left" style="border-radius:20px; border: 3px solid orange; ">${ad_f_vo.fd_pet_type }</td>
				</tr>
				<tr align="center">
					<td style="border-radius:20px; border: 3px solid orange; ">연령 분류</td>
					<td align="left" style="border-radius:20px; border: 3px solid orange; ">${ad_f_vo.fd_age_group }</td>
				</tr>				
				<tr align="center">
					<td  style="border-radius:20px; border: 3px solid orange; ">등록자</td>
					<td align="left" style="border-radius:20px; border: 3px solid orange; ">${ad_f_vo.admin_nickname }</td>
				</tr>
				<tr align="center">
					<td style="border-radius:20px; border: 3px solid orange; ">상품명</td>
					<td align="left" style="border-radius:20px; border: 3px solid orange; ">${ad_f_vo.fd_name }</td>
					</tr>
				<tr align="center">	
					<td style="border-radius:20px; border: 3px solid orange; ">제조회사</td>
					<td align="left" style="border-radius:20px; border: 3px solid orange; ">${ad_f_vo.fd_company }</td>
				</tr>
				<tr align="center" >
					<td style="border-radius:20px; border: 3px solid orange; ">상품가격</td>
				
					<td width="50%" align="left" style="border-radius:20px; border: 3px solid orange; "> <fmt:formatNumber value="${ad_f_vo.fd_price}" pattern="#,##0" />원
				</tr>
				<tr align="center" >
					<td height="60px"style="border-radius:20px; border: 3px solid orange; ">구매링크</td>
				<td align="left" style="border-radius:20px; border: 3px solid orange; " ><a id="link" target="_blank" href="${ad_f_vo.fd_link}">바로 구매하기</a></td>
				</tr>
				<tr align="center">
					<td style="border-radius:20px; border: 3px solid orange; ">상품설명</td>
					<td align="left" style="border-radius:20px; border: 3px solid orange; ">${ad_f_vo.fd_info}</td>
				</tr>
				<tr align="center">
					<td style="border-radius:20px; border: 3px solid orange; ">상품 이미지</td>
					<c:choose>
						<c:when test="${empty ad_f_vo.fd_fname }">
							<td align="left" style="border-radius:20px; border: 3px solid orange; "><b>상품이미지 없음</b></td>
						</c:when>
						<c:otherwise>
							<td align="left" style="border-radius:20px; border: 3px solid orange; ">
								<a href="/guestbook2_down.do?f_name=${ad_f_vo.fd_fname}">
									<img src="resources/images/${ad_f_vo.fd_fname}" style="width: 150px;">
								</a> 	
							</td>
						</c:otherwise>
					</c:choose>
				</tr>
				<tfoot>
					<tr align="center">
						<td colspan="2" style="margin: auto; border-radius:20px; border: 3px solid orange; ">
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