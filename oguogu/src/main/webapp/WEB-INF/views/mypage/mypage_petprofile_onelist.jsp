<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	#onelist_pet_form{
		width:1920px;
 		display: flex; 
		margin:auto;
	    margin-top:50px;
	}
	#onelist_petprofile{
		width:1500px;
		display: flex;
	    flex-direction: column;
	    align-items: center;
	    background-color: #FBF9D9;
	    padding-top:50px;
	    margin-left:100px;
	    border-radius:50px;
	}
	.info_div{
		margin:10px 0;
		font-size: 30px;
	}
	#onelist_pet_img{
		width:200px;
		height:200px;
		border-radius:50px;
	}
	#onelist_list_update_btn{padding-top:30px;}
	.onelist_list_update_btn{
		width:200px;
		height:50px;
		border-radius:20px;
		font-size: 20px;
		margin:20px 10px;
		border:none;
		cursor: pointer;
    	transition: box-shadow 0.5s;
	}
	.onelist_list_update_btn:hover {
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
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Bagel+Fat+One&display=swap" rel="stylesheet">
</head>
<body>
	<header>
		<jsp:include page="../home/home_top.jsp" />
	</header>
	<div id="onelist_pet_form">
		<div style="margin-top:10px;">
			<jsp:include page="mypage-sidebar.jsp" />
		</div>
		<div id="onelist_petprofile">
			<div>
				<div id="onelist_pet_img_name" style="display: flex;flex-direction: column;justify-content: center;align-items: center;">
					<div>
						<img src="resources/images/home/mainbanner_eduexplain.png" id="onelist_pet_img">
					</div>
					<h2>안녕하세요하이루</h2>
				</div>
				<div class="info_div" style="display:block;">생일 : 2023-09-01(나이 개월수까지)</div>
				<div class="info_div">품종 : 골든 리트리버</div>
				<div class="info_div">성별 : 남아</div>
				<div class="info_div">몸무게 : 3.0 kg</div>
			</div>
			<div id="onelist_list_update">
				<button class="onelist_list_update_btn">목록으로</button>
				<button class="onelist_list_update_btn" style="background-color: #FFA629">수정하기</button>
			</div>
		</div>
	</div>
	<footer>
		<jsp:include page="/WEB-INF/views/home/home_bottom.jsp" />
	</footer>
</body>
</html>