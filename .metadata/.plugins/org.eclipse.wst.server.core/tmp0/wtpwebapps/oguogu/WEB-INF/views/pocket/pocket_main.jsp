<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>모두의 포켓 메인화면</title>
<style type="text/css">
	#minibanner img{
		width:1920px;
		height:200px;
		display:flex;
		margin:auto;
		margin-top:20px;
		margin-bottom: 20px;
    }
    
</style>
<script type="text/javascript">
</script>
</head>
<body>
	<header>
		<jsp:include page="/WEB-INF/views/home/home_top.jsp" />
	</header>
	
	<div id=minibanner>
        <a href=""><img src="resources/images/list_banner/minibanner_eduexplain.png"></a>
    </div>
    <div class="main">
    	<div class="hotlist_title">
    	<h3>지금 핫한 포켓 리스트<input type="button">+나의 포켓 만들기</h3>
    	</div>
    	
    </div>
    
</body>
</html>