<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지 - 반려동물</title>
<style type="text/css">
	body{
		font-family: 'Noto Sans KR', sans-serif;
	}
	#petprofile_list_form{
		width:1920px;
 		display: flex;
 		margin:auto;
 		padding-top:50px;
	}
	#petprofile_list{
		width:1500px;
		display:flex;
		flex-direction: column;
		align-items: center;
		background-color: #FBF9D9;
	    padding-top:50px;
	    margin-left:100px;
	    border-radius:50px;
	}
	
	#pet_add_btn{
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
	
	#pet_add_btn:hover {
    	box-shadow: 4px 4px 8px rgba(0, 0, 0, 0.5);
	}
	
	footer{
        width:1920px;
        display:flex;
        margin:auto;
        margin-top:20px;
        margin-bottom: 20px;
    }
</style>
<script type="text/javascript">
	function petreg_go() {
		location.href="/petRegGoForm.do"
	}
</script>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Bagel+Fat+One&display=swap" rel="stylesheet">
</head>
<body>
	<header>
		<jsp:include page="../home/home_top.jsp" />
	</header>
	<div id="petprofile_list_form">
		<div style="margin-top:10px;">
			<jsp:include page="mypage-sidebar.jsp" />
		</div>
		<div id="petprofile_list">
			<h1 style="font-size: 50px;color:#FFA629;margin-top:50px;">나의 반려동물</h1>
			<div style="margin:50px 0;">
				<img src="resources/images/mypage/pet_reg.png" 
				style="width:200px;height:200px;border-radius:10px;">	
			</div>
			<div>
				<button id="pet_add_btn" onclick="petreg_go()">등록하기</button>
			</div>
		</div>
	</div>
	<footer>
		<jsp:include page="/WEB-INF/views/home/home_bottom.jsp" />
	</footer>
</body>
</html>