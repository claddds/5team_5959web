<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!doctype html>
<html lang="en" style="width: 100%; overflow-x: hidden;">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>회원관리 (관리자 화면)</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<style type="text/css">
#admin_user_title {
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
	cursor:not-allowed;
}

.now {
	/* padding: 3px 7px; */
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

#admin_sea {
	display: flex; padding-top : 15px;
	padding-bottom: 15px;
	border-bottom: 1px solid #bcc;
	padding-top: 15px;
}

.admin_user_sea:hover {
	background: white;
	color: blcak;
}

.admin_user_re:hover {
	background: white;
	color: blcak;
}

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
			<p id="admin_user_title">회원 관리</p>
		</div>
		<div id="admin_sea">
			<div style="margin-right: 20px;">
				<span>가입기간선택</span> 
				<input type="date" class="search-form" name="startDate" style="height: 30px; border: 1px solid #bcc; border-radius: 5px;" />
				~ 
				<input type="date" class="search-form" name="endDate" style="height: 30px; border: 1px solid #bcc; border-radius: 5px;" />
			</div>
			<div>
				<span>검색조건</span> 
				<select class="search-form selectBox" name="searchOption" style="width: 100px; height: 30px; border-radius: 5px; border: 1px solid #bcc;">
					<option value="">전체</option>
					<option value="user_id">아이디</option>
					<option value="email">이메일 주소</option>
					<option value="type">회원 유형</option>
				</select>
				 <input type="text" class="search-form" name="colVal" placeholder="검색어 입력"style="border-top-left-radius: 5px; border-bottom-left-radius: 5px; border: 1px solid #bcc; height: 30px;" />
			</div>
			<div>
				<button class="admin_user_sea searchBtn" style="border: none; height: 30px; background: #FFA629; border-top-right-radius: 5px; border-bottom-right-radius: 5px;">검색</button>
				<button class="admin_user_re resetBtn" style="border: none; height: 30px; background: #FFA629; border-radius: 5px; margin-left: 20px;">검색 초기화</button>
				<button class="admin_user_re reBtn" style="border: none; height: 30px; background: tomato; border-radius: 5px; margin-left: 20px;">영구정지</button>
				<button class="admin_user_re changeBtn" style="border: none; height: 30px; background: tomato; border-radius: 5px; margin-left: 20px;">관리자전환</button>
			</div>
		</div>
		<div class="admin_user_list" style="display: flex;">
			<table class="table">
				<colgroup>
					<col width="40px" />
					<col width="140px" />
					<col width="140px" />
					<col width="140px" />
					<col width="140px" />
					<col width="140px" />
					<col width="140px" />
					<col width="140px" />
				</colgroup>
				<thead>
					<tr>
						<th scope="col"></th>
						<th scope="col">아이디</th>
						<th scope="col">닉네임</th>
						<th scope="col">이메일</th>
						<th scope="col">회원유형</th>
						<th scope="col">가입 날짜</th>
						<th scope="col">탈퇴 날짜</th>
						<th scope="col">유지</th>
					</tr>
				</thead>
				<tbody class="result">
				
				</tbody>
				<tfoot>
					<!-- 페이징  기법 -->
					<tr class="pageingWrap">
						<td colspan="8" class="pageingBtnGroup">
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
						url : '/getUserData.do',
						data : param,
						data : JSON.stringify(param||{}),
						dataType : 'json', /*html, text, json, xml, script*/
						contentType: 'application/json; charset=utf-8',
						method : 'post',
						cache:false,
						success : function(res) {
							console.log(res.ulist);
							var html = '';
							if (res.ulist.length > 0) {
								for (var i = 0; i < res.ulist.length; i++) {
									html += '<tr>';
									html += '<td><input type="checkbox" user-id="'+res.ulist[i].user_id+'"/></td>'
									html += '<td>' + res.ulist[i].user_id
											+ '</td>';
									html += '<td>' + res.ulist[i].nickname
											+ '</td>';
									html += '<td>' + res.ulist[i].email
											+ '</td>';
									html += '<td>' + res.ulist[i].type
											+ '</td>';
									html += '<td>' + res.ulist[i].initdate
											+ '</td>';
									html += '<td>' + res.ulist[i].enddate
											+	'</td>';
									html += '<td>' + res.ulist[i].status
											+ '</td>';
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
								html += '<tr><td colspan="8"><h2 style="text-align: center;">자료가 존재하지 않습니다.</h2></td></tr>';
							}
							$('.result').html(html);
							$('.paging').html(pageHtm);
							$('.movePage').off('click').on('click',function(){	// 페이지 이동
								var nowPage = $(this).attr('now-page');
								var param = {nowPage : nowPage, rowCnt : '5'};
								var $searchGroup = $('#admin_sea').find('.search-form');
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
		    var $searchGroup = $('#admin_sea').find('.search-form');
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
		
		// 영구정지 버튼
		$('.reBtn').off('click').on('click',function(){
			var $checkBoxGroup = $('.result').find('input');
			var param = {};
			param.userIdList = [];
			$checkBoxGroup.each(function(idx,inp){
				if($(inp).is(':checked') == true){
					param.userIdList.push($(inp).attr('user-id'));
				}
			});
			
			$.ajax({
				url : '/setUserReport.do',
				data : param,
				data : JSON.stringify(param||{}),
				dataType : 'json', /*html, text, json, xml, script*/
				contentType: 'application/json; charset=utf-8',
				method : 'post',
				cache:false,
				success : function(res) {
					alert('정상적으로 처리되었습니다.');
					getUserInfo({nowPage : '1', rowCnt : '5'});
				},
				error : function(xhr, status, error) {
					console.log(error);
					console.log(xhr);
					console.log(status);
				}
			});
		});
		
		// 관리자 전환 버튼
		$('.changeBtn').off('click').on('click',function(){
			var $checkBoxGroup = $('.result').find('input');
			var param = {};
			param.userIdList = [];
			$checkBoxGroup.each(function(idx,inp){
				if($(inp).is(':checked') == true){
					param.userIdList.push($(inp).attr('user-id'));
				}
			});
			
			$.ajax({
				url : '/setUserChangeManager.do',
				data : param,
				data : JSON.stringify(param||{}),
				dataType : 'json', /*html, text, json, xml, script*/
				contentType: 'application/json; charset=utf-8',
				method : 'post',
				cache:false,
				success : function(res) {
					alert('정상적으로 처리되었습니다.');
					getUserInfo({nowPage : '1', rowCnt : '5'});
				},
				error : function(xhr, status, error) {
					console.log(error);
					console.log(xhr);
					console.log(status);
				}
			});
		});
	};
</script>
</html>