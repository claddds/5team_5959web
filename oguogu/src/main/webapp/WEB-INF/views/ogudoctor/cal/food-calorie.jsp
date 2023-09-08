<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<style type="text/css">
.dDWxH {
	display: flex;
	-webkit-box-pack: end;
	justify-content: flex-end;
	margin: 0px auto;
	max-width: 620px;
	position: relative;
	height: 400px;
	z-index: -1;
}
h1 {
	display: block;
	font-size: 2em;
	margin-block-start: 0.67em;
	margin-block-end: 0.67em;
	margin-inline-start: 0px;
	margin-inline-end: 0px;
	font-weight: bold;
}

.iRdXUj {
	font-size: 16px;
	margin: 0px;
	white-space: nowrap;
	color: rgb(134, 134, 136);
}

.bFEDlq {
	color: rgb(9, 9, 9);
	font-size: 16px;
	line-height: 1.75em;
	font-family: "Apple SD Gothic Neo";
}
.gmQRFo {
	padding-top: 93px;
	display: flex;
	flex-direction: column;
	position: absolute;
	top: 0px;
	left: 0px;
	z-index: 1;
}

.dZVjNB {
	width: 400px;
	height: 400px;
}
.jyMFKB {
	display: flex;
	-webkit-box-pack: center;
	justify-content: center;
	padding: 80px 0px;
	background-color: rgb(246, 247, 248);
}
.hofxzw {
	padding: 60px 50px;
	width: 620px;
	background-color: rgb(255, 255, 255);
	border-radius: 14px;
	box-sizing: border-box;
	box-shadow: rgba(222, 222, 224, 0.65) 0px 12px 25px -20px;
}

form {
	display: block;
	margin-top: 0em;
}

.jjmNcZ {
	display: flex;
	flex-direction: column;
	align-items: flex-end;
	margin-bottom: 32px;
}

.sXbo {
	display: flex;
	flex-direction: row;
	width: 100%;
}

.bnlRbj {
	width: 160px;
	font-weight: bold;
	padding: 10px 0px;
	white-space: pre-line;
	font-family: JalnanOTF;
	font-size: 16px;
	line-height: 1.75;
	letter-spacing: -0.32px;
}

label {
	cursor: default;
}

.jGNyzc {
	display: flex;
	flex-wrap: wrap;
	max-width: 360px;
}

.iempoK {
	border-radius: 10px;
	background-color: rgb(246, 247, 248);
	border: 5px solid rgb(246, 247, 248);
	display: flex;
	-webkit-box-pack: center;
	justify-content: center;
	-webkit-box-align: center;
	align-items: center;
	flex-direction: column;
	width: 170px;
	height: 150px;
	box-sizing: border-box;
	color: rgb(207, 206, 206);
	margin-right: 20px;
}

.iempoK:last-child {
	margin-right: 0px;
}

.iempoK:hover {
	cursor: pointer;
}

.liyBtK:last-child {
	margin-right: 0px;
}
img {
	overflow-clip-margin: content-box;
	overflow: clip;
}

