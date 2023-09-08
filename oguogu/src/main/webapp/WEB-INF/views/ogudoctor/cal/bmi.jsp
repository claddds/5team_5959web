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
<style type="text/css">
div {
	display: block;
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

/* a:-webkit-any-link {
	color: -webkit-link;
	cursor: pointer;
	text-decoration: underline;
}
 */
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

/* a:-webkit-any-link {
	color: -webkit-link;
	cursor: pointer;
	text-decoration: underline;
} */

.dDWxH {
	display: flex;
	-webkit-box-pack: end;
	justify-content: flex-end;
	margin: 0px auto;
	max-width: 620px;
	position: relative;
	height: 400px;
	z-index:-1;
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

h1 {
	display: block;
	font-size: 2em;
	margin-block-start: 0.67em;
	margin-block-end: 0.67em;
	margin-inline-start: 0px;
	margin-inline-end: 0px;
	font-weight: bold;
}
.ejZDiW {
	color: rgb(59, 116, 200);
	font-size: inherit;
	line-height: inherit;
	white-space: nowrap;
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

p {
	display: block;
	margin-block-start: 1em;
	margin-block-end: 1em;
	margin-inline-start: 0px;
	margin-inline-end: 0px;
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

.lbTxgq {
	width: 110px;
	height: 110px;
	background: transparent;
	opacity: 0.35;
	mix-blend-mode: multiply;
}

.gqcnzR {
	text-align: center;
	font-weight: bold;
	font-family: JalnanOTF;
	margin: 0px;
	color: inherit;
}
.iempoK:last-child {
	margin-right: 0px;
}
.jrTReh {
	margin: 60px 70px 0px;
}

.jyMFKB {
	display: flex;
	-webkit-box-pack: center;
	justify-content: center;
	padding: 80px 0px;
	background-color: rgb(246, 247, 248);
}
label {
    cursor: default;
}
.fgqvrq {
    border-radius: 10px;
    border: 5px solid rgb(252, 209, 30);
    display: flex;
    -webkit-box-pack: center;
    justify-content: center;
    -webkit-box-align: center;
    align-items: center;
    flex-direction: column;
    width: 110px;
    height: 110px;
    box-sizing: border-box;
    margin-right: 15px;
    background-color: rgb(255, 255, 255);
    color: rgb(9, 9, 9);
}
.fgqvrq img {
    opacity: 1;
}
img {
    overflow-clip-margin: content-box;
    overflow: clip;
}
.fVepBC {
    border-radius: 10px;
    background-color: rgb(246, 247, 248);
    border: 5px solid rgb(246, 247, 248);
    display: flex;
    -webkit-box-pack: center;
    justify-content: center;
    -webkit-box-align: center;
    align-items: center;
    flex-direction: column;
    width: 110px;
    height: 110px;
    box-sizing: border-box;
    color: rgb(207, 206, 206);
    margin-right: 15px;
}
.fVepBC:nth-child(3n) {
    margin-right: 0px;
}
.fVepBC:nth-child(4), .fVepBC:nth-child(5) {
    margin-top: 15px;
}
.fVepBC:last-child {
    margin-right: 0px;
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
sc-fbJfA {
	z-index: -1;
}
.liyBtK:last-child {
    margin-right: 0px;
}
.fgqvrq:nth-child(3n) {
    margin-right: 0px;
}
.fgqvrq:last-child {
    margin-right: 0px;
}
.fgqvrq:nth-child(4), .fgqvrq:nth-child(5) {
    margin-top: 15px;
}

button {
    appearance: auto;
    font-style: ;
    font-variant-ligatures: ;
    font-variant-caps: ;
    font-variant-numeric: ;
    font-variant-east-asian: ;
    font-variant-alternates: ;
    font-weight: ;
    font-stretch: ;
    font-size: ;
    font-family: ;
    font-optical-sizing: ;
    font-kerning: ;
    font-feature-settings: ;
    font-variation-settings: ;
    text-rendering: auto;
    color: buttontext;
    letter-spacing: normal;
    word-spacing: normal;
    line-height: normal;
    text-transform: none;
    text-indent: 0px;
    text-shadow: none;
    display: inline-block;
    text-align: center;
    align-items: flex-start;
    cursor: default;
    box-sizing: border-box;
    background-color: buttonface;
    margin: 0em;
    padding: 1px 6px;
    border-width: 2px;
    border-style: outset;
    border-color: buttonborder;
    border-image: initial;
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
/* 결과 보기  */
.eHQUZI {
    text-align: center;
    margin-top: 40px;
    margin-bottom: 80px;
    background-color: rgb(236, 246, 255);
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
.ejZDiW {
    color: rgb(59, 116, 200);
    font-size: inherit;
    line-height: inherit;
    white-space: nowrap;
}
.kegqVB {
    text-align: center;
    margin-top: 8px;
}
.hkjRPn {
    color: rgb(59, 116, 200);
    font-size: 28px;
    line-height: 1.35em;
    font-family: JalnanOTF;
    margin: 0px;
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
</style>
</head>
<body>
	<header>
        <jsp:include page="/WEB-INF/views/home/home_top.jsp" />
    </header>
	<main class="sc-bCDidY kZZDuN bmiJsp">
		<div>
			<div class="sc-jMAIzZ fNDbMx">
				<ul class="sc-dQelHR kYqwoU">
				</ul>
			</div>
		</div>
		<div>
			<div class="sc-ehsgIH ccSDWw" >
				<div>
					<a class="sc-fbJfA gWFIhC" href="/food.do">사료칼로리</a><a
						class="sc-fbJfA gWFIhC" href="/recommend.do">권장칼로리</a><a
						class="sc-fbJfA huFlcW" href="/bmi.do">비만도</a><a
						class="sc-fbJfA gWFIhC" href="/age.do">나이</a>
				</div>
			</div>
		</div>
		<div class="sc-ldFCYb dDWxH">
			<div class="sc-gHyekI gmQRFo">
				<h1 class="sc-cPlDXj sc-cmEail iCJkkn cFMBsW">
					<span color="#3b74c8" class="sc-hjsqBZ ejZDiW">비만도계산기</span>란?
				</h1>
				<p class="sc-kZGvTt sc-eZYOHW bFEDlq iRdXUj">
					우리 아이의 비만도를 시각적으로<br>볼 수 있는 도구입니다.
				</p>
			</div>
			<img src="/resources/images/ogudoctor/cal/bmiMain.png" class="sc-FeKFz dZVjNB">
		</div>
		<div class="sc-jOQpHc jyMFKB">
			<form class="sc-ftWlEF hofxzw">
				<div class="sc-dskThN jjmNcZ">
					<div class="sc-cYRmzm sXbo">
						<label class="sc-hNeXkk bnlRbj">반려동물 종류</label>
						<div class="sc-fGjrnr jGNyzc">
							<div class="sc-dsInJy iempoK selPet">
								<img src="/resources/images/ogudoctor/cal/dog.png" alt="Option Image"
									class="sc-dlUsjx lbTxgq">
								<p class="sc-YtoFE gqcnzR">강아지</p>
							</div>
							<div class="sc-dsInJy iempoK selPet">
								<img src="/resources/images/ogudoctor/cal/cat.png" alt="Option Image"
									class="sc-dlUsjx lbTxgq">
								<p class="sc-YtoFE gqcnzR">고양이</p>
							</div>
						</div>
					</div>
				</div>
				<div class="sc-dskThN jjmNcZ petImage" style="display:none;">
					<div class="sc-cYRmzm sXbo">
						<label class="sc-hNeXkk bnlRbj">우리 아이와 닮은 사진을 골라주세요.</label>
						<div class="sc-fGjrnr jGNyzc">
							<div class="sc-dsInJy fVepBC selImg">
								<img src="/resources/images/ogudoctor/cal2/dog-fat-1.png"
									alt="Option Image" class="sc-dlUsjx lbTxgq">
							</div>
							<div class="sc-dsInJy fVepBC selImg">
								<img src="/resources/images/ogudoctor/cal/dog-fat-2.png"
									alt="Option Image" class="sc-dlUsjx lbTxgq">
							</div>
							<div class="sc-dsInJy fVepBC selImg">
							<img src="/resources/images/ogudoctor/cal/dog-fat-3.png"
									alt="Option Image" class="sc-dlUsjx lbTxgq">
							</div>
							<div class="sc-dsInJy fVepBC selImg">
								<img src="/resources/images/ogudoctor/cal/dog-fat-4.png"
									alt="Option Image" class="sc-dlUsjx lbTxgq">
							</div>
							<div class="sc-dsInJy fVepBC selImg">
								<img src="/resources/images/ogudoctor/cal/dog-fat-5.png"
									alt="Option Image" class="sc-dlUsjx lbTxgq">
							</div>
						</div>
					</div>
				</div>
				<div class="sc-faCEWe jrTReh" >
					<button type="button"class="sc-fYdXmn xWwDG getResult" >결과보기</button>
				</div>
			</form>
		</div>
		<!--  결과 보기  -->	
			<div class="sc-vjKnw eHwBqx"style="display:none;">
			<h2 class="sc-BKAtq fTvbXT">
				<span color="#3b74c8" class="sc-hjsqBZ ejZDiW">비만도 계산</span> 결과
			</h2>
			<div class="sc-bjMMwb eHQUZI">
				<h4 class="sc-hVkBjg hISUjs bmiResult">우리 아이는</h4>
				<h2 color="#3b74c8" class="sc-BKAtq sc-dxnOzg hkjRPn kegqVB"></h2>
			</div>
			</div>
	</main>
</body>
<script>
$(document).ready(function(){
	init();
});

function init() {
	var $jsp = $('.bmiJsp');
	
	$jsp.find('.selPet').on('click',function() {
		$jsp.find('.sc-dsInJy').removeClass('liyBtK').addClass('iempoK');
		$jsp.find('.petImage').show();
		if ($(this).find('.sc-YtoFE').text() == '고양이' && $(this).hasClass('liyBtK')) {
			$(this).removeClass('liyBtK').addClass('iempoK');
		} else if ($(this).find('.sc-YtoFE').text() == '고양이' && $(this).hasClass('iempoK')) {
			$jsp.find('.petImage').find('img').each(function(idx,inp){
			    ++idx;
				$(inp).attr('src','/resources/images/ogudoctor/cal/cat-fat-'+idx+'.png');
			});
			$(this).removeClass('iempoK').addClass('liyBtK');
		}
		if ($(this).find('.sc-YtoFE').text() == '강아지' && $(this).hasClass('liyBtK')) {
			$(this).removeClass('liyBtK').addClass('iempoK');
		} else if ($(this).find('.sc-YtoFE').text() == '강아지' && $(this).hasClass('iempoK')) {
			$jsp.find('.petImage').find('img').each(function(idx,inp){
				++idx;
				$(inp).attr('src','/resources/images/ogudoctor/cal/dog-fat-'+idx+'.png');
			});
			$(this).removeClass('iempoK').addClass('liyBtK');
		}
	});
	
	$jsp.find('.selImg').on('click',function(){
		$jsp.find('.petImage').find('.selImg').each(function(idx, inp){
				$(inp).addClass('fVepBC').removeClass('fgqvrq');
		});
		$(this).addClass('fgqvrq').removeClass('fVepBC');
	});
	
	// 결과보기 버튼 이벤트
	$jsp.find('.getResult').on('click',function(){
		var data = getValue();
		if (data.pet != ''){
			var result = getPetBmi(data); 
			$jsp.find('.kegqVB').html(result);
			$jsp.find('.eHwBqx').show();	
		} else {
			alert('선택되지 않은 항목이 있습니다. 다시 선택 바랍니다.');
		}
		});
		
	// 입력값 받아오기
	function getValue(){
		var pet = '';
		var $petGroup = $jsp.find('.sc-YtoFE');	// find => 전체에서 찾는
		$petGroup.each(function(idx,inp){
			if($(inp).text() == '고양이' && $(inp).closest('.sc-dsInJy').hasClass('liyBtK')) {	// closest =>  그 줄에서 찾는
				pet = '고양이'; 
			} else if ($(inp).text() == '강아지' && $(inp).closest('.sc-dsInJy').hasClass('liyBtK')) {
				pet = '강아지';
			}
		});
		var image = '';
		var $petImageGroup = $jsp.find('.selImg');
		$petImageGroup.each(function(idx, inp){
			if($(inp).hasClass('fgqvrq')){
				image = idx;
			}
		});
		var result = {'pet' : pet, 'image' : image};
		return result;
	};
	
	function getPetBmi(data){
		var restultObject = {
		    0: '훨씬 더 많이 밥을 줘도 괜찮아요.',
		    1 : '조금 더 많이 밥을 줘도 괜찮아요.',
		    2 : '적정 체중이네요. 아주 좋아요!',
		    3 : '살짝 비만이 걱정됩니다. 관리해주세요.',
		    4 : '비만이 걱정됩니다. 관리해주세요.'
		};
		var idx = data.image;
		return restultObject[idx];
	};
		
};
</script>
</html>