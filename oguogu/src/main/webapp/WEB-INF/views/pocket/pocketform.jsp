<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<title>포켓 만들기</title>

<style type="text/css">
#minibanner img {
	width: 1920px;
	height: 200px;
	display: flex;
	margin: auto;
	margin-top: 20px;
	margin-bottom: 20px;
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
	
</script>
</head>
<body>
	<header>
		<jsp:include page="/WEB-INF/views/home/home_top.jsp" />
	</header>

	<div id=minibanner>
		<a href="/pocketmaindisplay.do"><img src="resources/images/page_banner/listbanner_pocket.png"></a>
	</div>
	
	<div id = container>
		<form method="post" enctype="multipart/form-data">
			<div class="form_group">
				<label for="title">제목</label>
    			<input type="text" class="form-control" name="title" id="title" size ="20" />
			</div>
			<div class="form_group">
				<label for="content">포켓의 내용</label>
    			<textarea  rows="10" cols="60" name="content" id="content"></textarea>
			</div>
			<div class="form_group">
				<label for="pocket_img">포켓사진</label>
				<input type="file" class="form-control" name="pocket_img" id="pocket_img" size ="20" />
			</div>
			<button type="submit" class="btn btn-default">Submit</button>
		</form>
	</div>
	
	<footer>
		<jsp:include page="/WEB-INF/views/home/home_bottom.jsp" />
	</footer>
	
</body>
</html>