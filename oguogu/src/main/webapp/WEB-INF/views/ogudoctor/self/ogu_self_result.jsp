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
	h2,h4{
		font-family: 'IBMPlexSansKR-Regular';
	}
	#period{
		color: black;
		font-family: 'IBMPlexSansKR-Regular';
    	width: 1920px;
		text-align: center;
		margin: 0 auto;
		margin-top:50px;
		margin-bottom: 30px;
	}
	
    
    #disease_list{
    	color: black;
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
    
    <div id = period>
        <%-- <c:if test="${not empty param.option1}">
        	<p>${param.option1.split(',')[1]}</p>
    	</c:if>
    
	    <c:if test="${not empty param.option2}">
	        <p>${param.option2.split(',')[1]}</p>
	    </c:if>
	    
	    <c:if test="${not empty param.option3}">
	        <p>${param.option3.split(',')[1]}</p>
	    </c:if>
	    
	    <c:if test="${not empty param.option4}">
	        <p>${param.option4.split(',')[1]}</p>
	    </c:if> --%>
	    
	    <c:set var="maxValue" value="0" />
			<c:choose>
    			<c:when test="${not empty param.option1}">
        			<c:set var="value1" value="${param.option1.split(',')[1]}" />
        				<c:if test="${value1 > maxValue}">
            				<c:set var="maxValue" value="${value1}" />
        				</c:if>
    			</c:when>
			</c:choose>

			<c:choose>
    			<c:when test="${not empty param.option2}">
        			<c:set var="value2" value="${param.option2.split(',')[1]}" />
        				<c:if test="${value2 > maxValue}">
            				<c:set var="maxValue" value="${value2}" />
        				</c:if>
    			</c:when>
			</c:choose>

			<c:choose>
    			<c:when test="${not empty param.option3}">
        			<c:set var="value3" value="${param.option3.split(',')[1]}" />
        				<c:if test="${value3 > maxValue}">
            				<c:set var="maxValue" value="${value3}" />
        				</c:if>
    			</c:when>
			</c:choose>
			
			<c:choose>
    			<c:when test="${not empty param.option4}">
        			<c:set var="value4" value="${param.option4.split(',')[1]}" />
        				<c:if test="${value4 > maxValue}">
            				<c:set var="maxValue" value="${value4}" />
        				</c:if>
    			</c:when>
			</c:choose>

		<%-- <p>최대값은: ${maxValue}</p> --%>
		<c:choose>
    		<c:when test="${maxValue == 0}">
        		<p>선택하신 증상은 정상이며 추가증상이 없다면 병원에 방문하지 않으셔도 됩니다.</p>
    		</c:when>
    		
    		<c:when test="${maxValue == 1}">
        		<p>선택하신 증상은 최대한 빠르게 병원에 방문하시는 것을 추천 드립니다.</p>
    		</c:when>
    		
    		<c:when test="${maxValue == 2}">
        		<p>선택하신 증상은 하루 이상 지속 시 병원 방문이 필요합니다.</p>
    		</c:when>
		    
		    <c:otherwise>
		        <p>값이 존재하지 않습니다.</p>
		    </c:otherwise>
		</c:choose>
    </div>
    
    <div id=disease_list>
    	<h2>관련 질병 리스트:<br></h2>
    	<!-- option1,2,3,4가 NULL인지 아닌지 부터 구분 -->
    	<%-- <c:if test="${not empty param.option1}">
        	<p>${param.option1.split(',')[0]}</p>
    	</c:if>
    
	    <c:if test="${not empty param.option2}">
	        <p>${param.option2.split(',')[0]}</p>
	    </c:if>
	    
	    <c:if test="${not empty param.option3}">
	        <p>${param.option3.split(',')[0]}</p>
	    </c:if>
	    
	    <c:if test="${not empty param.option4}">
	        <p>${param.option4.split(',')[0]}</p>
	    </c:if> --%>
	    
	    <c:choose>
			<c:when test="${empty symlist1}">
				<p></p>
			</c:when>
			<c:otherwise>
				<h4>${param.option1.split(',')[0]}</h4>
				<c:forEach var="k" items="${symlist1}" varStatus="vs">
					<h4>${k.name}</h4>
				</c:forEach>
			</c:otherwise>
		</c:choose>
		
		<c:choose>
			<c:when test="${empty symlist2}">
				<p></p>
			</c:when>
			<c:otherwise>
				<h4>${param.option2.split(',')[0]}</h4>
				<c:forEach var="k" items="${symlist2}" varStatus="vs">
					<h4>${k.name}</h4>
				</c:forEach>
			</c:otherwise>
		</c:choose>
		
		<c:choose>
			<c:when test="${empty symlist3}">
				<p></p>
			</c:when>
			<c:otherwise>
				<h4>${param.option3.split(',')[0]}</h4>
				<c:forEach var="k" items="${symlist3}" varStatus="vs">
					<h4>${k.name}</h4>
				</c:forEach>
			</c:otherwise>
		</c:choose>
		
		<c:choose>
			<c:when test="${empty symlist4}">
				<p></p>
			</c:when>
			<c:otherwise>
				<h4>${param.option4.split(',')[0]}</h4>
				<c:forEach var="k" items="${symlist4}" varStatus="vs">
					<h4>${k.name}</h4>
				</c:forEach>
			</c:otherwise>
		</c:choose>
    </div>
    
    
    <footer>
		<jsp:include page="/WEB-INF/views/home/home_bottom.jsp" />
	</footer>
</body>
</html>