<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!doctype html>
<html lang="en" style="width: 100%; overflow-x: hidden;">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>신고 (관리자 화면)</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<style type="text/css">
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

footer {
	width: 1920px;
	display: flex;
	margin: auto;
	margin-top: 20px;
	margin-bottom: 20px;
}
/* paging */
table tfoot ol.paging {
	list-style: none;
	display: flex;
	justify-content: center;
	margin-top: 20px;
}

table tfoot ol.paging li {
	float: left;
	margin-right: 8px;
}

table tfoot ol.paging li a {
	display: block;
	padding: 3px 7px;
	border: 1px solid #FFA629;
	color: #2f313e;
	font-weight: bold;
}

table tfoot ol.paging li a:hover {
	background: #FFA629;
	color: white;
	font-weight: bold;
}

.disable {
	padding: 3px 7px;
	border: 1px solid silver;
	color: silver;
}

.now {
	padding: 3px 7px;
	border: 1px solid #FFA629;
	background: #FFA629;
	color: white;
	font-weight: bold;
}

.d-flex {
	padding: 5px;
}
/* 회원검색 스타일 */
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

/*  페이징  */
.pageBtn{
	border:2px solid #bcc;
	background:none;
	margin-left:5px;
	margin-right:5px;
}
.notNowPage{
	border:2px solid #bcc;
}
.nowPage{
    background: #FFA629;
}
.textBtn{
	background:none;
	padding: 3px 7px;
	border: 1px solid silver;
	color: silver;
}
.title{
	text-decoration : underline;
	cursor: pointer;
}
</style>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap"
	rel="stylesheet">
