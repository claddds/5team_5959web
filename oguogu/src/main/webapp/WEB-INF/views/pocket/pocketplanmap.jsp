<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>마이포켓 지도맵 보기</title>
<style>
#minibanner img{
		width:1920px;
		height:200px;
		display:flex;
		margin:auto;
		margin-top:20px;
		margin-bottom: 20px;
    }
    #distance{
		color: black;
    	width: 1920px;
		text-align: center;
		margin: 0 auto;
		margin-top:50px;
		margin-bottom: 30px;
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
function calculateDistance(lon1, lat1, lon2, lat2) {
    const earthRadius = 6371;  // 지구의 반지름 (단위: km)

    // 각도를 라디안으로 변환
    const lon1Rad = lon1 * (Math.PI / 180);
    const lat1Rad = lat1 * (Math.PI / 180);
    const lon2Rad = lon2 * (Math.PI / 180);
    const lat2Rad = lat2 * (Math.PI / 180);

    // 위도와 경도의 차이를 계산
    const deltaLon = lon2Rad - lon1Rad;
    const deltaLat = lat2Rad - lat1Rad;

    // 하버시인 공식을 사용하여 거리 계산
    const a = Math.sin(deltaLat / 2) * Math.sin(deltaLat / 2) +
              Math.cos(lat1Rad) * Math.cos(lat2Rad) *
              Math.sin(deltaLon / 2) * Math.sin(deltaLon / 2);
    const c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1 - a));
    const distance = earthRadius * c;

    return distance;
}

</script>
</head>
<body>
	<header>
		<jsp:include page="/WEB-INF/views/home/home_top.jsp" />
	</header>
	<div id=distance>
		 <%-- <c:choose>
			<c:when test="${not empty param.location_CheckBox}">
				<c:forEach var="val" items="${paramValues.location_CheckBox}">
					<c:set var="parts" value="${fn:split(val, ',')}" />
            		<p>선택된 facilities: ${parts[0]}</p>
            
            		<c:forEach var="coordinate" begin="1" items="${parts}">
                		<p>Coordinate: ${coordinate}</p>
            		</c:forEach>
            		<c:set var="nextIndex" value="${status.index + 1}" />
            <c:if test="${nextIndex < fn:length(paramValues.location_CheckBox)}">
                <c:set var="nextParts" value="${fn:split(paramValues.location_CheckBox[nextIndex], ',')}" />
                <script>
                    // 현재 장소와 다음 장소의 위도, 경도
                    const lat1 = parseFloat("${parts[1]}");
                    const lon1 = parseFloat("${parts[2]}");
                    const lat2 = parseFloat("${nextParts[1]}");
                    const lon2 = parseFloat("${nextParts[2]}");

                    // 거리 계산 함수 호출
                    const distance = calculateDistance(lon1, lat1, lon2, lat2);
                    console.log('거리: ' + distance.toFixed(2) + ' km');
                    document.write('<p>거리: ' + distance.toFixed(2) + ' km</p>');
                </script>
                <p>다음 장소의 시설명: ${nextParts[0]}</p>
            </c:if>
            		
				</c:forEach>
			</c:when>
			<c:otherwise>
				넘어온게 없음
			</c:otherwise>
		</c:choose>  --%>
		
		 <c:choose>
        <c:when test="${not empty param.location_CheckBox}">
            <c:forEach var="val" items="${paramValues.location_CheckBox}" varStatus="loop">
                <c:set var="parts" value="${fn:split(val, ',')}" />
                <p>선택된 facilities: ${parts[0]}</p>

                <c:if test="${loop.index < fn:length(paramValues.location_CheckBox) - 1}">
                    <c:set var="nextIndex" value="${loop.index + 1}" />
                    <c:set var="nextVal" value="${paramValues.location_CheckBox[nextIndex]}" />
                    <c:set var="nextParts" value="${fn:split(nextVal, ',')}" />

                    <script>
                        // 현재 장소와 다음 장소의 위도, 경도
                        const currentLat = parseFloat("${parts[1]}");
                        const currentLon = parseFloat("${parts[2]}");
                        const nextLat = parseFloat("${nextParts[1]}");
                        const nextLon = parseFloat("${nextParts[2]}");

                        // 거리 계산 함수 호출
                        const distance = calculateDistance(currentLon, currentLat, nextLon, nextLat);

                        document.write('<p>다음 장소와의 거리: ' + distance.toFixed(2) + ' km</p>');
                        document.write('<p>다음 장소의 시설명: ' + "${nextParts[0]}" + '</p>');
                    </script>
                </c:if>
            </c:forEach>
        </c:when>
        <c:otherwise>
            넘어온게 없음
        </c:otherwise>
    </c:choose>
	</div>
	
	
	
	
</body>
</html>