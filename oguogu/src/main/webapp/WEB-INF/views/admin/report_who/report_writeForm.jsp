<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 교육관리 </title>
<link rel="stylesheet" href="resources/css/summernote-lite.css">
<style type="text/css">
	a {text-decoration: none; }
	table{width:800px;  text-align: center; border-collapse:collapse; border-radius:20px; color:white; }
	table,th,td{border: 1px solid black; padding: 3px ;}
	div{width:800px; margin:auto; text-align: center;}
	.note-btn-group{width: auto;}
	.note-toolbar{width: auto;}
	input { background-color: white;  border-radius:20px;}
  	input[type=reset] { border:1px solid white; background-color: #FFA629;font:20px ;  color:white;  }
  	input[type=button] { border:1px solid white; background-color: #FFA629;font:200px ; color:white;   }
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
</style>
<script type="text/javascript">
	function save_go(f) {
		f.action="";
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
 <div class="sidebar">
      <ul class="sidebar-menu">
      <li class="notice"><a href="/sup_list.do">공지사항</a></li>
      <hr>
      <li class="faq"><a href="/faq_list.do">문의사항</a></li>
      <hr>
      <li class="report" style="font-weight: bold;"><a href="/rep_list.do">신고</a></li>
     </ul>
  </div>     
  
	<div>
		<p id="title">신고</p>
		<hr />
		<p>[<a href="/guestbook_list.do">목록으로 이동</a>]</p>
		<form method="post">
			<table>
			<tr>
			<th style="background-color:  #FFA629;">교육 종류</th>
					<td>
						<select name="kind">
							<option selected>-종류 선택-</option>
							<option value="${ evo.edu_kind}">필수 정보</option>
							<option value="${ evo.edu_kind}">양육 정보</option>
							<option value="${ evo.edu_kind}">훈련 정보</option>
						</select>
						
			</td>
			</tr>
		
			<tr>
			<th style="background-color:  #FFA629;">동물 종류</th>
					<td>
					<select name="pet">
							<option selected>-동물 선택-</option>
							<option value="${ evo.edu_aml_kind}">강아지</option>
							<option value="${ evo.edu_aml_kind}">고양이</option>
						</select>
					</td>	
			</tr>
				<tr align="center">
					<td bgcolor="FFA629">작성자</td>
					<td><input type="text" name="name" size ="20"/></td>
				</tr>
				<tr align="center">
					<td bgcolor="FFA629">제  목</td>
					<td><input type="text" name="subject" size ="20"/></td>
				</tr>
				<tr align="center">
					<td bgcolor="FFA629">email</td>
					<td><input type="text" name="email" size ="20"/></td>
				</tr>
				<tr align="center">
					<td bgcolor="FFA629">비밀번호</td>
					<td><input type="password" name="pwd" size ="20"/></td>
				</tr>
				<tr align="center">
					<td colspan="2">
						<textarea rows="10" cols="60" name="content" id="content" ></textarea>
					</td>
				</tr>
				<tfoot>
					<tr align="center">
						<td colspan="2">
							<input type="button" value="저장" onclick="save_go(this.form)" />
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<input type="reset" value="취소" />
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
</body>
</html>