<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>5구5구 회원정보</title>
<style type="text/css">
    body{
        line-height:2em;        
        font-family:"맑은 고딕";
}
    ul, li{ 
        list-style:none;
        text-align:center;
        padding:0;
        margin:0;
}

    #memberWrapper{
        width: 1130px;
        height: 1200px;
        margin: auto;
    }

    #memberWrapper > ul > li:first-child {
        text-align: center;
        font-size:14pt;
        height:40px;
        vertical-align:middle;
        line-height:30px;
}

    #ulTable {margin-top:20px; }
    

    #ulTable > li:first-child > ul > li {
       height: 40px;
        background-color: #FFA629;
        font-weight:bold;
        text-align:center;
        margin: auto;
       
}

    #ulTable > li > ul {
        clear:both;
        padding:0px auto;
        position:relative;
        min-width:70px;
}
    #ulTable > li > ul > li { 
        float:left;
        font-size:12pt;
        border-bottom:1px solid silver;
        vertical-align:baseline;
}    

    #ulTable > li > ul > li:first-child               {width:10%;} /*No 열 크기*/
    #ulTable > li > ul > li:first-child +li           {width:15%;} /*제목 열 크기*/
    #ulTable > li > ul > li:first-child +li+li        {width:10%;} /*첨부파일 열 크기*/
    #ulTable > li > ul > li:first-child +li+li+li     {width:15%;} /*작성일 열 크기*/
    #ulTable > li > ul > li:first-child +li+li+li+li  {width:10%;} /*작성자 열 크기*/
	#ulTable > li > ul > li:first-child +li+li+li+li+li  {width:10%;} /*조회수 열 크기*/
	#ulTable > li > ul > li:first-child +li+li+li+li+li+li  {width:15%;} /*조회수 열 크기*/
	#ulTable > li > ul > li:first-child +li+li+li+li+li+li+li  {width:10%;} /*조회수 열 크기*/
    #divPaging {
          clear:both; 
        margin:10px auto; 
        width:300px; 
        height:50px;
}

    #divPaging > div {
        float:left;
        width: 30px;
        margin:0 auto;
        text-align:center;
}


    .center {
        text-align : center;
}
	.yy {
		text-decoration: none;
		color: black;
	}
	
	.yy:hover {
		text-decoration: none;
		color: black;
		font-weight: bold;
	}
	
	#liSearchOption{
	
	float: right;
	border: 2px solid white;
	text-decoration: none;
            width: 600px;
            height: 200px;
            display: block;
            background-color: #FFA629;
            text-align: center;
            
            color: white;
            font-weight: bold;
            text-shadow: 1px 1px 2px #D1D1D1;
            font-size: 20pt;
           margin-right: 70px;
             border-radius:10px;
         
	}
	
	#title{
	text-decoration: none;
            width: 200px;
            height: 200px;
            display: block;
            background-color: white;
            text-align: center;
            
            color: #FFA629;
            font-weight: bold;
            
            text-shadow: 1px 1px 2px #D1D1D1;
            font-size: 20pt;
            border: 1px solid;
             border-radius:10px;
        	margin: 5px;
	}
	.user {
    text-decoration: none;
            width: 90px;
            height: 50px;
            display: block;
            background-color: #FFA629;
            text-align: center;
            
            color: white;
            font-weight: bold;
            
            text-shadow: 1px 1px 2px #D1D1D1;
            font-size: 7pt;
            border: 2px solid white;
             border-radius:10px;
}
	.admin {
    text-decoration: none;
            width: 90px;
            height: 50px;
            display: block;
            background-color: #FFA629;
            text-align: center;
            
            color: white;
            font-weight: bold;
            
            text-shadow: 1px 1px 2px #D1D1D1;
            font-size: 7pt;
            border: 2px solid white;
            border-radius:10px;
}



</style>
<script type="text/javascript" src="${ pageContext.servletContext.contextPath }/resources/js/jquery-3.6.3.min.js"></script>
<script type="text/javascript">
//로그인 제한/가능 라디오 체크가 변경되었을 때 실행되는 함수임
function changeLogin(element) {
	//선택한 radio의 name 속성의 이름에서 userid 분리 추출함
	var user_id = element.name.substring(9);
	console.log("changeLogin : " + user_id);
	if(element.checked == true && element.value == "N") {
		//로그인 제한을 체크했다면
		console.log("로그인 제한 체크함");
		location.href = "${ pageContext.servletContext.contextPath }/loginok.do?user_id=" + user_id + "&login_ok=N";
	}else{
		console.log("로그인 가능 체크함");
		location.href = "${ pageContext.servletContext.contextPath }/loginok.do?user_id=" + user_id + "&login_ok=Y";
	}
	
}
</script>
</head>
<body>
	<c:import url="../home/home_top.jsp" />

<div id="memberWrapper">

        <ul>
            <!-- 게시판 제목 -->
            <li id="title" style="float : left;">회원 정보 관리</li>
			 <button type="button" class="user" style="float: left;">사용자 정보관리</button>
			 <button type="button" class="admin"style="float: left;">관리자 정보관리</button>
		
            <!-- 게시판 목록  -->
            <li>
             <!-- 검색 폼 영역 -->
     <div id='liSearchOption'>
     	<form action="" method="post">
         <div style=" border: 1px solid ;">
		<div style="width: 30%; border: 3px solid #D1D1D1;">회원 검색</div>

         </div>
         <select name="type" >
                      <option value="id">아이디</option>
                 <option value="email">이메일</option>
             </select>
                      <input type="search" name="keyword">
            <hr>
              <select name="date" >
                 <option value="join">가입일</option>
                 </select>
                 <input type="date">
                 
                 <select name="date" >
                 <option value="end">탈퇴일</option>
             </select>
            <input type="date">
            
          <input type="submit" value="검색">
         </form>
      </div>
                <ul id ="ulTable">
                    <li>
                        <ul>
                            <li>이름</li>
                            <li class="center">아이디</li>
                            <li>닉네임</li>
                            <li>이메일</li>
                            <li>가입일</li>
                            <li>탈퇴일</li>
                            <li>회원유형</li>
                            <li>탈퇴여부</li>
                        </ul>
                    </li>
                    <!-- 게시물이 출력될 영역 -->
                <c:forEach items="${ list }" var="m">
                	<li>
                		<ul>
                			<li>${ naem }</li>
                            <li class="center">${ id} </li>
                            <li>${user_nickname}</li>
                            <li>${email}</li>
                            <li>${m.birth}</li>
                            <li>${m.email}</li>
                            <li class="center">${m.join_date}</li>
                            <li class="center">${m.gender}</li>
                            <li class="center">
                            	<c:if test="${ m.login_ok eq 'Y' }">
									<input type="radio" name="login_ok_${ m.user_id }" value="Y" checked onchange="changeLogin(this);"> 가능 &nbsp;
									<input type="radio" name="login_ok_${ m.user_id }" value="N"  onchange="changeLogin(this);"> 제한
								</c:if>
								<c:if test="${ m.login_ok eq 'N' }">
									<input type="radio" name="login_ok_${ m.user_id }" value="Y"  onchange="changeLogin(this);"> 가능 &nbsp;
									<input type="radio" name="login_ok_${ m.user_id }" value="N" checked onchange="changeLogin(this);"> 제한
								</c:if>
                            </li>
                		</ul>
                	</li>
                </c:forEach>                       
                </ul>
            </li>              
                         </ul>
                         </div>

	   

	
	
	
	
</body>
</html>