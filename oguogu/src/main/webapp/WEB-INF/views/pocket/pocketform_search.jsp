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
 
#map_button{
	width: 150px;
	height: 40px;
	border: 0px;
	background: #ffa234;
	outline: none;
	color: #ffffff;
	margin-bottom: 40px;
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
				var table = "<form action='/map_go.do' method='post'>";
				table += "<button id='map_button' onclick='onNextButtonClick()'>거리계산하기</button>";
				table += "<table><thead><tr>";
				table += "<td>선택</td><td>시설명</td><td>도로명 주소</td></tr></thead>";
				
				table += "<tbody>";
				for(var i=0; i< pocketlist.length; i++) {
					table += "<tr>";
					table += "<td>";
					/* table += "<input type='checkbox' name='location_CheckBox' value='"+ pocketlist[i].facilities +"'>";
					table += "<input type='hidden' name='"+ pocketlist[i].facilities +"' value='"+ pocketlist[i].lon +"'>";
					table += "<input type='hidden' name='"+ pocketlist[i].facilities +"' value='"+ pocketlist[i].lat +"'>"; */
					table += "<input type='checkbox' name='location_CheckBox' value='"+ pocketlist[i].facilities +","+ pocketlist[i].lon +","+ pocketlist[i].lat +"'>";
					table +="</td>";
					table += "<td>"+pocketlist[i].facilities+"</td>";
					table += "<td>"+pocketlist[i].roadaddr+"</td>";
					table += "</tr>";					
				}
				
				table += "</tbody></table></form>";
				$('#result').append(table);
				
			},
			error: function() {
				alert("읽기실패");
			}
		});
	});
});

/* 
$(document).ready(function() {
//상단 선택버튼 클릭시 체크된 Row의 값을 가져온다.
$("#map_button").click(function(){
	var rowData = new Array();
	var tdArr = [];
	var checkbox = $("input[name=location_CheckBox]:checked");
	
	// 체크된 체크박스 값을 가져온다
	checkbox.each(function(i) {
		var tr = checkbox.parent().parent().eq(i);
		var td = tr.children();
		
		var facilities = td.eq(1).text();
		var roadaddr = td.eq(2).text();
		var lon = td.eq(3).text();
		var lat = td.eq(4).text();
		
		var rowData = {
                facilities: facilities,
                roadaddr: roadaddr,
                lon: lon,
                lat: lat
            };

		
		
		tdArr.push(rowData);
	
	});
	
	var jsonData = JSON.stringify(tdArr);

    $.ajax({
        url: "/processSelectedFacilities",
        type: "POST",
        contentType: "application/json",
        data: jsonData,
        success: function(response) {
            console.log("Data sent successfully!");
         
        },
        error: function(error) {
            console.error("Error sending data: " + error);
        }
    });
});
});*/
</script>
<script type="text/javascript">
function onNextButtonClick() {
	 var chkBox = document.getElementsByName("location_CheckBox");
       var selectedvalues = [];	// 배열 초기화
       
       for (var i = 0; i < chkBox.length; i++) {
           if (chkBox[i].checked) {
           	selectedvalues.push(chkBox[i].value);
           }
       }
       if (selectedvalues.length === 0) {
           alert("장소를 최소 하나는 선택해야 합니다");
           event.preventDefault(); // 폼 제출을 막음
           return;
       }
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
			<input type="text" id ="search_text" placeholder="상호명을 입력하세요">
			<button id="search_button">검색</button>
		</div>
		
		
		<div class="location_list">
			<div id="result"></div>	
		</div>

	</div>
	
	<footer>
		<jsp:include page="/WEB-INF/views/home/home_bottom.jsp" />
	</footer>	
</body>
</html>