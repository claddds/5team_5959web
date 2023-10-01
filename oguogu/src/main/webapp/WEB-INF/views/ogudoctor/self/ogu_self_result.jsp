<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자가진단 - 결과</title>
<link href="resources/css/start_bootstrap/styles.css" rel="stylesheet" />
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
    	width: 1920px;
		text-align: center;
		margin: 0 auto;
		margin-top:50px;
		margin-bottom: 30px;
    }
    
    a:hover {
	color: white;
	text-decoration: none;
	}
    
    .card-body{
    	width: 1200px;
    	margin: 0 auto;
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
	
	
</script>
</head>
<body>
	<header>
		<jsp:include page="/WEB-INF/views/home/home_top.jsp" />
	</header>
	
	<div id=minibanner>
        <a href="/ogudoctormaindisplay.do"><img src="resources/images/page_banner/listbanner_ogudoctor.png"></a>
    </div>
    
    <div class="card text-white bg-secondary my-5 py-4 text-center">
    	<div class="card-body">
        	<p class="text-white m-0">
        		이달의 Best 포켓
        	</p>
    	</div>
    </div>
    
    <div id=period_ex>
    	<!-- option1,2,3,4가 NULL인지 아닌지 부터 구분 -->
    	<c:if test="${not empty param.option1}">
        	<p>${param.option1}</p>
    	</c:if>
    
	    <c:if test="${not empty param.option2}">
	        <p>${param.option2}</p>
	    </c:if>
	    
	    <c:if test="${not empty param.option3}">
	        <p>${param.option3}</p>
	    </c:if>
	    
	    <c:if test="${not empty param.option4}">
	        <p>${param.option4}</p>
	    </c:if>
    </div>
    
    
    <footer>
		<jsp:include page="/WEB-INF/views/home/home_bottom.jsp" />
	</footer>
</body>
</html>