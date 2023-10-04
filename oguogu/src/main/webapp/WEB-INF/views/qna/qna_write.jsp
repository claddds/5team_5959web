<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>qna_write</title>
<link rel="stylesheet" href="resources/css/summernote-lite.css">
<script src="//cdn.ckeditor.com/4.7.3/standard/ckeditor.js"></script>
<script type="text/javascript">

</script>
<style type="text/css">
.button{
	text-align: center;
}

#qnaWrapper{
        text-align: center;
        padding:10px;
        margin:auto;
        font-family: 'Noto Sans KR', sans-serif;
    }
#qnaWrapper > ul > li:first-child {
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

#qna_write table{
	width:1200px;
	margin:0 auto;
	margin-top:100px;
	border:1px solid black;
	border-collapse:collapse;
	font-size:20px;
}

#qna_write table th{
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
<script type="text/javascript"
	src="${ pageContext.servletContext.contextPath }/resources/js/jquery-3.6.3.min.js"></script>

<script type="text/javascript">
function list_go(){
	location.href="userqna_list.do";
}
	function save_go(f) {
		if(f.one_title.value.trim().length <=0){
			alert("제목을 입력하세요");
			f.one_title.focus();
			return;
		}
		if(f.one_content.value.trim().length <=0){
			alert("내용을 입력하세요");
			f.one_content.focus();
			return;
		}
		<%--
		var checkbox = document.getElementById("chkbox");
		// 체크박스 체크 시
		if(checkbox.checked){
			// 값 1을 hidden 필드에 설정한다.
			document.getElementById("lock_flag").value="1";
		}else{
			// 체크 해제 시
			document.getElementById("lock_flag").value="0";
		}
		
		--%>
		alert("성공");
		f.action="/qna_insert.do";
		f.submit();
	}
</script>
</head>
<body>
		<!-- 헤더 구역 -->
		<header>
			<jsp:include page="../home/home_top.jsp" />
		</header>
		
	<div id="qnaWrapper" style="width: 1920px;">
	
	<!-- 사이드바 구역 -->      
 <div class="sidebar">
   <ul class="sidebar-menu">
      <li class="notice"><a href="/sup_list.do">공지사항</a></li>
      <hr>
      <li class="faq"><a href="/faq_list.do">자주 묻는 질문</a></li>
      <hr>
      <li class="qna" style="font-weight: bold;"><a href="/userqna_list.do">1:1 문의</a></li>
      <hr>
      <li class="report"><a href="/rep_list.do">신고</a></li>
     </ul>
  </div>      
  
	<!-- 게시판 글쓰기 구역 -->
	<div>
		<p id="title">1:1 문의</p>
	</div>
	
	<div id="qna_write">
		<form method="post" enctype="multipart/form-data">
			<table width="1200px;"  border="1px solid" cellpadding="0"
				cellspacing="0">
				<tr height="50">
					<th>제목</th>
					<td style="padding: 8px; text-align: left;"><input id="one_title" name="one_title" type="text" style="width: 90%; height: 30px;" /></td>
				</tr>
				<!-- 로그인한 아이디 정보가 들어가게 하자 -->
				<tr height="50">
					<th>작성자</th>
					<td style="padding: 8px; text-align: left;"><input id="user_id" name="user_id" style="width: 90%; height: 30px;"
						value="${ sessionScope.user_id }" readonly /></td>
				</tr>
				<tr>
					<th>내용</th>
					<td style="padding: 8px; text-align: left;"><textarea id="one_content" name="one_content"
							style="width: 90%; height: 200px;"></textarea>
					</td>
				</tr>
				<tr height="50">
					<th>첨부파일</th>
					<td style="padding: 8px; text-align: left;"><input name="file" type="file" style="font-size: 20px;"/></td>
				</tr>
				<tr height="50">
					<th>비밀번호</th>
					<td style="padding: 8px; text-align: left;"><input type="password" name="one_pwd" size="20" style="width: 90%; height: 30px;"/></td>
				</tr>
				<tr height="50">
					<td class="button" colspan="2" align="center" style="padding: 8px;">
						<input type="submit" value="저장" style="font-size: 20px;" onclick="save_go(this.form)">
						<input type="button" value="목록" style="font-size: 20px;"
						onclick="list_go()">
					</td>						
				</tr>
			</table>
		</form>
	</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" crossorigin="anonymous"></script>
    	<script src="resources/js/summernote-lite.js"></script>
    	<script src="resources/js/lang/summernote-ko-KR.js"></script>
    	<script type="text/javascript">
    	$(function(){
    		$('#qna_content').summernote({
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