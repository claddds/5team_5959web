<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
#eduform {
	font-family: 'Noto Sans KR', sans-serif;
	width: 1920px;
	margin: auto;
}

#minibanner img {
	height: 200px;
	margin-top: 20px;
}


#menulist a {
	text-decoration: none;
}

#edumenu {
	background-color: #FFA629;
	box-sizing: border;
	border-radius: 8px;
	width: 900px;
	margin: auto;
}

#edumenu ul {
	display: flex;
	justify-content: center;
	margin: 30px;
	background-color: #ffa629;
	margin-bottom:30px;
}

#edumenu li:not(:first-child) a::before {
	content: "|";
	margin: 0 40px; /* 원하는 간격으로 설정 */
}

#edumenu a {
	color: #f8f8ff;
	font-size: 50px;
	text-decoration: none;
	font-family: 'Bagel Fat One', cursive;
}

.edu_img img {
	height: 300px;
	width: 350px;
	border-radius: 10px;
	margin-bottom:10px;
}

.edu-card {
	margin-left: 50px;
	border: 1px solid black;
	border-radius: 5px;
	height: 430px;
	width: 350px;
	padding: 5px;
	margin-botom: 10px;
}

.edu-card:hover{cursor:pointer;transform: scale(1.05);transition: transform 0.3s ease-in-out;
}

.edu_menu_title {
	font-size: 40px;
	margin-right:40px;
	margin-bottom:40px;
}

.edu_menu_title label {
	text-decoration: none;
	color: #ffa629;
}

.edu_menu_title button{
	background-color: #FFA629;
	color:#f8f8ff;
	border-radius: 10px;
	border:1px solid #FFA629;
	width: 120px;
	height:30px;
	font-size: 20px;
}
#eduform li{
	list-style-type: none;
}

.cardList{
	display: grid;
    grid-template-columns: repeat(4, 1fr); /* 4칸 그리드, 1fr은 비율을 나타냄 */
    gap: 20px; /* 간격 설정 */
    list-style: none;
    padding: 0;
    margin: 0;
}



.edu_title{
	white-space: nowrap;
	overflow: hidden;
    text-overflow: ellipsis;
    font-size:24px;
}

.edu_content{
	margin-right:5px;
	margin-top:5px;
	margin-bottom:5px;
	color:#868688;
	text-overflow: ellipsis;
	overflow : hidden;
	display: -webkit-box;
		-webkit-line-clamp: 2;
        -webkit-box-orient: vertical;
}



</style>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Bagel+Fat+One&family=Noto+Sans+KR&display=swap"
	rel="stylesheet">
