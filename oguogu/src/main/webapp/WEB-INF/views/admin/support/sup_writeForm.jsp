<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 오구오구 공지사항 </title>
<link rel="stylesheet" href="resources/css/summernote-lite.css">
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
input{border-radius:20px;}
table{ width:1200px;  text-align: center;  border-radius:20px; color:black; }

td{border: 3px solid orange; padding: 3px ; text-align:lrft;  border-radius:20px;}
input[type=reset] { border:1px solid white; background-color: #FFA629;font:20px ;  color:white; border-radius:20px; height: 60px; width: 60px;    font-weight: bold;}
  input[type=button] { border:1px solid white; background-color: #FFA629;font:200px ; color:white; border-radius:20px;  height: 60px; width: 60px;   font-weight: bold;}
  input[type=file] { border:1px solid white; background-color: #FFA629;font:200px ; color:white;   }
  
 input[type="radio"], span {
  vertical-align: middle;
}

input[type="radio"] {
  appearance: none;
  border: max(2px, 0.1em) solid gray;
  border-radius: 50%;
  width: 1.25em;
  height: 1.25em;
  transition: border 0.5s ease-in-out;
}

[type="radio"]:checked {
  border: 0.4em solid #FFA629;
}

[type="radio"]:focus-visible {
  outline-offset: max(2px, 0.1em);
  outline: max(2px, 0.1em) dotted tomato;
}

[type="radio"]:hover {
  box-shadow: 0 0 0 max(4px, 0.2em) lightgray;
  cursor: pointer;
}

[type="radio"]:hover + span {
  cursor: pointer;
}

[type="radio"]:disabled {
  background-color: lightgray;
  box-shadow: none;
  opacity: 0.7;
  cursor: not-allowed;
}

[type="radio"]:disabled + span {
  opacity: 0.7;
  cursor: not-allowed;
}

/* Global CSS */
fieldset {
  display: flex;
  justify-content: center;
  border: none;
  margin: 0;
  padding: 40px 20px;
}

*,
*::before,
*::after {
  box-sizing: border-box;
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
	.note-toolbar{width: auto; }



</style>

<script type="text/javascript">
function save_go(f) {
	if(f.not_title.value.trim().length <=0){
		alert("공지사항 제목을 입력하세요.");
		f.not_title.focus();
		return;
	}

	if(f.not_content.toString().trim().length <=0){
		alert("내용을 입력하세요.");
		f.not_content.focus();
		return;
	}
	if(f.not_ing.value.trim().length <=0){
		alert("공개여부를 선택하세요.");
		f.not_ing.focus();
		return;
	}	
		
		alert("공지사항이 등록되었습니다.");
		f.action="/sup_insert.do";
		f.submit();	
	
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
  
	<div>
		<p id="title">오구오구 공지사항</p>
		<hr style="border-width:2px 0 0 0; border-style:dotted; border-color:#FFA629; width:80%; margin-bottom: 30px;" >
		 
		<p align="center"><a id="link" href="/ad_sup_list.do">공지사항 전체보기</a></p>
			<form method="post" enctype="multipart/form-data">
			<table>
			<tr align="center" >
					<td bgcolor="FFA629" style="color: white;font-weight: bold;" >등록자</td>
					<td><input type="text" name="admin_nickname" size ="80" value="${nickname}" style="border-radius:20px;" readonly/></td>				
				</tr>
				<tr align="center" >
					<td bgcolor="FFA629" >제목</td>
					<td><input type="text" name="not_title" size ="20" style="border-radius:20px;"/></td>
				</tr>
			
				<tr align="center">
					<td colspan="2">
						<textarea rows="10" cols="60" name="not_content" id="content"style="border-radius:20px;" ></textarea>
					</td>
				</tr>
				<tr align="left">
					<td bgcolor="FFA629" align="center">첨부파일</td>
					<td><input type="file" name="file" style="border-radius:20px;"/></td>
				</tr>
				<tfoot>
					<tr align="center">
						<td colspan="4">
   			 			<input type="radio" name="not_ing" value="0" class="radio" /><span class="ml_10">공개</span>&nbsp;&nbsp;&nbsp;&nbsp;
   					 	<input type="radio" name="not_ing" value="1" class="radio" /><span class="ml_10">비공개</span>&nbsp;	
   					 	<hr>
							<input type="button"  class="button" value="저장" onclick="save_go(this.form)" />
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<input type="reset" class="button" value="취소" />
							
						</td>
					</tr>
				</tfoot>
			</table>
		</form>
		
	</div>
		<script src="https://code.jquery.com/jquery-3.6.0.min.js" crossorigin="anonymous"></script>
		<script src="resources/js/summernote-lite.js"></script>
    	<script src="resources/js/lang/summernote-ko-KR.js"></script>
    	<script type="text/javascript">
    	$(function(){
    		$('#content').summernote({
    			lang : 'ko-KR',
    			height : 300,
    			focus : true,
    			callbacks : {
    				onImageUpload :  function(files, editor){
    					for (var i = 0; i < files.length; i++) {
							sendImage(files[i], editor);
						}
    				}
    			}
			});
    		$("#content").summernote("lineHeight",.7);
    	});
    	function sendImage(file, editor) {
			var frm = new FormData();
			frm.append("s_file",file);
			$.ajax({
				url : "/saveImg.do",
				data : frm,
				type : "post",
				contentType : false,
				processData : false,
				dataType : "json",
			}).done(function(data) {
				var path = data.path;
				var fname = data.fname;
				$("#content").summernote("editor.insertImage",path+"/"+fname);
			});
		}
    	
    	</script>
	
<footer>
		<jsp:include page="/WEB-INF/views/home/home_bottom.jsp" />
	</footer>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" ></script>
</body>
</html>