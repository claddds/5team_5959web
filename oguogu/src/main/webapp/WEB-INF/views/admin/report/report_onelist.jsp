<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>신고 상세페이지(관리자 화면)</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<style type="text/css">
#repWrapper>ul>li:first-child {
	/* text-align: center;
	font-size: 14pt;
	height: 40px;
	vertical-align: middle;
	line-height: 30px; */
}
#report_title {
	margin: 10px auto;
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
	border-radius: 20px;
}
#onelist table {
	width: 1000px;
	height: 400px;
	margin: auto;
	margin-top: 30px;
	margin-left: 50px;
	border: 1px solid black;
	border-collapse: collapse;
	font-size: 20px;
}
#onelist table th {
	text-align: center;
	border: 1px solid black;
	padding: 2px 4px;
	width: 300px;
	background-color: #FFA629;
}
#onelist table td {
	text-align: left;
	border: 1px solid black;
	padding: 2px 4px;
}
input {
	padding: 10px;
	margin: auto;
}
button {
	text-align: right;
}
#report_sea {
	display: flex;
	padding-top: 15px;
	padding-bottom: 15px;
	border-bottom: 1px solid #bcc;
	padding-top: 15px;
}
.report_sea:hover {
	background: white;
	color: blcak;
}
.report_re:hover {
	background: white;
	color: blcak;
}
footer {
	width: 1920px;
	display: flex;
	margin: auto;
	margin-top: 20px;
	margin-bottom: 20px;
}
</style>
</head>
<body style="width: 100%;">
	<!-- 헤더 구역 -->
	<header style="width: 100%;">
		<jsp:include page="/WEB-INF/views/home/home_top.jsp" />
	</header>
	<!-- 사이드바 -->
	<jsp:include page="/WEB-INF/views/adminhome/sidebar.jsp" />
	
		<!-- 상세보기 구역 -->
		<div style="border-bottom: 1px solid #bcc;">
		    <p id="report_title">신고 내용</p>
		</div>
		<div id="onelist">
		    <table width="120px;" border="1px solid" cellpadding="0" cellspacing="0">
		        <tr height="50">
		            <th>신고 제목</th>
		            <td style="padding: 8px; text-align: left;" id="rep_title"></td>
		        </tr>
		        <tr height="50">
		            <th>신고자 아이디</th>
		            <td style="padding: 8px; text-align: left;" id="user_id"></td>
		        </tr>
		        <tr height="50">
		            <th>작성 날짜</th>
		            <td style="padding: 8px; text-align: left;" id="rep_date"></td>
		        </tr>
		        <tr height="50">
		            <th height="50">신고 내용</th>
		            <td style="padding: 8px; text-align: left;" id="rep_content"></td>
		        </tr>
		        <tr height="50">
		            <th>첨부파일</th>
		            <td style="padding: 8px; text-align: left;" id="rep_fname"></td>
		        </tr>
		        <tr height="50">
		            <td colspan="2">
		                <input type="hidden" value="" id="rep_idx">
		                <div style="text-align: center;">
		                    <select class="search-form selectBox" name="searchOption"
		                            style="width: 150px; height: 30px; border-radius: 5px; border: 1px solid #bcc; text-align: center;">
		                        <option value="">진행상태 선택</option>
		                        <option value="1">처리 대기중</option>
		                        <option value="2">처리중</option>
		                        <option value="3">처리 완료</option>
		                    </select>
		                    <button class="report_sea searchBtn"
		                            style="border: none; height: 30px; background: #FFA629; border-radius: 5px; border-bottom-right-radius: 5px;">저장
		                    </button>
		                    <button id="report_list" class="report_re resetBtn"
		                            style="border: none; height: 30px; background: #FFA629; border-radius: 5px; margin-left: 20px;">목록
		                    </button>
		                </div>
		            </td>
		        </tr>
		    </table>
		</div>
		<footer>
			<jsp:include page="/WEB-INF/views/home/home_bottom.jsp" />
		</footer>
		<script
			src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
</body>
<script type="text/javascript">
	$(document).ready(function() {
		init();
	});
	
	function init() {
		var data = JSON.parse(localStorage.getItem("param"));
		$('#rep_title').text(data.rep_title);
		$('#user_id').text(data.user_id);
		$('#rep_date').text(data.rep_date);
		$('#rep_content').text(data.rep_content);
		$('#rep_fname').text(data.rep_fname);
		$('#rep_idx').val(data.rep_idx);
		$('.selectBox').val(data.rep_ing_cde);
		console.log(data.rep_ing_cde);
		
	function goToReportList() {
	    var list_go = "/admin_report.do";
	    window.location.href = list_go;
	}
		
	document.getElementById("report_list").addEventListener("click", goToReportList);
	
	function searchByStatus() {
		var selectedStatus = document.getElementById("report_status").value;
		// 조건 넣기
		
		
		console.log("pending: " + selectedStatus);
	}
	
	$('.report_sea').off('click').on('click',function(){
		var param = {rep_idx: $('#rep_idx').val(), rep_ing : $('.selectBox').val()};
		$.ajax({
			url : '/setRepIng.do',
			data : param,
			data : JSON.stringify(param||{}),
			dataType : 'json', /*html, text, json, xml, script*/
			contentType: 'application/json; charset=utf-8',
			method : 'post',
			cache:false,
			success : function(res) {
				alert('정상적으로 처리되었습니다.');
				location.href = '/admin_report.do';
			},
			error : function(xhr, status, error) {
				console.log(error);
				console.log(xhr);
				console.log(status);
			}
		});
	});
	    
		/* function getUserInfo(param) {
			$.ajax({
				url : '/getReportOneList.do',
				data : param,
				data : JSON.stringify(param||{}),
				dataType : 'json', 
				contentType: 'application/json; charset=utf-8',
				method : 'post',
				cache:false,
				success : function(res) {
					console.log(res.rep_onelist);
					var html = '';
					if (res.rep_onelist.length > 0) {
						for (var i = 0; i < res.rep_onelist.length; i++) {
							html += '<tr>';
							html += '<td>' +res.rep_onelist[i].rep_title
									+'</td>';
							html += '<td>' + res.rep_onelist[i].user_id
									+ '</td>';
							html += '<td>' + res.rep_onelist[i].rep_date
									+ '</td>';
							html += '<td>' + res.rep_onelist[i].rep_content
									+ '</td>';
							html += '<td>' + res.rep_onelist[i].rep_fname
									+ '</td>';
							html += '</tr>';
						}
					}
				},
				error : function(xhr, status, error) {
					console.log(xhr);
				}
			});
					
		} */
	}
</script>
</html>