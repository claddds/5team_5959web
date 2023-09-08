<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	.eHwBqx {
    display: flex;
    width: 100%;
    flex-direction: column;
    -webkit-box-align: center;
    align-items: center;
    text-align: center;
    padding-top: 80px;
}
.fTvbXT {
    color: rgb(9, 9, 9);
    font-size: 28px;
    line-height: 1.35em;
    font-family: JalnanOTF;
    margin: 0px;
}
.edaEBF {
    color: rgb(78, 127, 28);
    font-size: inherit;
    line-height: inherit;
    white-space: nowrap;
}
.bpyGGm {
    text-align: center;
    margin-top: 40px;
    margin-bottom: 80px;
    background-color: rgb(254, 250, 238);
    border-radius: 14px;
    width: 620px;
    padding: 50px 40px;
    box-shadow: rgba(222, 222, 224, 0.65) 0px 12px 25px -20px;
    color: rgb(134, 134, 136);
    line-height: 1.75em;
    box-sizing: border-box;
}
footer{
	width:1920px;
	display:flex;
	margin:auto;
	margin-top:20px;
	margin-bottom: 20px;
}
.gWFIhC {
    position: relative;
    z-index: 1;
    height: 30px;
    padding: 0px 25px;
    font-size: 13px;
    line-height: 16px;
    font-weight: 500;
    text-decoration: none;
    color: rgb(134, 134, 136);
}
.huFlcW {
    position: relative;
    z-index: 1;
    height: 30px;
    padding: 0px 25px;
    font-size: 13px;
    line-height: 16px;
    text-decoration: none;
    color: rgb(9, 9, 9);
    background-color: rgb(255, 255, 255);
    font-weight: bold;
}
.ccSDWw {
    display: flex;
    -webkit-box-pack: center;
    justify-content: center;
    -webkit-box-align: center;
    align-items: center;
    height: 35px;
    border-bottom: 1px solid rgb(228, 228, 230);
    background-color: white;
}
</style>
</head>
<body>
	<header>
		<jsp:include page="/WEB-INF/views/home/home_top.jsp" />
	</header>
	<main class="sc-bCDidY kZZDuN recommendCalorieJsp">
	<div class="sc-ehsgIH ccSDWw">
			<div>
			<a class="sc-fbJfA huFlcW" href="/food.do">사료칼로리</a><a
				class="sc-fbJfA gWFIhC" href="/recommend.do">권장칼로리</a><a
				class="sc-fbJfA gWFIhC" href="/bmi.do">비만도</a><a
				class="sc-fbJfA gWFIhC" href="/age.do">나이</a>
			</div>
		</div>
	<div class="sc-vjKnw eHwBqx">
		<h2 class="sc-BKAtq fTvbXT">
			<span color="#4e7f1c" class="sc-hjsqBZ edaEBF">사료칼로리 계산</span> 결과
		</h2>
		<div class="sc-bjMMwb bpyGGm">
			<div class="sc-jnsZEu cMjZYO">
				<h4 class="sc-hVkBjg hISUjs">
					총 칼로리 <span color="#4e7f1c"
						class="sc-hjsqBZ sc-ejdXBC edaEBF erIlRj">352</span>kcal (100g 기준)
				</h4>
			</div>
		</div>
	</div>
	<footer>
		<jsp:include page="/WEB-INF/views/home/home_bottom.jsp" />
	</footer>
	</main>
</body>
</html>