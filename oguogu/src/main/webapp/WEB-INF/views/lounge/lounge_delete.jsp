<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="resources/css/summernote-lite.css">
<script src="//cdn.ckeditor.com/4.7.3/standard/ckeditor.js"></script>
<script type="text/javascript">

</script>
<style type="text/css">

/* 등록 | 뒤로가기 버튼은 가운데 정렬 */
.button{
	text-align: center;
}

#loungeWrapper{
        text-align: center;
        padding:10px;
        margin:auto;
        font-family: 'Noto Sans KR', sans-serif;
    }
#loungeWrapper > ul > li:first-child {
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

#write table{
	width:1200px;
	margin:0 auto;
	margin-top:100px;
	border:1px solid black;
	border-collapse:collapse;
	font-size:20px;
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
.content{
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

<title>게시글 작성하기</title>
<script type="text/javascript">
	$(document).ready(function(){
		var pwchk = "${pwchk}"
	    if(pwchk == "fail"){
		   alert("비밀번호 틀림");
		   return;
	   }
	});
</script>
<script type="text/javascript">
function delete_go(f){
	if(f.lo_pwd.value.trim().length <=0){
		alert("비번을 입력해주세요");
		f.lo_pwd.focus();
		return;
	}
	if (confirm("정말 삭제하시겠습니까?")) {
        f.action="/lounge_delete.do";
        f.submit();
    }
}
</script>
</head>
<body>
		<!-- 헤더 구역 -->
		<header>
			<jsp:include page="../home/home_top.jsp" />
		</header>
		
	<div id="loungeWrapper" style="width: 1920px;">
	
	<!-- 사이드바 구역 -->      
 <div class="sidebar">
    <ul class="sidebar-menu">
      <li class="all"><a href="/lounge_list.do">전체글보기</a></li>
      <hr>
      <li class="share"><a href="/lounge_share_list.do">일상 공유</a></li>
      <hr>
      <li class="recomm"><a href="/lounge_recomm_list.do">추천탭</a></li>
      <hr>
      <li class="question"><a href="/lounge_qna_list.do">질문</a></li>
    </ul>
  </div>      

	<!-- 게시판 글쓰기 구역 -->
	<div>
		<p id="title">게시글 삭제하기</p>
	</div>
	
	<div id="write">
		<form method="post">
			<table width="1200px;"  border="1px solid" cellpadding="0"
				cellspacing="0">
				<tr height="50">
					<th>비밀번호 확인</th>
					<td style="padding: 8px; text-align: left;">
						<input type="password" name="lo_pwd" style="width: 90%; height: 30px;" />
					</td>
				</tr>
				<tr height="50">
					<td class="button" colspan="2" align="center" style="padding: 8px;">
						<input type="hidden" name="cPage" value="${cPage}">
						<input type="hidden" name="lo_idx" value="${lo_idx}">
						<input type="button" value="삭제" style="font-size: 20px;" onclick="delete_go(this.form)">
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
    		$('#lo_content').summernote({
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