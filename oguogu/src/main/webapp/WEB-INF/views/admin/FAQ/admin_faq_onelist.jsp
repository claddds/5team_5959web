<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 오구오구 FAQ </title>
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
table > td {border: 3px solid orange; padding: 3px ; text-align:lrft;  border-radius:20px;}
	
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
		f.action="/faq_UpdateForm.do";
		f.submit();
	}
	function delete_go(f){
	 if (confirm("FAQ를 삭제하시겠습니까?")) {
		f.action="/faq_delete.do";
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
	<p id="title">${faq_vo.faq_title }</p>
	<hr style="border-width:2px 0 0 0; border-style:dotted; border-color:#FFA629; width:80%; margin-bottom: 30px;" >
		<p align="center"><a id="link" href="/ad_faq_list.do">FAQ 전체보기</a></p>
		 <!-- 파일 첨부하려면  -->
			<form method="post" enctype="multipart/form-data">
			<table style="margin: auto;">
			<tr align="center">
					<td bgcolor="FFA629" width="150px" style="background-color: #FFA629; border: 3px solid white; color: white;font-weight: bold;">제 목</td>
					<td align="left" style="border-radius:20px; border: 3px solid orange; ">${faq_vo.faq_title }</td>
				</tr>
				<tr align="center">
					<td bgcolor="FFA629" width="150px" style="background-color: #FFA629; border: 3px solid white; color: white;font-weight: bold;">작성자</td>
					<td align="left" style="border-radius:20px; border: 3px solid orange; ">${faq_vo.admin_nickname }</td>
				</tr>
				<tr align="center">
					<td bgcolor="FFA629" width="150px" style="background-color: #FFA629; border: 3px solid white; color: white;font-weight: bold;">내용</td>
					<td align="left" style="border-radius:20px; border: 3px solid orange; ">${faq_vo.faq_content }</td>
				</tr>			

				<tr align="center">
					<td bgcolor="FFA629" width="150px" style="background-color: #FFA629; border: 3px solid white; color: white;font-weight: bold;">첨부파일</td>
					<c:choose>
						<c:when test="${empty faq_vo.faq_fname }">
							<td align="left" style="border-radius:20px; border: 3px solid orange; "><b>첨부 파일 없음</b></td>
						</c:when>
						<c:otherwise>
							<td align="left" style="border-radius:20px; border: 3px solid orange; ">
								<a href="/guestbook2_down.do?f_name=${faq_vo.faq_fname}">
									<img src="resources/images/${faq_vo.faq_fname}" style="width: 150px;">
								</a> 	
							</td>
						</c:otherwise>
					</c:choose>
				</tr>
				<tfoot>
					<tr align="center">
						<td colspan="2" style="margin: auto; border-radius:20px; border: 3px solid orange; ">
							<input type="hidden" name="faq_idx" value="${faq_vo.faq_idx}">
							<input type="button" class="button" value="수정" onclick="edit_go(this.form)" />
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<input type="hidden" name="faq_title" value="${faq_vo.faq_title}">
							<input type="button" class="button" value="삭제" onclick="delete_go(this.form)" />
						</td>
					</tr>
				</tfoot>
			</table>
		</form>
	</div>
<footer>
		<jsp:include page="/WEB-INF/views/home/home_bottom.jsp" />
	</footer>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" ></script>
</body>

</html>