<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자가진단 - 결과</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
<style type="text/css">
	#minibanner img{
		width:1920px;
		height:200px;
		display:flex;
		margin:auto;
		margin-top:20px;
		margin-bottom: 20px;
    }
    
    @font-face {
    font-family: 'IBMPlexSansKR-Regular';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-07@1.0/IBMPlexSansKR-Regular.woff') format('woff');
    font-weight: normal;
    font-style: normal;
	}
	
    #period_ex{
    	font-family: 'IBMPlexSansKR-Regular';
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
	/* 선택한 값에 따라 기간경고 선택하기 */
	// 페이지 로드 시 자동으로 데이터 불러오기
	
	
</script>
</head>
<body>
	<header>
		<jsp:include page="/WEB-INF/views/home/home_top.jsp" />
	</header>
	
	<div id=minibanner>
        <a href="/ogudoctormaindisplay.do"><img src="resources/images/page_banner/listbanner_ogudoctor.png"></a>
    </div>
    
    <div id=period_ex>
    	<!-- option1,2,3,4가 NULL인지 아닌지 부터 구분 -->
    	
    </div>
    
    <div>
    	<h1>폼 데이터 결과</h1>
    	<p><%= request.getParameter("option1") %></p>
    	<p><%= request.getParameter("option2") %></p>
    	<p><%= request.getParameter("option3") %></p>
    	<p><%= request.getParameter("option4") %></p>
    </div>
    
    <footer>
		<jsp:include page="/WEB-INF/views/home/home_bottom.jsp" />
	</footer>
</body>
</html>