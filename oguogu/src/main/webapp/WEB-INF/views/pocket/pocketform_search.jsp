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

a:hover {
	color: white;
	text-decoration: none;
}

.search{
	height: 100px;
	width:1000px;
	margin: auto;
	margin-top: 20px;
	text-align: center;
}

.location_list{
	width:800px;
	margin: auto;
	margin-top: 20px;
	text-align: center;
}

#result{
	margin: auto;
	margin-top: 20px;
	text-align: center;
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

footer {
	width: 1920px;
	display: flex;
	margin: auto;
	margin-top: 20px;
	margin-bottom: 20px;
}


</style>
<script type="text/javascript">
var pocketlist;
$(document).ready(function() {
	$("#search_button").on("click", function() {
		var searchValue = $("#search_text").val();  // 검색어 가져오기
		$("#result").empty();
		$.ajax({
			url:"/facilities_search.do",	// 서버 주소
			method:"post",	// 전달 방식
			dataType:"json",	// 가져오는 결과 타입
			data: { search_text: searchValue },  // 검색어를 데이터로 전송
			// async: true,	// 비동기(기본, 생략가능), 동기 = false
			success: function(data) {
				pocketlist = data.pocketlist;
				var table = "<table>";
				table += "<thead><tr>";
				table += "<td>시설명</td><td>도로명 주소</td><td>장소 리스트 추가</td></tr></thead>";
				
				table += "<tbody>";
				for(var i=0; i< pocketlist.length; i++) {
					table += "<tr>";
					table += "<td>"+pocketlist[i].facilities+"</td>";
					table += "<td>"+pocketlist[i].roadaddr+"</td>";
					table += "<td><button onclick='addToList("+i+")'>장소 추가</button></td>";
					table += "</tr>";					
				}
				table += "</tbody></table>";
				$('#result').append(table);
				
			},
			error: function() {
				alert("읽기실패");
			}
		});
	});
});

/* 장소추가를 눌렀을때 */
var selectedPlacesList = [];

function addToList(index) {
	if (pocketlist) {
    	var selectedData = {
            roadaddr: pocketlist[index].roadaddr,
            locationex: pocketlist[index].locationex,
            facilities: pocketlist[index].facilities,
            lon: pocketlist[index].lon,
            lat: pocketlist[index].lat
        };
        
    	// Add selectedData to the list
        selectedPlacesList.push(selectedData);
        
        // Optionally, you can log the selected places list
        console.log(selectedPlacesList);
	} else{
		alert("먼저 목록을 불러와야 합니다.");
	}
}

$(document).ready(function() {
    $("#gopocketformlist").on("click", function() {
        $.ajax({
            url: "/gopocketformlist.do",
            type: "POST",
            contentType: "application/json",
            data: JSON.stringify(selectedPlacesList),
            success: function(response) {
                // 서버로부터 응답을 받았을 때 실행할 코드
                console.log("Data sent successfully!");
            },
            error: function(error) {
                console.error("Error sending data: " + error);
            }
        });
    });
});
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
			<input type="text" id ="search_text" placeholder="상호명을 입력하세요">
			<button id="search_button">검색</button>
		</div>
		
		<div>
			<button id="gopocketformlist">추가 완료</button>
		<div>
		
		<div class="location_list">
			<div id="result"></div>	
		</div>

	</div>
	
	<footer>
		<jsp:include page="/WEB-INF/views/home/home_bottom.jsp" />
	</footer>	
</body>
</html>