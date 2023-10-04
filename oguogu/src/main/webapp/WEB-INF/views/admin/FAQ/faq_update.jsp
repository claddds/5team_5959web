<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 오구오구 FAQ </title>
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
table{ margin:auto; width:1200px;  text-align: center;  border-radius:20px; color:black; }
table > td {border: 3px solid orange; padding: 3px ; text-align:lrft;  border-radius:20px;}
	
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
function update_ok(f) {
	if(f.faq_title.value.trim().length <=0){
		alert("FAQ 제목을 입력하세요.");
		f.faq_title.focus();
		return;
	}

	if(f.faq_content.toString().trim().length <=0){
		alert("내용을 입력하세요.");
		f.faq_content.focus();
		return;
	}
	if(f.faq_ing.value.trim().length <=0){
		alert("공개여부를 선택하세요.");
		f.faq_ing.focus();
		return;
	}	
		alert("자주 묻는 질문이 수정되었습니다.");
		f.action="/faq_update.do";
		f.submit();
	}
</script>
</head>
<body style="width: 100%;">
	<!-- 헤더 구역 -->
<header style="width: 100%;">
		<jsp:include page="/WEB-INF/views/home/home_top.jsp" />
	</header>
<jsp:include page="/WEB-INF/views/adminhome/sidebar.jsp" />	
<div id="repWrapper" style="margin-right: 200px;">
<p id="title">${faq_vo.faq_title} 수정</p>
<hr style="border-width:2px 0 0 0; border-style:dotted; border-color:#FFA629; width:80%; margin-bottom: 30px;" >
		 
		<p align="center"><a id="link" href="/ad_faq_list.do">FAQ 전체보기</a></p>

			<form method="post" enctype="multipart/form-data">
			<table>
			<tr align="center"  style= "color: white; font-weight: bold;">
					<td  style="background-color:  #FFA629;color: white;font-weight: bold;">등록자</td>
					<td style="border-radius:20px; border: 3px solid orange; "><input type="text" name="admin_nickname" size ="80" value="${nickname}" style="border-radius:20px;" readonly/></td>
				</tr>
				<tr align="center" >
					<td  style="background-color:  #FFA629;color: white;font-weight: bold;" >제 목</td>
					<td style="border-radius:20px; border: 3px solid orange; "><input type="text" name="faq_title" size ="80" value="${faq_vo.faq_title}" style="border-radius:20px;"/></td>
				</tr>
			
				<tr align="center">
					<td colspan="2" style="border-radius:20px; border: 3px solid orange; ">
						<textarea rows="10" cols="60" name="faq_content" id="content" style="border-radius:20px;">${faq_vo.faq_content}</textarea>
					</td>
				</tr>
					<tr align="center">
					<td bgcolor="#FFA629" style="background-color:  #FFA629;color: white;font-weight: bold;">첨부파일</td>
					<c:choose>
						<c:when test="${empty faq_vo.faq_fname}">
							<td style="border-radius:20px; border: 3px solid orange; "><input type="file" name="file"> <br><b> 이전 파일 없음</b> </td>
							   	<input type="hidden" name = "old_f_name" value="">					
						</c:when>
						<c:otherwise>
							<td style="border-radius:20px; border: 3px solid orange; "><input type="file" name="file"> <br><b> 이전 파일명 (${faq_vo.faq_fname})</b> </td>
							   	<input type="hidden" name = "faq_fname" value="${faq_vo.faq_fname}">		
						</c:otherwise>
					</c:choose>                    
				</tr>
				<tfoot>
				<tr align="center">
						<td colspan="4"  style="border-radius:20px; border: 3px solid orange; ">
					
					
						<input type="radio" name="faq_ing" value="0" class="radio" /><span class="ml_10">공개</span>&nbsp;&nbsp;&nbsp;&nbsp;
   					 	<input type="radio" name="faq_ing" value="1" class="radio" /><span class="ml_10">비공개</span>&nbsp;
   					 	<hr style=" border-color:3px solid orange;">
   					 		<input type="hidden" name="faq_idx" value="${faq_vo.faq_idx}">
						<input type="hidden" name="cPage" value="${cPage}">
						<input type="button" class="button"  value="수정" onclick="update_ok(this.form)"/>
						<input type="reset" class="button"  value="취소"/>
					</td>

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