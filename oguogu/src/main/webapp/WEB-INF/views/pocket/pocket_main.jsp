<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>모두의 포켓 메인화면</title>
<<<<<<< HEAD
=======

<!-- Core theme CSS (includes Bootstrap)-->
<!-- <link href="css/styles.css" rel="stylesheet" /> -->
<link href="resources/css/start_bootstrap/styles.css" rel="stylesheet" />
>>>>>>> daece5ee1dde2d146bfb63d94105a6f52976785f
<style type="text/css">
	#minibanner img{
		width:1920px;
		height:200px;
		display:flex;
		margin:auto;
		margin-top:20px;
		margin-bottom: 20px;
    }
<<<<<<< HEAD
    
=======
    footer{
		width:1920px;
		display:flex;
		margin:auto;
		margin-top:20px;
		margin-bottom: 20px;
	}
>>>>>>> daece5ee1dde2d146bfb63d94105a6f52976785f
</style>
<script type="text/javascript">
</script>
</head>
<body>
	<header>
		<jsp:include page="/WEB-INF/views/home/home_top.jsp" />
	</header>
	
	<div id=minibanner>
<<<<<<< HEAD
        <a href=""><img src="resources/images/page_banner/listbanner_pocket.png"></a>
    </div>
    <div class="main">
    	<div class="hotlist_title">
    	<h3>지금 핫한 포켓 리스트<input type="button">+나의 포켓 만들기</h3>
    	</div>
    	
    </div>
    
=======
        <a href="/pocketmaindisplay.do"><img src="resources/images/page_banner/listbanner_pocket.png"></a>
    </div>
    
    <!-- Page Content-->
    <div class="container px-4 px-lg-5">
    
    	<!-- Heading Row-->
    	<!-- 나의 포켓 만들기 구역-->
        <div class="row gx-4 gx-lg-5 align-items-center my-5">
        	<!-- 나의 포켓 사진 -->
        	<div class="col-lg-7">
        		<img class="img-fluid rounded mb-4 mb-lg-0" src="https://dummyimage.com/900x400/dee2e6/6c757d.jpg" alt="..." />
        	</div>
        	<!-- 나의 포켓 내용 -->
        	<div class="col-lg-5">
        		<!-- 나의 포켓 만들기 제목 -->
            	<h1 class="font-weight-light">나만의 포켓 만들기</h1>
            	<!-- 나의 포켓 만들기 content -->
                <p>반려동물과 함께 갈 장소를 선택해 여행 플래너를 만들어 나만의 여행 포켓을 만들어봐요.  </p>
                <!-- 포켓 만들기 버튼 -->
                <a class="btn btn-primary" href="/gopocketform.do" style="background-color: #FFA629; border-color: #FFA629;">포켓 만들러 가기</a>
                <!-- 나의 포켓 리스트 보러가기 버튼 -->
                <a class="btn btn-primary" href="#!" style="background-color: #FFA629; border-color: #FFA629;">나의 포켓 리스트</a>
            </div>
         </div>
            
        <!-- Call to Action-->
        <!-- 이달의 best 포켓 배너 -->
        <div class="card text-white bg-secondary my-5 py-4 text-center">
        	<div class="card-body">
        		<p class="text-white m-0">이달의 Best 포켓</p>
        	</div>
        </div>
        <!-- Content Row-->
        <div class="row gx-4 gx-lg-5">
        	<div class="col-md-4 mb-5">
            	<div class="card h-100">
                	<div class="card-body">
                    	<h2 class="card-title">Card One</h2>
                    	<p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Rem magni quas ex numquam, maxime minus quam molestias corporis quod, ea minima accusamus.</p>
                    </div>
                    <div class="card-footer"><a class="btn btn-primary btn-sm" href="#!" style="background-color: #FFA629; border-color: #FFA629;">More Info</a></div>
                </div>
                </div>
                <div class="col-md-4 mb-5">
                    <div class="card h-100">
                        <div class="card-body">
                            <h2 class="card-title">Card Two</h2>
                            <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quod tenetur ex natus at dolorem enim! Nesciunt pariatur voluptatem sunt quam eaque, vel, non in id dolore voluptates quos eligendi labore.</p>
                        </div>
                        <div class="card-footer"><a class="btn btn-primary btn-sm" href="#!" style="background-color: #FFA629; border-color: #FFA629;">More Info</a></div>
                    </div>
                </div>
                <div class="col-md-4 mb-5">
                    <div class="card h-100">
                        <div class="card-body">
                            <h2 class="card-title">Card Three</h2>
                            <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Rem magni quas ex numquam, maxime minus quam molestias corporis quod, ea minima accusamus.</p>
                        </div>
                        <div class="card-footer"><a class="btn btn-primary btn-sm" href="#!" style="background-color: #FFA629; border-color: #FFA629;">More Info</a></div>
                    </div>
                </div>
            </div>
        </div>
    <footer>
		<jsp:include page="/WEB-INF/views/home/home_bottom.jsp" />
	</footer>
	
    <!-- Bootstrap core JS-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Core theme JS-->
   	<!--  <script src="js/scripts.js"></script> -->
    <script src="resources/js/start_bootstrap/scripts.js"></script>
>>>>>>> daece5ee1dde2d146bfb63d94105a6f52976785f
</body>
</html>