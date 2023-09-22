<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>모두의 포켓 - 장소 추가</title>
<!-- table css -->
<link href="resources/css/bootstrap/bootstrap.css" rel="stylesheet" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
<style type="text/css">
#minibanner img {
	width: 1920px;
	height: 200px;
	display: flex;
	margin: auto;
	margin-top: 20px;
	margin-bottom: 20px;
}

/* 검색어 입력 폰트 컬러 회색으로 */
input:-ms-input-placeholder{color:#a8a8a8;}
input::-webkit-input-placeholder{color:#a8a8a8;}
input::-moz-input-placeholder{color:#a8a8a8;}

.search{
	height: 100px;
	width:1000px;
	margin: auto;
	margin-top: 20px;
}

#search_text{
	width:400px;
	height: 40px;
	border: 1px solid #ffa234;
	background: #ffffff;
	margin: auto 0;
}

#search_button{
	width: 50px;
	height: 40px;
	border: 0px;
	background: #ffa234;
	outline: none;
	color: #ffffff;
}

#add_button{
	width: 100px;
	height: 40px;
	border: 0px;
	background: #ffa234;
	outline: none;
	color: #ffffff;
}

form{
	text-align: center;
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
	function facilities_search(){
		var searchTerm = document.getElementById('search_text').value;
		
		$("#result").empty();
		$.ajax({
			url:"/facilities_search.do"
			method:"post"
			dataType:"json",
			data:{searchTerm: searchTerm},	// 검색어를 서버에 전달
			success:function(data){
				console.log(data);
			},
			error: function() {
				alert("읽기실패");
			}
		});
	}
	
	function facilities_add() {
		
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
	
	<div id="location_add">
	
		<div class="search">
			<form>
				<input type="text" id ="search_text" placeholder="상호명을 입력하세요">
				<button type="button" id="search_button" onclick="facilities_search()">검색</button>
			</form>
		</div>
		
		<div class="location_list">
			<form action="" method="post">
				<div class="button_con">
					<input type="submit" id="add_button" value="장소추가">
				</div>
				<div id="result">
					
				</div>
			</form>
		</div>
		
		
			<table>
		<thead>
			<tr><td>도로명 이름</td><td>기본 정보_장소설명</td><td>시설명</td><td>경도</td>
			<td>위도</td></tr>
		</thead>
		<tbody>
			<c:forEach items="${pocketfilterlist}" var="k">
				<tr>
					<td>${k.roadaddr}</td>
					<td>${k.locationex}</td>
					<td>${k.facilities}</td>
					<td>${k.lon}</td>
					<td>${k.lat}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>	
			
		
	</div>
	
	<footer>
		<jsp:include page="/WEB-INF/views/home/home_bottom.jsp" />
	</footer>
	
</body>
</html>