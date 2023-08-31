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
</style>
</head>
<body>
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
</body>
</html>