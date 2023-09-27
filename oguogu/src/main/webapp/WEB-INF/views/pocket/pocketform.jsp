<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" 
integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
 crossorigin="anonymous"></script>
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" 
integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
 crossorigin="anonymous">
 
<title>포켓 만들기</title>

<style type="text/css">
@font-face {
    font-family: 'GyeonggiTitleM';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_one@1.0/GyeonggiTitleM.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}

a:hover {
	color: white;
	text-decoration: none;
}

body {
	padding-top: 70px;
	padding-bottom: 30px;
}

div{
	font-family: 'GyeonggiTitleM';
}

#minibanner img {
	width: 1920px;
	height: 200px;
	display: flex;
	margin: auto;
	margin-top: 20px;
	margin-bottom: 20px;
}

input.form-control:focus {
  outline: none;
  box-shadow: none;
  border-color: lightgrey;
}

textarea.form-control:focus {
  outline: none;
  box-shadow: none;
  border-color: lightgrey;
}

.btn{
	background-color: #ffa234;
	border: none;
}

.button_list .btn:hover {
  background-color: #ffa234;
}

.button_list .btn:focus,
.button_list .btn:active {
  outline: none;
  border: none;
}


footer {
	width: 1920px;
	display: flex;
	margin: auto;
	margin-top: 20px;
	margin-bottom: 20px;
}

</style>
<script type="text/javascript">
	function onAddButtonClick() {
		location.href = "/pocketform_search_go.do";
	}
</script>
</head>
<body>
	<header>
		<jsp:include page="/WEB-INF/views/home/home_top.jsp" />
	</header>

	<div id=minibanner>
		<a href="/pocketmaindisplay.do"><img src="resources/images/page_banner/listbanner_pocket.png"></a>
	</div>
	
	<article>
		<div class="container" role="main">
			<h2>나만의 포켓 추가하기</h2>
			<form>
				<div class="mb-3">
					<label for="title">제목</label>
					<input type="text" class="form-control" name="title" id="title" placeholder="제목을 입력해 주세요">
				</div>
				
				<div class="mb-3">
					<label for="content">내용</label>
					<textarea class="form-control" rows="5" name="content" id="content" placeholder="내용을 입력해 주세요" ></textarea>
				</div>

				<div class="mb-3">
					<label for="pocket_img">포켓 이미지 추가</label>
					<br>
					<input type="file" name="file" id="file">
				</div>
				
				<div class="mb-3">
					<label for="location_add">장소 추가</label>
					<br>
					<div class="button_list">
						<input type="button" class="btn btn-sm btn-primary" id="btnadd" value="장소 추가하기" onclick="onAddButtonClick()">
						<input type="button" class="btn btn-sm btn-primary" id="btndel" value="장소 삭제하기" onclick="">
					</div>
					
				</div>
				<br><br><br>
				<div class="button_list">
					<button class="btn btn-sm btn-primary" id="btnSave" onclick="onSaveButtonClick()">저장</button>
					<button class="btn btn-sm btn-primary" id="btncancel" onclick="onCancelButtonClick()">취소</button>
				</div>
			</form>
		</div>
	</article>
	
	<footer>
		<jsp:include page="/WEB-INF/views/home/home_bottom.jsp" />
	</footer>
	
</body>
</html>