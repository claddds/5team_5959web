<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>모두의 포켓 메인화면</title>
<link href="resources/css/start_bootstrap/styles.css" rel="stylesheet" />
<style type="text/css">
	a:hover {
  		color: white;
	}
	
	#minibanner img{
		width:1920px;
		height:200px;
		display:flex;
		margin:auto;
		margin-top:20px;
		margin-bottom: 20px;
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
        <a href="/pocketmaindisplay.do"><img src="resources/images/page_banner/listbanner_pocket.png"></a>
    </div>
    
    <!-- Page Content-->
    <div class="container px-4 px-lg-5">
    
    	<!-- Heading Row-->
    	<!-- 나의 포켓 만들기 구역-->
        <div class="row gx-4 gx-lg-5 align-items-center my-5">
        	<!-- 나의 포켓 사진 -->
        	<div class="col-lg-7">
        		<img class="img-fluid rounded mb-4 mb-lg-0" src="resources/images/home/mainbanner_pocket.png" alt="..." />
        	</div>
        	<!-- 나의 포켓 내용 -->
        	<div class="col-lg-5">
        		<!-- 나의 포켓 만들기 제목 -->
            	<h1 class="font-weight-light" style="color: black;">나만의 포켓 만들기</h1>
            	<!-- 나의 포켓 만들기 content -->
                <p style="color: black;">반려동물과 함께 갈 장소를 선택해 여행 플래너를 만들어 나만의 여행 포켓을 만들어봐요.  </p>
                <!-- 포켓 만들기 버튼 -->
                <a class="btn btn-primary" href="/pocketform_search_go.do" style="background-color: #FFA629; border-color: #FFA629;">포켓 만들러 가기</a>
                <!-- 나의 포켓 리스트 보러가기 버튼 -->
                <a class="btn btn-primary" href="#!" style="background-color: #FFA629; border-color: #FFA629;">나의 포켓 리스트</a>
            </div>
         </div>
         
       </div>
        
    <footer>
		<jsp:include page="/WEB-INF/views/home/home_bottom.jsp" />
	</footer>
	
    <!-- Bootstrap core JS-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Core theme JS-->
    <script src="resources/js/start_bootstrap/scripts.js"></script>
</body>
</html>