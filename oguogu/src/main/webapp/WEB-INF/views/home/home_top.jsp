<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

.header-ALink {
  text-decoration: none;
  color: #f8f8ff;
}

.top-nav {
  background-color: #FFA629;
  display: flex;
  align-items: center;
  padding: 20px 20px;
}

 
.midmenu {
  list-style: none;
  font-family: 'Bagel Fat One', cursive;
  margin:auto;
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
	border-radius:10px;
	padding:0;
}

ul.midmenu > li ul.sub li:hover{
	background-color: tomato;
	border-radius:10px;
}

ul.midmenu > li ul.sub{
 	display: none; 
	position: absolute;
	width:200px;
	text-align: center;
	background-color: #FFA629;
	color: #f8f8ff;
 	list-style:none; 
	margin : 10px 0 10px 0px;
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

</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
<script type="text/javascript">
console.log("세션정보 " + ${sessionScope.type == 0});
    var loginChk = "";
    $(document).ready(function(){
    	loginChk = "${loginChk}";
        if(loginChk == "fail"){
           alert("비밀번호가 올바르지 않습니다.다시 확인해 주세요.")
           location.href="/clearSession.do"
        }else if(loginChk == "nonono"){
           alert("가입한 아이디가 없습니다.")
           location.href="/clearSession.do"
        }
        
        
         $("#logout_go").on("click", function() {
        	 alert("로그아웃 되었습니다.");
        })  
       
    });
</script>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Bagel+Fat+One&display=swap" rel="stylesheet">
</head>
<body style="font-family: 'Noto Sans KR', sans-serif;">

<header id="top_head" style="width:1920px; position: relative; left: 50%; transform: translate(-50%);">
	
	<!-- 최상단 NOTICE,LOGIN,JOIN US -->
	<div>
	  <ul class="topmenu">   
	    <c:choose>
	  		<c:when test="${loginChk eq 'ok'}">
	  			<c:if test="${sessionScope.type == 0}">
			        <li><a href="/adminuserdisplay.do" style="color:#FFA629; " class="header-ALink">관리자페이지 </a></li>
	    		</c:if>
        	</c:when>    
        </c:choose>
		<c:choose>
	    	<c:when test="${loginChk eq 'ok'  }">
	    	<c:if test="${sessionScope.type != 0}">
	    	<li><a href="/sup_list.do" style="color:#FFA629;" class="header-ALink">NOTICE </a></li>
	    		<li><a href="/mypagedisplay.do" style="color:#FFA629;" class="header-ALink" id="mypage_go">MYPAGE</a></li><!-- 로그인 했을 때 LOGIN => LOGOUT 변경 -->    
			     </c:if>
			     <li><a href="/user_logout.do" style="color:#FFA629;" class="header-ALink" id="logout_go">LOGOUT</a></li>
	    	</c:when>
	    	<c:otherwise>
			     <li><a href="/joindisplay.do" style="color:#FFA629;" class="header-ALink">JOIN US</a></li>
	   			 <li><a href="/logindisplay.do" style="color:#FFA629;" class="header-ALink" id="login_go">LOGIN</a></li><!-- 로그인 했을 때 LOGIN => LOGOUT 변경 -->
	    	</c:otherwise>
	    </c:choose>
	  </ul>
	</div>
	<!-- 5959 메인 로고 -->
	<div class="mainlogo">
	  <a href="/homedisplay.do"><img src="resources/images/home/mainlogo.png" width="200px"></a>
	</div>
	<section class="top-nav">
		   
		  <!-- 메뉴 -->
		  <ul class="midmenu">
			    <li><a href="/homedisplay.do" class="header-ALink">HOME</a></li>
			    <li class="edu_main"><a href="/alledudisplay.do" class="header-ALink">교육정보</a>
			    	<ul class="edu sub">
			    		<li><a href="/essentialdisplayDog.do" class="header-ALink">필수 정보</a></li>
			    		<li><a href="/bringingdisplayDog.do" class="header-ALink">양육 정보</a></li>
			    		<li><a href="/trainingdisplayDog.do" class="header-ALink">훈련 정보</a></li>
			    	</ul>
			    </li>
			    <li class="ogu_main"><a href="/ogudoctormaindisplay.do" class="header-ALink">오구닥터</a>
			        <ul class="ogu sub">
			    		<li><a href="/ogudoctormaindisplay.do" class="header-ALink">건강 자가진단</a></li>
			    		<li><a href="/ogudoctorcaldisplay.do" class="header-ALink">건강 계산기</a></li>
			    	</ul>
			    </li>
			    <li><a href="/placemaindisplay.do" class="header-ALink">플레이스</a></li>
			    <li><a href="/pocketmaindisplay.do" class="header-ALink">모두의 포켓</a></li>
			    <li class="lounge_main"><a href="/lounge_list.do" class="header-ALink">라운지</a>
			   		<ul class="lounge sub">
			    		<li><a href="/lounge_share_list.do" class="header-ALink">일상 공유</a></li>
			    		<li><a href="/lounge_recomm_list.do" class="header-ALink">추천 탭</a></li>
			    		<li><a href="/lounge_qna_list.do" class="header-ALink">유저간 질문</a></li>
			    	</ul>
			    </li>
			    <li class="food_main"><a href="/dogfooddisplay.do" class="header-ALink">먹거리</a>
			    	<ul class="food sub">
			    		<li><a href="/dogfooddisplay.do" class="header-ALink">#강아지</a></li>
			    		<li><a href="/catfooddisplay.do" class="header-ALink">#고양이</a></li>
			    	</ul>
			    </li>
			   <li class="support_main"><a href="/sup_list.do" class="header-ALink">고객지원</a>
                        <ul class="support sub">
                        <li><a href="/sup_list.do" class="header-ALink">공지사항</a></li>
                        <li><a href="/faq_list.do" class="header-ALink">자주묻는질문</a></li>
                        <li><a href="/userqna_list.do" class="header-ALink">1:1문의</a></li>
                        <li><a href="/rep_list.do" class="header-ALink">신고</a></li>
                    </ul>
                </li>
		  </ul>
		  
		  <div></div>
		  
	</section>
	</header>
</body>
</html>