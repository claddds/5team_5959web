<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
:root {
  --text-color: #f8f8ff;
  --background-color: #FFA629;
  --accent-color: #fff0f5;
}

* {
  margin: 0;
  padding: 0;
}

header a {
  text-decoration: none;
  color: var(--text-color);
}

.nav {
  background-color: var(--background-color);
  display: flex;
  align-items: center;
  padding: 20px 20px;
}

.menuimg {

}
 
.midmenu {
  list-style: none;
  display: flex;
  font-family: 'Bagel Fat One', cursive;
  margin-right: 20px;
}
	

ul.midmenu > li{
	font-size: 30px;
	display: inline-block;
	width:200px;
	padding: 10px 5px;
	text-align: center;
	position: relative;
}

ul.midmenu > li:hover ul.sub{
	display:block;	
}

ul.midmenu > li ul.sub li:hover{
	background-color: tomato;
}

ul.midmenu > li ul.sub{
	display: none;
	position: absolute;
	width:200px;
/* 	padding: 5px 10px; */
	text-align: center;
	background-color: var(--background-color);
	color: var(--text-color);
	list-style:none;
	margin : 10px 0 10px 0;
}

.topmenu {
  text-align: left;
  display: flex;
  justify-content: flex-end; /* 오른쪽 정렬을 추가 */
  height: 50px;
  align-items: center; /* 수직 가운데 정렬 추가 */
  list-style: none;
  color: #FFA629;
  font-family: 'Bagel Fat One', cursive;
  margin-bottom: 20px;
}


.topmenu li {
  font-size: 25px;
  position: relative;
  padding: 0 15px;
}


/* 메인로고 꾸밈 */
.mainlogo {
  display: flex;
  justify-content: center;
  align-items: center;
  height: 100px;
  margin-bottom: 40px;
}

.nav > div{
	margin-left:100px;
} 

</style>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Bagel+Fat+One&display=swap" rel="stylesheet">
</head>
<body>

<header style="width:1920px; position: relative; left: 50%; transform: translate(-50%);">
	
	<!-- 최상단 NOTICE,LOGIN,JOIN US -->
	<div>
	  <ul class="topmenu">
	    <li><a href="" style="color:tomato; display:none;">관리자 페이지</a></li><!-- id가 admin일 때 display:"" JS 처리  -->
	    <li><a href="" style="color:#FFA629;">NOTICE </a></li>
	    <li><a href="" style="color:#FFA629;">JOIN US</a></li>
	    <li><a href="" style="color:#FFA629;">LOGIN</a></li><!-- 로그인 했을 때 LOGIN => LOGOUT 변경 -->
	  </ul>
	</div>
	<!-- 5959 메인 로고 -->
	<div class="mainlogo">
	  <a href=""><img src="resources/images/home/mainlogo.png" width="200px"></a>
	</div>
	<section class="nav">
		<!-- 공백 div -->
		<div></div>
		   
		  <!-- 메뉴 -->
		  <ul class="midmenu">
			    <li><a href="">HOME</a></li>
			    <li class="edu_main"><a href="">교육정보</a>
			    	<ul class="edu sub">
			    		<li><a href="">필수 정보</a></li>
			    		<li><a href="">양육 정보</a></li>
			    		<li><a href="">훈련 정보</a></li>
			    	</ul>
			    </li>
			    <li class="ogu_main"><a href="">오구닥터</a>
			        <ul class="ogu sub">
			    		<li><a href="">건강 자가진단</a></li>
			    		<li><a href="">건강 계산기</a></li>
			    	</ul>
			    </li>
			    <li><a href="">플레이스</a></li>
			    <li><a href="">모두의 포켓</a></li>
			    <li class="lounge_main"><a href="">라운지</a>
			   		<ul class="lounge sub">
			    		<li><a href="">일상 공유</a></li>
			    		<li><a href="">추천 탭</a></li>
			    		<li><a href="">유저간 질문</a></li>
			    	</ul>
			    </li>
			    <li class="food_main"><a href="">먹거리</a>
			    	<ul class="food sub">
			    		<li><a href="">#강아지</a></li>
			    		<li><a href="">#고양이</a></li>
			    	</ul>
			    </li>
			    <li class="support_main"><a href="">고객지원</a>
			   		 <ul class="support sub">
			    		<li><a href="">공지사항</a></li>
			    		<li><a href="">문의사항</a></li>
			    		<li><a href="">신고</a></li>
			    	</ul>
			    </li>
		  </ul>
		  
		  <div></div>
		  
	</section>
</header>
</body>
</html>