<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>마이페이지 공통사항</title>
<style type="text/css">
	body{
		font-family: 'Noto Sans KR', sans-serif;
	}
	#mypage{
		color:#FFA629;
		font-size:60px;
		margin-bottom:50px;
		font-family: 'Noto Sans KR', sans-serif;
	}
	
	.sidebar-list-group{
		width:320px;
	}
	.sidebar-list-title{
		list-style-type: none;
		font-size:40px;
		color:#FFA629;
	}
	.sidebar-list-item {
		list-style-type: none;
		margin-left:20px;
	} 
	.sidebar-list-item-a{
		font-size:30px;
		color:#D9D9D9;
		text-decoration: none;
		margin-left:20px;
		padding:0 10px;
		border-radius:10px;
	}
	.sidebar-list-title,.sidebar-list-item{
		margin:10px;
	}
     /* 선택된 링크의 스타일 */
    .selected {
        background-color: #FFA629;
        color: white;
    }
</style>
<script src="https://code.jquery.com/jquery-3.6.0.min.js" crossorigin="anonymous"></script>
 <script type="text/javascript">
        $(document).ready(function() {
            // 페이지 로드 시 저장된 클릭한 링크의 인덱스를 가져옵니다.
            var clickedLinkIndex = localStorage.getItem("clickedLinkIndex");

            // 모든 링크에 대한 jQuery 객체를 가져옵니다.
            var links = $(".sidebar-list-item a");

            // 클릭한 링크의 색상을 변경하고 유지합니다.
            if (clickedLinkIndex !== null) {
                links.eq(clickedLinkIndex).addClass("selected");
            }

            // 링크를 클릭했을 때 실행할 함수
            links.click(function(event) {
                // 클릭한 링크의 인덱스를 가져옵니다.
                var clickedIndex = links.index(this);

                // 클릭한 링크의 색상을 변경하고 유지합니다.
                links.removeClass("selected"); // 모든 링크의 선택 상태를 초기화합니다.
                $(this).addClass("selected"); // 클릭한 링크에 선택 상태를 적용합니다.

                // 클릭한 링크의 인덱스를 로컬 스토리지에 저장합니다.
                localStorage.setItem("clickedLinkIndex", clickedIndex);
            });
        });
 </script>
</head>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Bagel+Fat+One&family=Noto+Sans+KR&display=swap" rel="stylesheet">
<body>

	<div class="sidebar-list-group">
		<div id="mypage">마이 페이지</div>
		<ul class="li-group">
		  <li class="sidebar-list-title">프로필</li>
		  <li class="sidebar-list-item"><a href="/mypagedisplay.do" class="sidebar-list-item-a">내 프로필</a></li>
		  <li class="sidebar-list-item"><a href="/mypagePetProfile.do" class="sidebar-list-item-a">반려 동물 프로필</a></li><hr>
		  <li class="sidebar-list-title">즐겨찾기</li>
		  <li class="sidebar-list-item"><a href="/myfavedu.do" class="sidebar-list-item-a">교육</a></li>
		 <!--  <li class="sidebar-list-item"><a href="/myfavfood.do" class="sidebar-list-item-a">먹거리</a></li><hr> -->
		  <li class="sidebar-list-title">내가 작성한 글</li>
		  <li class="sidebar-list-item"><a href="/myWriteLounge.do" class="sidebar-list-item-a">라운지</a></li>
		  <li class="sidebar-list-item"><a href="/myWriteComment.do" class="sidebar-list-item-a">나의 댓글</a></li>
		</ul>
	</div>
			
</body>
</html>