</head>
<body>
	<header>
		<jsp:include page="../home/home_top.jsp" />
	</header>
	<main id="eduform">
		<div id=minibanner>
			<a href=""><img src="resources/images/list_banner/listbanner_edu.png"></a>
		</div>


			<div id="edumenu">
				<ul id="">
					<li><a href="">필수 정보</a></li>
					<li><a href="">양육 정보</a></li>
					<li><a href="">훈련 정보</a></li>
				</ul>
			</div>
			
				<div class="edu_menu_title">
					<label>초보 반려인들의 필수 상식 >></label> 
					<button onclick="">전체 보기</button>
				</div>
				
				<div>
				<ul class="cardList">
					<li>
					<div class="edu-card">
						<div id="essential">
							<div class="edu_img">
								<img src="resources/images/list_banner/minibanner_eduexplain.png">
							</div>
							<div class="edutext">
								<div class="edu_title">제목제목제목제목제목제목제목제목제목제목제목제목제목</div>
								<div class="edu_content">
									내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용
									내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용
								</div>
							</div>
						</div>
					</div>
					</li>
					
					<li>
						<div class="edu-card">
						<div id="essential">
							<div class="edu_img">
								<img src="resources/images/list_banner/minibanner_eduexplain.png">
							</div>
							<div class="edutext">
								<div class="edu_title">제목제목제목제목제목제목제목제목제목제목제목제목제목</div>
								<div class="edu_content">
									내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용
									내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용
								</div>
							</div>
						</div>
					</div>
					</li>
					<li>
						<div class="edu-card">
						<div id="essential">
							<div class="edu_img">
								<img src="resources/images/list_banner/minibanner_eduexplain.png">
							</div>
							<div class="edutext">
								<div class="edu_title">제목제목제목제목제목제목제목제목제목제목제목제목제목</div>
								<div class="edu_content">
									내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용
									내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용
								</div>
							</div>
						</div>
					</div>
					</li>
					<li>
						<div class="edu-card">
						<div id="essential">
							<div class="edu_img">
								<img src="resources/images/list_banner/minibanner_eduexplain.png">
							</div>
							<div class="edutext">
								<div class="edu_title">제목제목제목제목제목제목제목제목제목제목제목제목제목</div>
								<div class="edu_content">
									내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용
									내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용
								</div>
							</div>
						</div>
					</div>
					</li>
				</ul>
				</div>

			<div class="edu_menu_title">
				<label>반려 동물 잘 키우는 방법 >></label>
				<button onclick="">전체 보기</button>
			</div>
			
			<ul class="cardList">
				<li>
				<div class="edu-card">
						<div id="essential">
							<div class="edu_img">
								<img src="resources/images/list_banner/minibanner_eduexplain.png">
							</div>
							<div class="edutext">
								<div class="edu_title">제목제목제목제목제목제목제목제목제목제목제목제목제목</div>
								<div class="edu_content">
									내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용
									내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용
								</div>
							</div>
						</div>
				</div>
				</li>
				<li>
				<div class="edu-card">
						<div id="essential">
							<div class="edu_img">
								<img src="resources/images/list_banner/minibanner_eduexplain.png">
							</div>
							<div class="edutext">
								<div class="edu_title">제목제목제목제목제목제목제목제목제목제목제목제목제목</div>
								<div class="edu_content">
									내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용
									내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용
								</div>
							</div>
						</div>
				</div>
				</li>
				<li>
				<div class="edu-card">
						<div id="essential">
							<div class="edu_img">
								<img src="resources/images/list_banner/minibanner_eduexplain.png">
							</div>
							<div class="edutext">
								<div class="edu_title">제목제목제목제목제목제목제목제목제목제목제목제목제목</div>
								<div class="edu_content">
									내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용
									내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용
								</div>
							</div>
						</div>
				</div>
				</li>
				<li>
				<div class="edu-card">
						<div id="essential">
							<div class="edu_img">
								<img src="resources/images/list_banner/minibanner_eduexplain.png">
							</div>
							<div class="edutext">
								<div class="edu_title">제목제목제목제목제목제목제목제목제목제목제목제목제목</div>
								<div class="edu_content">
									내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용
									내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용
								</div>
							</div>
						</div>
				</div>
				</li>
			</ul>
			
			<div class="edu_menu_title">
				<label>훈련 방법 모음집 >></label>
				<button onclick="">전체 보기</button>
			</div>
			
			<ul class="cardList">
				<li>
				<div class="edu-card">
						<div id="essential">
							<div class="edu_img">
								<img src="resources/images/list_banner/minibanner_eduexplain.png">
							</div>
							<div class="edutext">
								<div class="edu_title">제목제목제목제목제목제목제목제목제목제목제목제목제목</div>
								<div class="edu_content">
									내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용
									내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용
								</div>
							</div>
						</div>
				</div>
				</li>
				<li>
				<div class="edu-card">
						<div id="essential">
							<div class="edu_img">
								<img src="resources/images/list_banner/minibanner_eduexplain.png">
							</div>
							<div class="edutext">
								<div class="edu_title">제목제목제목제목제목제목제목제목제목제목제목제목제목</div>
								<div class="edu_content">
									내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용
									내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용
								</div>
							</div>
						</div>
				</div>
				</li>
				<li>
				<div class="edu-card">
						<div id="essential">
							<div class="edu_img">
								<img src="resources/images/list_banner/minibanner_eduexplain.png">
							</div>
							<div class="edutext">
								<div class="edu_title">제목제목제목제목제목제목제목제목제목제목제목제목제목</div>
								<div class="edu_content">
									내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용
									내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용
								</div>
							</div>
						</div>
				</div>
				</li>
				<li>
				<div class="edu-card">
						<div id="essential">
							<div class="edu_img">
								<img src="resources/images/list_banner/minibanner_eduexplain.png">
							</div>
							<div class="edutext">
								<div class="edu_title">제목제목제목제목제목제목제목제목제목제목제목제목제목</div>
								<div class="edu_content">
									내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용
									내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용
								</div>
							</div>
						</div>
				</div>
				</li>
			</ul>
			
			
	</main>
</body>
</html>