<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	#petprofile_ul{
		list-style: none;
	    margin-bottom:40px;
	}
	.petprofile_li{
		margin:30px;
	}
	.petprofile_essential_info{
		width:600px;
		height:250px;
		display:grid;
		grid-template-columns:60% 40%;		
		align-items: center;
		background-color:#F3F1EF;
		border-radius:20px;
		cursor:pointer;
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
	
	#petOnelist{
		text-decoration: none;
		color:black;
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
	function add_pet() {
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
			<h1 style="font-size: 50px;color:#FFA629;">나의 반려동물</h1>
				<ul id="petprofile_ul">
				<c:forEach var="k" items="${plist}">
					<c:if test="${k.status == 0}">
						<a href="/getPetProfileOnelist.do?pet_idx=${k.pet_idx}" id="petOnelist">
							<li class="petprofile_li">
								<div class="petprofile_essential_info">
									<div>
										<img src="resources/images/${k.pet_fname}" style="width:200px;height:200px; border-radius:50px;margin-left:40px;">
									</div>
									<div>
										<div style="font-size: 30px;">${k.pet_name}</div>
										<div style="font-size: 20px;">${k.pet_birth} (${k.months} 개월)</div>
									</div>
								</div>
							</li>
						</a>
					</c:if>
				</c:forEach>
				</ul>
			<div style="margin-bottom:50px;">
				<button id="pet_add_btn" onclick="add_pet()">추가하기</button>
			</div>
		</div>
	</div>
	<footer>
		<jsp:include page="/WEB-INF/views/home/home_bottom.jsp" />
	</footer>
    
</body>
</html>