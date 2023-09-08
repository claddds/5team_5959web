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
h2 {
    display: block;
    font-size: 1.5em;
    margin-block-start: 0.83em;
    margin-block-end: 0.83em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    font-weight: bold;
}
.hgkyti {
    color: rgb(88, 67, 190);
    font-size: inherit;
    line-height: inherit;
    white-space: nowrap;
}
.eHAyot {
    text-align: center;
    margin-top: 40px;
    margin-bottom: 80px;
    background-color: rgb(247, 244, 255);
    border-radius: 14px;
    width: 620px;
    padding: 50px 40px;
    box-shadow: rgba(222, 222, 224, 0.65) 0px 12px 25px -20px;
    color: rgb(134, 134, 136);
    line-height: 1.75em;
    box-sizing: border-box;
}
div {
    display: block;
}
.dpFNWh {
    display: flex;
    flex-direction: row;
    text-align: left;
    margin-bottom: 30px;
    -webkit-box-pack: center;
    justify-content: center;
}
.lesjVg {
    display: flex;
    flex-direction: column;
    text-align: left;
}
.hISUjs {
    color: rgb(9, 9, 9);
    font-size: 16px;
    line-height: 1.416em;
    font-family: JalnanOTF;
    margin: 0px;
}
h4 {
    display: block;
    margin-block-start: 1.33em;
    margin-block-end: 1.33em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    font-weight: bold;
}
.biUFlm {
    font-size: 28px;
    line-height: 38px;
}
.hgkyti {
    color: rgb(88, 67, 190);
    font-size: inherit;
    line-height: inherit;
    white-space: nowrap;
}
.lesjVg:last-child {
    margin-left: 60px;
}
.lesjVg {
    display: flex;
    flex-direction: column;
    text-align: left;
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
	<main class="sc-bCDidY kZZDuN">
		<div>
			<div class="sc-ehsgIH ccSDWw">
				<div >
					<a class="sc-fbJfA gWFIhC" href="/food.do">사료칼로리</a><a
						class="sc-fbJfA huFlcW" href="/recommend.do">권장칼로리</a><a
						class="sc-fbJfA gWFIhC" href="/bmi.do">비만도</a><a
						class="sc-fbJfA gWFIhC" href="/age.do">나이</a>
				</div>
			</div>
		</div>
		<div class="sc-vjKnw eHwBqx">
			<h2 class="sc-BKAtq fTvbXT">
				<span color="#5843be" class="sc-hjsqBZ hgkyti">권장칼로리</span> 결과
			</h2>
			<div class="sc-bjMMwb eHAyot">
				<div class="sc-iERabD dpFNWh">
					<div class="sc-iqavZe lesjVg">
						<h4 class="sc-hVkBjg hISUjs">1일 권장 칼로리</h4>
						<h4 color="#090909" class="sc-hVkBjg hISUjs">
							<span color="#5843be" class="sc-hjsqBZ sc-eXHjAa hgkyti biUFlm">409.50</span>
							kcal
						</h4>
					</div>
					<div class="sc-iqavZe lesjVg">
						<h4 class="sc-hVkBjg hISUjs">1일 기초 대사량</h4>
						<h4 color="#090909" class="sc-hVkBjg hISUjs">
							<span color="#5843be" class="sc-hjsqBZ sc-eXHjAa hgkyti biUFlm">204.75</span>
							kcal
						</h4>
					</div>
				</div>
				<p>
					건강 상태, 비만도에 따라 달라질 수 있으니<br>정확한 섭취량은 수의사와 상담해보세요.
				</p>
			</div>
		</div>
	</main>
	<footer>
		<jsp:include page="/WEB-INF/views/home/home_bottom.jsp" />
	</footer>
</body>
</html>