.gqcnzR {
	text-align: center;
	font-weight: bold;
	font-family: yg-jalnan;
	margin: 0px;
	color: inherit;
}
.lbTxgq {
	width: 110px;
	height: 110px;
	background: transparent;
	opacity: 0.35;
	mix-blend-mode: multiply;
}
@font-face {
	font-family: 'yg-jalnan';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_four@1.2/JalnanOTF00.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

.jpeBZh {
	width: 100%;
	max-width: 360px;
	text-align: right;
	height: 48px;
	border-radius: 14px;
	background-color: rgb(246, 247, 248);
	display: flex;
	-webkit-box-align: center;
	align-items: center;
	border: 2px solid transparent;
	box-sizing: border-box;
}

.gVInYT {
	color: rgb(9, 9, 9);
	font-family: yg-jalnan;
	height: 26px;
	font-size: 14px;
	outline: none;
	border: none;
	width: 100%;
	background-color: rgb(246, 247, 248);
	box-sizing: border-box;
	text-align: right;
}

.bWZaTc {
	padding-right: 21px;
	width: 21px;
	height: 26px;
	text-align: right;
}

.cZWaK {
	color: rgb(9, 9, 9);
	font-size: 14px;
	line-height: 26px;
	font-family: yg-jalnan;
	margin: 0px;
}

.jrTReh {
	margin: 60px 70px 0px;
}

.xWwDG {
	width: 100%;
	height: 48px;
	border-radius: 14px;
	border: none;
	outline: none;
	font-family: yg-jalnan;
	color: rgb(9, 9, 9);
	background-color: rgb(252, 209, 30);
}

.oLOis {
	width: 100%;
	max-width: 360px;
	text-align: right;
	height: 48px;
	border-radius: 14px;
	background-color: rgb(246, 247, 248);
	display: flex;
	-webkit-box-align: center;
	align-items: center;
	border: 2px solid rgb(252, 209, 30);
	box-sizing: border-box;
}

.liyBtK {
	border-radius: 10px;
	border: 5px solid rgb(252, 209, 30);
	display: flex;
	-webkit-box-pack: center;
	justify-content: center;
	-webkit-box-align: center;
	align-items: center;
	flex-direction: column;
	width: 170px;
	height: 150px;
	box-sizing: border-box;
	margin-right: 20px;
	background-color: rgb(255, 255, 255);
	color: rgb(9, 9, 9);
}

.iunTGn {
	display: flex;
	flex-direction: row;
}

.iunTGn>div {
	margin-right: 16px;
}

.jXKbJV {
	display: flex;
	-webkit-box-align: center;
	align-items: center;
	color: rgb(207, 206, 206);
	min-width: 70px;
	padding: 0px;
	margin: 0px;
	font-family: yg-jalnan;
	font-size: 14px;
	line-height: 1.86;
}

.eYsNwq {
	padding: 3px 0px;
	background-color: rgb(246, 247, 248);
	margin: 0px 10px 0px 0px;
	appearance: none;
	width: 20px;
	height: 20px;
	border-radius: 14px;
	outline: none;
}

.eDMjBH {
	position: relative;
	display: flex;
	-webkit-box-align: center;
	align-items: center;
}

.kovOxt {
	display: flex;
	-webkit-box-align: center;
	align-items: center;
	color: rgb(207, 206, 206);
	padding: 0px;
	margin: 0px;
	font-family: yg-jalnan;
	font-size: 14px;
	line-height: 1.86;
}

.ecnULt {
	display: flex;
	-webkit-box-align: center;
	align-items: center;
	color: rgb(9, 9, 9);
	min-width: 70px;
	padding: 0px;
	margin: 0px;
	font-family: JalnanOTF;
	font-size: 14px;
	line-height: 1.86;
}

label {
	cursor: default;
}

iunTGn>div {
	margin-right: 16px;
}

.ioNcga {
	display: flex;
	-webkit-box-align: center;
	align-items: center;
}
.iunTGn {
	display: flex;
	flex-direction: row;
}

label {
	cursor: default;
}

jXbXhx {
	padding: 3px 0px;
	background-color: rgb(246, 247, 248);
	margin: 0px 10px 0px 0px;
	appearance: none;
	width: 20px;
	height: 20px;
	border-radius: 4px;
	outline: none;
}

input:not([type="range"]):not([type="color"]) {
	writing-mode: horizontal-tb !important;
}
/* input[type="checkbox" i] {
    background-color: initial;
    cursor: default;
    appearance: auto;
    box-sizing: border-box;
    margin: 3px 3px 3px 4px;
    padding: initial;
    border: initial;
} */

div {
	display: block;
}
.cxQjWA {
	color: rgb(78, 127, 28);
	font-size: inherit;
	line-height: inherit;
	white-space: pre-line;
}

.cFMBsW {
	margin: 0px;
	white-space: nowrap;
}

.iCJkkn {
	color: rgb(9, 9, 9);
	font-size: 38px;
	line-height: 1.315em;
	font-family: JalnanOTF;
	margin: 0px;
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

sc-fbJfA {
	z-index: -1;
}

.eYsNwq:checked {
	border: 5px solid rgb(252, 209, 30);
	background-color: rgb(255, 255, 255);
}

.jXbXhx {
	padding: 3px 0px;
	background-color: rgb(246, 247, 248);
	margin: 0px 10px 0px 0px;
	appearance: none;
	width: 20px;
	height: 20px;
	border-radius: 4px;
	outline: none;
}

.ecnULt {
	display: flex;
	-webkit-box-align: center;
	align-items: center;
	color: rgb(9, 9, 9);
	min-width: 70px;
	padding: 0px;
	margin: 0px;
	font-family: JalnanOTF;
	font-size: 14px;
	line-height: 1.86;
}

.jXbXhx:checked {
	background-color: rgb(252, 209, 30);
}

.jDmoBF {
	pointer-events: none;
	position: absolute;
	height: 20px;
}
.dcJreZ {
    display: flex;
    -webkit-box-align: center;
    align-items: center;
    color: rgb(9, 9, 9);
    padding: 0px;
    margin: 0px;
    font-family: JalnanOTF;
    font-size: 14px;
    line-height: 1.86;
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
.jkInEd {
    display: flex;
    margin-top: 24px;
}
.eYcXPU {
    width: 100%;
    height: 48px;
    border-radius: 14px;
    color: rgb(134, 134, 136);
    background-color: rgb(228, 228, 230);
    border: none;
    outline: none;
    font-family: JalnanOTF;
    margin-right: 20px;
}
.xWwDG {
    width: 100%;
    height: 48px;
    border-radius: 14px;
    border: none;
    outline: none;
    font-family: JalnanOTF;
    color: rgb(9, 9, 9);
    background-color: rgb(252, 209, 30);
}
sc-fbJfA {
	z-index: 1;
}
.dZAGCu {
    width: 100%;
    max-width: 360px;
    text-align: right;
    height: 48px;
    border-radius: 14px;
    background-color: rgb(246, 247, 248);
    display: flex;
    -webkit-box-align: center;
    align-items: center;
    border: 2px solid rgb(242, 65, 71);
    box-sizing: border-box;
}
.hZCiQj {
    font-size: 12px;
    margin: 8px 0px 0px;
    color: rgb(242, 65, 71);
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
</style>
</head>
<body>
	<header>
		<jsp:include page="/WEB-INF/views/home/home_top.jsp" />
	</header>
	<main class="sc-bCDidY kZZDuN foodCalorieJsp">
		<div class="sc-jMAIzZ fNDbMx">
			<ul class="sc-dQelHR kYqwoU">
			</ul>
		</div>
		<div class="sc-ehsgIH ccSDWw">
			<div>
			<a class="sc-fbJfA huFlcW" href="/food.do">사료칼로리</a><a
				class="sc-fbJfA gWFIhC" href="/recommend.do">권장칼로리</a><a
				class="sc-fbJfA gWFIhC" href="/bmi.do">비만도</a><a
				class="sc-fbJfA gWFIhC" href="/age.do">나이</a>
			</div>
		</div>
		<div class="sc-ldFCYb dDWxH">
			<div class="sc-gHyekI gmQRFo">
				<h1 class="sc-cPlDXj sc-cmEail iCJkkn cFMBsW">
					<span color="#4e7f1c" class="sc-hjsqBZ cxQjWA">사료칼로리<br>계산기</span>란?
				</h1>
				<p class="sc-kZGvTt sc-eZYOHW bFEDlq iRdXUj">
					사료 성분표를 DM기준(수분0%)으로<br>변환하는 계산기입니다.
				</p>
			</div>
			<img src="/resources/images/ogudoctor/cal/feedMain.png" class="sc-FeKFz dZVjNB">
		</div>
		<div class="sc-jOQpHc jyMFKB">
			<form class="sc-ftWlEF hofxzw">
				<div class="sc-dskThN jjmNcZ">
					<div class="sc-cYRmzm sXbo">
						<label class="sc-hNeXkk bnlRbj">반려동물 종류</label>
						<div class="sc-fGjrnr jGNyzc">
							<div class="sc-dsInJy iempoK">
								<img src="/resources/images/ogudoctor/cal/dog.png" alt="Option Image"
									class="sc-dlUsjx lbTxgq">
								<p class="sc-YtoFE gqcnzR">강아지</p>
							</div>
							<div class="sc-dsInJy iempoK">
								<img src="/resources/images/ogudoctor/cal/cat.png" alt="Option Image"
									class="sc-dlUsjx lbTxgq">
								<p class="sc-YtoFE gqcnzR">고양이</p>
							</div>
						</div>
					</div>
				</div>
				<div class="sc-dskThN jjmNcZ hideForm">
					<div class="sc-cYRmzm sXbo">
						<label class="sc-hNeXkk bnlRbj">반려동물 상태</label>
						<div class="sc-gHbYXZ iunTGn">
							<div class="sc-crPCXo ioNcga">
								<label color="#cfcece" class="sc-dExYQz jXKbJV"><input
									type="radio" class="sc-bqWVmG eYsNwq" value="성장기">성장기</label>
							</div>
							<div class="sc-crPCXo ioNcga">
								<label color="#cfcece" class="sc-dExYQz jXKbJV"><input
									type="radio" class="sc-bqWVmG eYsNwq" value="성견/성묘">성견/성묘</label>
							</div>
						</div>
					</div>
				</div>
				<div class="sc-dskThN jjmNcZ hideForm hideCatForm">
					<div class="sc-cYRmzm sXbo">
						<label class="sc-hNeXkk bnlRbj">대형견인가요?</label>
						<div class="sc-hneQBV eDMjBH">
							<label color="#cfcece" class="sc-bSkxYT kovOxt"><input
								type="checkbox" class="sc-kGTyPW jXbXhx" value="">네!
								대형견이에요.
								<div class="sc-eMshUc jDmoBF" style="display:none;">
							<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20"
								style="width: 17px; height: 17px;">
								<g fill="none" fill-rule="evenodd">
								<path d="M0 0H1260V1948H0z" transform="translate(-469 -1824)"></path>
								<path fill="#ffffff"
									d="M473.442 1836.401l4.439 5.052c.406.45.766.547 1.11.547.36 0 .734-.097 1.14-.547l9.427-9.767c.625-.708.562-1.576-.031-2.188-.594-.595-1.563-.724-2.142-.016l-8.379 8.818-3.391-4.103c-.579-.708-1.548-.579-2.142.016-.593.612-.656 1.48-.03 2.188z"
									transform="translate(-469 -1824)"></path></g></svg>
						</div>
						</label>
						</div>
					</div>
				</div>
				<div class="sc-dskThN jjmNcZ">
					<div class="sc-cYRmzm sXbo">
						<label class="sc-hNeXkk bnlRbj">조단백질</label>
						<div class="sc-gtIISA jpeBZh">
							<input type="number" placeholder="0.00" step="0.01"
								pattern="^d*(.d{0,2})?$" class="sc-FIATH gVInYT" name="protein" value="">
							<div class="sc-eFqGBh bWZaTc">
								<h5 class="sc-jhSXcr cZWaK">%</h5>
							</div>
						</div>
					</div>
					<p class="sc-jTsRVL hZCiQj">값을 입력하거나 선택해주셔야 합니다.</p>
				</div>
				<div class="sc-dskThN jjmNcZ">
					<div class="sc-cYRmzm sXbo">
						<label class="sc-hNeXkk bnlRbj">조지방</label>
						<div class="sc-gtIISA jpeBZh">
							<input type="number" placeholder="0.00" step="0.01"
								pattern="^d*(.d{0,2})?$" class="sc-FIATH gVInYT" name="fat" value="">
							<div class="sc-eFqGBh bWZaTc">
								<h5 class="sc-jhSXcr cZWaK">%</h5>
							</div>
						</div>
					</div>
					<p class="sc-jTsRVL hZCiQj">값을 입력하거나 선택해주셔야 합니다.</p>
				</div>
				<div class="sc-dskThN jjmNcZ">
					<div class="sc-cYRmzm sXbo">
						<label class="sc-hNeXkk bnlRbj">조섬유</label>
						<div class="sc-gtIISA jpeBZh">
							<input type="number" placeholder="0.00" step="0.01"
								pattern="^d*(.d{0,2})?$" class="sc-FIATH gVInYT" name="fiber" value="">
							<div class="sc-eFqGBh bWZaTc">
								<h5 class="sc-jhSXcr cZWaK">%</h5>
							</div>
						</div>
					</div>
					<p class="sc-jTsRVL hZCiQj">값을 입력하거나 선택해주셔야 합니다.</p>
				</div>
				<div class="sc-dskThN jjmNcZ">
					<div class="sc-cYRmzm sXbo">
						<label class="sc-hNeXkk bnlRbj">조회분</label>
						<div class="sc-gtIISA jpeBZh">
							<input type="number" placeholder="0.00" step="0.01"
								pattern="^d*(.d{0,2})?$" class="sc-FIATH gVInYT" name="batch" value="">
							<div class="sc-eFqGBh bWZaTc">
								<h5 class="sc-jhSXcr cZWaK">%</h5>
							</div>
						</div>
					</div>
					<p class="sc-jTsRVL hZCiQj">값을 입력하거나 선택해주셔야 합니다.</p>
				</div>
				<div class="sc-dskThN jjmNcZ">
					<div class="sc-cYRmzm sXbo">
						<label class="sc-hNeXkk bnlRbj">칼슘</label>
						<div class="sc-gtIISA jpeBZh">
							<input type="number" placeholder="0.00" step="0.01"
								pattern="^d*(.d{0,2})?$" class="sc-FIATH gVInYT" name="calcium" value="">
							<div class="sc-eFqGBh bWZaTc">
								<h5 class="sc-jhSXcr cZWaK">%</h5>
							</div>
						</div>
					</div>
					<p class="sc-jTsRVL hZCiQj">값을 입력하거나 선택해주셔야 합니다.</p>
				</div>
				<div class="sc-dskThN jjmNcZ">
					<div class="sc-cYRmzm sXbo">
						<label class="sc-hNeXkk bnlRbj">인</label>
						<div class="sc-gtIISA jpeBZh">
							<input type="number" placeholder="0.00" step="0.01"
								pattern="^d*(.d{0,2})?$" class="sc-FIATH gVInYT" name="phosphorus" value="">
							<div class="sc-eFqGBh bWZaTc">
								<h5 class="sc-jhSXcr cZWaK">%</h5>
							</div>
						</div>
					</div>
					<p class="sc-jTsRVL hZCiQj">값을 입력하거나 선택해주셔야 합니다.</p>
				</div>
				<div class="sc-dskThN jjmNcZ">
					<div class="sc-cYRmzm sXbo">
						<label class="sc-hNeXkk bnlRbj">수분</label>
						<div class="sc-gtIISA jpeBZh">
							<input type="number" placeholder="0.00" step="0.01"
								pattern="^d*(.d{0,2})?$" class="sc-FIATH gVInYT" name="moisture" value="">
							<div class="sc-eFqGBh bWZaTc">
								<h5 class="sc-jhSXcr cZWaK">%</h5>
							</div>
						</div>
					</div>
					<p class="sc-jTsRVL hZCiQj">값을 입력하거나 선택해주셔야 합니다.</p>
				</div>
				<div class="sc-faCEWe jrTReh">
					<button type="button" class="sc-fYdXmn xWwDG getResult">결과보기</button>
				</div>
				<div class="sc-imaUOB jkInEd">
				<button type="reset" class="sc-fYdXmn eYcXPU">초기화</button>
				<button class="sc-fYdXmn xWwDG">다시 계산하기</button>
				</div>
			</form>
		</div>
		
		<!-- 결과보기 -->
	<div class="sc-vjKnw eHwBqx" style="display:none;">
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
	</main>
</body>
<script>
	$(document).ready(function() {
		init();
	});

	function init() {
		var $jsp = $('.foodCalorieJsp');
		$jsp.find('.sc-jTsRVL').hide();
		$jsp.find('.hideForm').hide();
		$jsp.find('.sc-FIATH').on('focus',function() {
		    $(this).closest('.sc-gtIISA').removeClass('jpeBZh').addClass('oLOis');
		    if($(this).closest('.sc-gtIISA').hasClass('dZAGCu')){
		    	$(this).closest('.sc-gtIISA').removeClass('dZAGCu');
		    }
		});
		
		$jsp.find('.sc-FIATH').on('input',function(){
			var inputValue = this.value;
			var pattern = /^\d+(\.\d{0,2})?$/;

			if (!pattern.test(inputValue)) {
				// 입력값이 유효하지 않을 때, 이전 유효한 값으로 복원
				this.value = this.getAttribute("data-previous-value") || "";
			} else {
				// 입력값이 유효할 때, 현재 값을 이전 유효한 값으로 설정
				this.setAttribute("data-previous-value", inputValue);
			}
		});

		$jsp.find('.sc-FIATH').on('blur',function() {
			$(this).closest('.sc-gtIISA').removeClass('oLOis').addClass('jpeBZh');
			if(!$(this).closest('.sc-gtIISA').hasClass('dZAGCu') && $(this).closest('.sc-dskThN').find('.sc-jTsRVL').css('display') != 'none'){
		    	$(this).closest('.sc-gtIISA').addClass('dZAGCu');
		    }
		});
		
		$jsp.find('.sc-dsInJy').on('click',function(){
			$jsp.find('.hideForm').show();
			$jsp.find('.sc-dsInJy').removeClass('liyBtK').addClass('iempoK');
			if($(this).find('.sc-YtoFE').text() == '고양이' && $(this).hasClass('liyBtK')){
				$(this).removeClass('liyBtK').addClass('iempoK');
				$jsp.find('.hideForm').hide();
			} else if ($(this).find('.sc-YtoFE').text() == '고양이' && $(this).hasClass('iempoK')) {
				$(this).removeClass('iempoK').addClass('liyBtK');
				$jsp.find('.hideCatForm').hide();
			}
			if ($(this).find('.sc-YtoFE').text() == '강아지' && $(this).hasClass('liyBtK')) {
			    $(this).removeClass('liyBtK').addClass('iempoK');
				$('.hideForm').hide();
			} else if ($(this).find('.sc-YtoFE').text() == '강아지' && $(this).hasClass('iempoK')) {
				$(this).removeClass('iempoK').addClass('liyBtK');
				$jsp.find('.hideCatForm').show();
			}
		});
		
		
		$jsp.find('input[type="radio"]').on('click', function() {
		    if ($(this).is(':checked')) {
		        var $radioGroup = $(this).closest('.sc-gHbYXZ').find('.sc-dExYQz');
		        $radioGroup.find('input[type="radio"]').prop('checked', false);
		        $radioGroup.removeClass('ecnULt').addClass('jXKbJV');
		        
		        var $currentInput = $(this).closest('.sc-dExYQz');
		        $currentInput.removeClass('jXKbJV').addClass('ecnULt');
		        $(this).prop('checked', true);
		    }
		});
		
		$jsp.find('.sc-kGTyPW').on('click',function(){
			if($(this).closest('label').hasClass('kovOxt')){
				$(this).closest('label').removeClass('kovOxt').addClass('dcJreZ');
				$('.sc-eMshUc').show();
			} else {
				$(this).closest('label').removeClass('dcJreZ').addClass('kovOxt');
				$('.sc-eMshUc').hide();
			}
		});
		
		//결과보기 버튼 이벤트
		$jsp.find('.getResult').on('click',function(){
			var verification = checkVerification();
			if(verification){
				var data = getValue();
				var proteinDM = calculateDMContent(data.protein, data.moisture);
				var fatDM = calculateDMContent(data.fat, data.moisture);
				var nitrogenDM = calculateDMContent(data.batch, data.moisture);
				var carbohydrateDM = calculateCarbohydrate(proteinDM, fatDM, nitrogenDM);
				var totCal = getCal(proteinDM,fatDM,carbohydrateDM);
				$jsp.find('.erIlRj').html(totCal);
				$jsp.find('.eHwBqx').show();
			}
		});
		
	    function checkVerification(){
	    	var $form = $('.sc-ftWlEF');
	    	var $input = $form.find('.sc-FIATH');
	    	var result = true;
	    	$input.each(function(idx,inp){
	    		if($(inp).val() == ''){
	    			$(inp).closest('div').removeClass('jpeBZh').addClass('dZAGCu');
	    			$(inp).closest('.sc-dskThN').find('.sc-jTsRVL').show();
	    			result = false;
	    		} else {
	    			$(inp).closest('div').removeClass('dZAGCu').addClass('jpeBZh');
	    			$(inp).closest('.sc-dskThN').find('.sc-jTsRVL').hide();
	    		}
	    	});
	    	return result;
	    };
	    
	    function getValue(){
	    	var $form = $('.sc-ftWlEF');
	    	var $input = $form.find('.sc-FIATH');
	    	var result = {};
	    	$input.each(function(idx,inp){
	    		result[$(inp).attr('name')] = $(inp).val();
	    	});
	    	return result;
	    };
	    
	    function calculateDMContent(percentage, moisturePercentage) {
	    	  // 수분을 고려한 DM 기준 함량 계산
	    	  const dmContent = percentage / (1 - moisturePercentage / 100);
	    	  // 소수점 두 자리까지 반올림
	    	  return Math.round(dmContent * 100) / 100;
	    };
	    
	    function calculateCarbohydrate(protein, fat, nitrogen) {
	    	  const carbohydrate = 100 - protein - fat - nitrogen;
	    	  return Math.round(carbohydrate * 100) / 100;
	    };
	    
	    function getCal(proteinDM,fatDM,carbohydrateDM){
	    	var proteinCal = proteinDM * 3.5;
	    	var carbohydrateCal = carbohydrateDM * 3.5;
	    	var fatCal = fatDM * 8.5;
	    	var totCal = Number(proteinCal.toFixed(0)) + Number(carbohydrateCal.toFixed(0)) + Number(fatCal.toFixed(0));
	    	return totCal;
	    }
		
	};
	</script>
</html>