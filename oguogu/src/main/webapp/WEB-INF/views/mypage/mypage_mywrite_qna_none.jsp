<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

#mywrite_qna_none_form{
		width:1920px;
		display: flex;
		margin:auto;
		padding-top:50px;
	}
#mywrite_qna_none_list{
		width:1500px;
		display:flex;
		flex-direction: column;
		align-items: center;
		background-color: #FBF9D9;
	    padding-top:50px;
	    margin-left:100px;
	    border-radius:50px;
	}
	
#qna_add_btn{
	width:200px;
	height:40px;
	background-color: #FFA629;
	border-radius:20px;
	font-size: 20px;
	margin-top:20px;
	border:none;
	cursor:pointer;
	transition: box-shadow 0.5s;
}

#qna_add_btn:hover {
   	box-shadow: 4px 4px 8px rgba(0, 0, 0, 0.5);
}

footer {
	width: 1920px;
	display: flex;
	margin: auto;
	margin-top: 20px;
	margin-bottom: 20px;
}
</style>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Bagel+Fat+One&display=swap"
	rel="stylesheet">
</head>
<body>
	<header>
		<jsp:include page="../home/home_top.jsp" />
	</header>

	<div id="mywrite_qna_none_form">
		<div style="margin-top:10px;">
			<jsp:include page="mypage-sidebar.jsp" />
		</div>
		<div id="mywrite_qna_none_list">
			<h1 style="font-size: 50px;color:#FFA629;margin-top:50px;">나의 1:1 문의</h1>
			<div style="margin:50px 0;">
				<img src="resources/images/mypage/write_reg.png" 
				style="width:200px;height:200px;border-radius:10px;">	
			</div>
			<div style="font-size:20px;margin-bottom:30px;">작성된 문의 글이 없어요~</div>
			<div>
				<button id="qna_add_btn" onclick="">등록하기</button>
			</div>
		</div>
	</div>

	<footer>
		<jsp:include page="../home/home_bottom.jsp" />
	</footer>
</body>
</html>