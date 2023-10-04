<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>rep_write</title>
<link rel="stylesheet" href="resources/css/summernote-lite.css">
<script src="//cdn.ckeditor.com/4.7.3/standard/ckeditor.js"></script>
<script type="text/javascript">

</script>
<style type="text/css">
/* 등록 | 뒤로가기 버튼은 가운데 정렬 */
.button{
	text-align: center;
}

#repWrapper{
        text-align: center;
        padding:10px;
        margin:auto;
        font-family: 'Noto Sans KR', sans-serif;
    }
#repWrapper > ul > li:first-child {
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

#rep_write table{
	width:1200px;
	margin:0 auto;
	margin-top:100px;
	border:1px solid black;
	border-collapse:collapse;
	font-size:20px;
}

#rep_write table th{
	background-color: #FFA629;
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
.not_content{
	width: 100%;
	float:right;
	margin-left: -215px;          
    padding-left: 215px;          
    box-sizing: border-box;
    
}
</style>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Bagel+Fat+One&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
<script type="text/javascript">
	function list_go(f) {
		f.action="/rep_list.do";
		f.submit();
	}
	function save_go(f) {
		if(f.rep_title.value.length <=0){
			alert("제목을 입력하세요");
			f.rep_title.focus();
			return;
		}
		if(f.rep_content.value.length <=0){
			alert("내용을 입력하세요");
			f.rep_content.focus();
			return;
		}
		
		alert("성공");
		f.action="/rep_insert.do";
		f.submit();
	}
	
	// 
</script>

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
      <li class="notice"><a href="/sup_list.do">공지사항</a></li>
      <hr>
      <li class="faq"><a href="/faq_list.do">자주 묻는 질문</a></li>
      <hr>
      <li class="qna" ><a href="/userqna_list.do">1:1 문의</a></li>
      <hr>
      <li class="report" style="font-weight: bold;"><a href="/rep_list.do">신고</a></li>
     </ul>
  </div>      
  
	<!-- 게시판 글쓰기 구역 -->
	<div>
		<p id="title">신고하기</p>
	</div>
	
	<div id="rep_write">
		<form  method="post" enctype="multipart/form-data">
			<table width="1200px;"  border="1px solid" cellpadding="0"
				cellspacing="0">
				<tr height="50">
					<th>신고 제목</th>
					<td style="padding: 8px; text-align: left;">
						<input name="rep_title" type="text" style="width: 90%; height: 30px; font-size: 20px;" value="[신고] "/>
					</td>
				</tr>
				<tr height="50">
					<th>신고자 이름</th>
					<td style="padding: 8px; text-align: left;"><input name="user_id" style="width: 90%; height: 30px;"
						value="${ sessionScope.user_id }" readonly /></td>
				</tr>
				<tr>
					<th>내용</th>
					<td style="padding: 8px; text-align: left;">
						<textarea id="rep_content" name="rep_content"style="width: 90%; height: 200px; font-size: 20px;">[신고 대상 아이디] :
[신고 사유] :</textarea>
					</td>
				</tr>
				<tr height="50">
					<th>첨부파일</th>
					<td style="padding: 8px; text-align: left;"><input name="file" type="file" style="font-size: 20px;"/></td>
				</tr>
				<tr height="50">
					<td class="button" colspan="2" align="center">
						<input type="submit" value="저장" style="font-size: 20px;" onclick="save_go(this.form)">
						<input type="button" value="목록" style="font-size: 20px;"
						onclick="list_go(this.form)">
					</td>						
				</tr>
			</table>
		</form>
	</div>
	<br>
	</div>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" crossorigin="anonymous"></script>
    	<script src="resources/js/summernote-lite.js"></script>
    	<script src="resources/js/lang/summernote-ko-KR.js"></script>
    	<script type="text/javascript">
    	$(function(){
    		$('#not_content').summernote({
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
    	});
    	function sendImage(file, editor) {
			var frm = new FormData();
			frm.append("s_file",file);
			$.ajax({
				url : "/saveImage.do",
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
</body>
</html>