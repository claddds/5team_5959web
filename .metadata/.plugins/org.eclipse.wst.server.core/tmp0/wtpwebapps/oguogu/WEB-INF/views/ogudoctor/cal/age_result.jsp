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
.fCNIuD {
    text-align: center;
    margin-top: 40px;
    margin-bottom: 80px;
    background-color: rgb(255, 243, 229);
    border-radius: 14px;
    width: 620px;
    padding: 50px 40px;
    box-shadow: rgba(222, 222, 224, 0.65) 0px 12px 25px -20px;
    color: rgb(134, 134, 136);
    line-height: 1.75em;
    box-sizing: border-box;
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
.bNwkas {
    font-size: 28px;
    line-height: 38px;
    color: rgb(242, 152, 51);
}
.eTgrRq {
    color: rgb(242, 152, 51);
    font-size: inherit;
    line-height: inherit;
    white-space: nowrap;
}
.fCNIuD p {
    margin: 0px;
}
.dZlziL {
    color: rgb(134, 134, 136);
    font-size: 16px;
    line-height: 1.75em;
    font-family: "Apple SD Gothic Neo";
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
	#minibanner img{
        margin-top:20px;
        width:1920px;
        height:200px;
        display:flex;
        margin:auto;
    }
    footer{
	width:1920px;
	display:flex;
	margin:auto;
	margin-top:20px;
	margin-bottom: 20px;
}
</style>
</head>
<body>
<header>
        	<jsp:include page="/WEB-INF/views/home/home_top.jsp" />
    	</header>
	<main class="sc-bCDidY kZZDuN">
	<div>
			<!-- <div class="sc-ehsgIH ccSDWw"></div>
				<div>
						<a class="sc-fbJfA huFlcW" href="/food.do">사료칼로리</a><a
							class="sc-fbJfA gWFIhC" href="/recommend.do">권장칼로리</a><a
							class="sc-fbJfA gWFIhC" href="/bmi.do">비만도</a><a
							class="sc-fbJfA gWFIhC" href="/age.do">나이</a>
				</div> -->
			<div id=minibanner>
            <a href=""><img src="/resources/images/list_bannner/listbanner_ogudoctor.png"></a>
        </div>


 
				
		</div>
		<div class="sc-vjKnw eHwBqx">
			<div class="sc-bjMMwb fCNIuD">
				<h4 class="sc-hVkBjg hISUjs">
					우리 아이의 나이는 <span color="#f29833"
						class="sc-hjsqBZ sc-ejdXBC eTgrRq bNwkas">9</span> 살이에요!
				</h4>
				<p color="#868688" class="sc-kZGvTt dZlziL">
					우리 아이와 329일을 함께 했어요.<br>아직 모든 강아지의 나이를 사람 나이로 정확하게 변환하는 연구 결과는
					없습니다. <br>강아지마다 나이가 드는 속도가 다릅니다. 위 결과는 참고로만 봐주세요.
				</p>
			</div>
		</div>
	</main>
	<footer>
		<jsp:include page="/WEB-INF/views/home/home_bottom.jsp" />
	</footer>
</body>
</html>