</head>
<body style="width: 100%;">
	<!-- 헤더 구역 -->
	<header style="width: 100%;">
		<jsp:include page="/WEB-INF/views/home/home_top.jsp" />
	</header>
	<!-- 사이드바 -->
	<jsp:include page="/WEB-INF/views/adminhome/sidebar.jsp" />

	<!-- 게시판 리스트 구역 -->
	<div style="border-bottom: 1px solid #bcc;">
		<p id="report_title">신고 관리</p>
	</div>
	<div id="report_sea">
		<div style="margin-right: 20px;">
				<span>기간선택</span> 
				<input type="date" class="search-form" name="startDate" style="height: 30px; border: 1px solid #bcc; border-radius: 5px;" />
				~ 
				<input type="date" class="search-form" name="endDate" style="height: 30px; border: 1px solid #bcc; border-radius: 5px;" />
			</div>
			<div>
				<span>검색조건</span> 
				<select class="search-form selectBox" name="searchOption" style="width: 100px; height: 30px; border-radius: 5px; border: 1px solid #bcc;">
					<option value="">전체</option>
					<option value="user_id">아이디</option>
					<option value="rep_content">내용</option>
				</select>
				 <input type="text" class="search-form" name="colVal" placeholder="검색어 입력"style="border-top-left-radius: 5px; border-bottom-left-radius: 5px; border: 1px solid #bcc; height: 30px;" />
			</div>
			<div>
				<button class="report_sea searchBtn" style="border: none; height: 30px; background: #FFA629; border-top-right-radius: 5px; border-bottom-right-radius: 5px;">검색</button>
				<button class="report_re resetBtn" style="border: none; height: 30px; background: #FFA629; border-radius: 5px; margin-left: 20px;">검색 초기화</button>
				</div>
	</div>
	<div class="report_list" style="display: flex;">
		<table class="table">
			<colgroup>
				<col width="140px" />
				<col width="140px" />
				<col width="140px" />
				<col width="140px" />
				<col width="140px" />
				<col width="140px" />
			</colgroup>
			<thead>
				<tr>
					<th scope="col">번호</th>
					<th scope="col">신고 제목</th>
					<th scope="col">아이디</th>
					<th scope="col">신고 내용</th>
					<th scope="col">작성 날짜</th>
					<th scope="col">진행 상황</th>
				</tr>
			</thead>
			<tbody class="result">

			</tbody>
			<tfoot>
				<!-- 페이징  기법 -->
				<tr class="pageingWrap">
					<td colspan="6" class="pageingBtnGroup">
						<ol class="paging"></ol>
					</td>
				</tr>
			</tfoot>
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
		function getUserInfo(param) {
			$.ajax({
				url : '/getReportList.do',
				data : param,
				data : JSON.stringify(param||{}),
				dataType : 'json', /*html, text, json, xml, script*/
				contentType: 'application/json; charset=utf-8',
				method : 'post',
				cache:false,
				success : function(res) {
					console.log(res.replist);
					var html = '';
					if (res.replist.length > 0) {
						for (var i = 0; i < res.replist.length; i++) {
							html += '<tr>';
							html += '<td id="rep_idx">' +res.replist[i].rep_idx
									+'</td>';
							html += '<td class="title" id="rep_title" style="color:blue;">' + res.replist[i].rep_title
									+ '</td>';
							html += '<td id="user_id">' + res.replist[i].user_id
									+ '</td>';
							html += '<td id="rep_content">' + res.replist[i].rep_content
									+ '</td>';
							html += '<td id="rep_date">' + res.replist[i].rep_date
									+ '</td>';
							html += '<input type="hidden" id="rep_ing_cde" value="'+res.replist[i].rep_ing_cde+'"/>';
							html += '<td id="rep_ing">' + res.replist[i].rep_ing
									+	'</td>';
							html += '</tr>';
						}
						
						// 페이징
						var totCnt = res.totCnt;
						
						var grpCnt = 5;
						var countAllPage = Math.ceil(totCnt / grpCnt);
						var pageGrpPos = (param.nowPage % grpCnt == 0) ? Math.floor(param.nowPage / grpCnt) -1 : Math.floor(param.nowPage / grpCnt);
						var strPage = pageGrpPos * grpCnt + 1;
						var endPage = Math.min(countAllPage, (pageGrpPos + 1) * grpCnt);
						var pageHtm = '';
						for(var i = strPage; i <= endPage; i++){
							if(i == strPage){
								if(param.nowPage > 1){
									pageHtm += '<button class="movePage textBtn" now-page="'+(Number(param.nowPage) - 1)+'">이전으로</button>';
								} else {
									pageHtm += '<button class="disable textBtn">이전으로</button>';
								}
							}
							if(i == param.nowPage){
								pageHtm += '<button class="movePage pageBtn nowPage" now-page="'+i+'">'+i+'</button>';
							} else {
								pageHtm += '<button class="movePage pageBtn noNowPage" now-page="'+i+'">'+i+'</button>';	
							}
							if(i == endPage) {
								if(param.nowPage == countAllPage){
									pageHtm += '<button  class="disable textBtn">다음으로</button>';	
								} else {
									pageHtm += '<button class="movePage disable textBtn" now-page="'+(Number(param.nowPage) + 1)+'">다음으로</button>';
								}
							}
						}
					} else {
						html += '<tr><td colspan="6"><h2 style="text-align: center;">자료가 존재하지 않습니다.</h2></td></tr>';
					}
					$('.result').html(html);
					$('.paging').html(pageHtm);
					$('.movePage').off('click').on('click',function(){	// 페이지 이동
						var nowPage = $(this).attr('now-page');
						var param = {nowPage : nowPage, rowCnt : '5'};
						var $searchGroup = $('#report_sea').find('.search-form');
					    $searchGroup.each(function(idx,inp){
					    	param[$(inp).attr('name')] = $(inp).val();
					    });
					    if($('.selectBox').val() == '' ) {
					    	param.selectBoxAll = [];
					    	var $selectOptionGroup = $('.selectBox').find('option');
						    $selectOptionGroup.each(function(idx,inp){
						    	if ($(inp).val() != '') {
						    		param.selectBoxAll.push($(inp).val());
						    	}
						    });	
					    }
						getUserInfo(param);
					});
					$('.result').find('tr').off('click').on('click',function(){
						var param = {
							rep_idx: $(this).find('#rep_idx').text(),
							rep_title: $(this).find('#rep_title').text(),
							user_id: $(this).find('#user_id').text(),
							rep_content: $(this).find('#rep_content').text(),
							rep_date: $(this).find('#rep_date').text(),
							rep_ing: $(this).find('#rep_ing').text(),
							rep_ing_cde: $(this).find('#rep_ing_cde').val()
						};
						localStorage.setItem("param", JSON.stringify(param));
						location.href = '/getReportOneList.do';
						/* $.ajax({
							url : '/getReportOneList.do',
							data : param,
							data : JSON.stringify(param||{}),
							dataType : 'json',
							contentType: 'application/json; charset=utf-8',
							method : 'get',
							cache:false,
							success : function(res) {
								console.log(res);
							},
							error : function(xhr, status, error) {
								console.log(error);
								console.log(xhr);
								console.log(status);
							}
						}); */
					});
				},
				error : function(xhr, status, error) {
					console.log(error);
					console.log(xhr);
					console.log(status);
				}
			});
		};
		getUserInfo({nowPage : '1', rowCnt : '5'});	// 첫페이지에서 다섯개의 회원정보만 보이게 하기
		
		// 검색 버튼
		$('.searchBtn').off('click').on('click',function(){
		    var $searchGroup = $('#report_sea').find('.search-form');
		    var param = {};
		    $searchGroup.each(function(idx,inp){
		    	param[$(inp).attr('name')] = $(inp).val();
		    });
		    if($('.selectBox').val() == '' ) {
		    	param.selectBoxAll = [];
		    	var $selectOptionGroup = $('.selectBox').find('option');
			    $selectOptionGroup.each(function(idx,inp){
			    	if ($(inp).val() != '') {
			    		param.selectBoxAll.push($(inp).val());
			    	}
			    });	
		    }
		    param.nowPage = $('.nowPage').attr('now-page');
		    param.rowCnt = '5';
		    getUserInfo(param);
		});
		
		
		// 검색 초기화
		$('.resetBtn').off('click').on('click',function(){
			$('.search-form').val('');
			$('.selectBox').val('');
		});
	};
</script>
</html>