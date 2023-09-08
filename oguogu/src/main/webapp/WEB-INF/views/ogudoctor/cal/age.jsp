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
/* a:-webkit-any-link {
    color: -webkit-link;
    cursor: pointer;
    text-decoration: underline;
} */
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
/* user agent stylesheet
a:-webkit-any-link {
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
h1 {
    display: block;
    font-size: 2em;
    margin-block-start: 0.67em;
    margin-block-end: 0.67em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    font-weight: bold;
}
.eTgrRq {
    color: rgb(242, 152, 51);
    font-size: inherit;
    line-height: inherit;
    white-space: nowrap;
}
.iCJkkn {
    color: rgb(9, 9, 9);
    font-size: 38px;
    line-height: 1.315em;
    font-family: JalnanOTF;
    margin: 0px;
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
.dZVjNB {
    width: 400px;
    height: 400px;
}
img {
    overflow-clip-margin: content-box;
    overflow: clip;
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
.liyBtK img {
    opacity: 1;
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
.gpdHNn {
    padding-right: 10px;
    padding-left: 21px;
    width: 24px;
    height: 24px;
}
element.style {
    width: 24px;
    height: 24px;
}
svg:not(:root) {
    overflow-clip-margin: content-box;
    overflow: hidden;
}
path[Attributes Style] {
    d: path("M 0 0 H 1260 V 1948 H 0 Z");
    transform: translate(-100, -1824);
}
:not(svg) {
    transform-origin: 0px 0px;
}
path[Attributes Style] {
    fill: rgb(207, 206, 206);
    d: path("M 117.657 1827 c 0.39 0 0.713 0.29 0.765 0.667 l 0.007 0.104 v 1.298 c 1.441 0.13 2.571 1.341 2.571 2.817 v 10.285 c 0 1.563 -1.266 2.829 -2.829 2.829 H 105.83 c -1.563 0 -2.829 -1.266 -2.829 -2.829 v -10.285 c 0 -1.476 1.13 -2.687 2.571 -2.817 v -1.298 c 0 -0.426 0.346 -0.771 0.772 -0.771 c 0.39 0 0.713 0.29 0.764 0.667 l 0.007 0.104 v 1.286 h 4.114 v -1.286 c 0 -0.39 0.29 -0.713 0.667 -0.764 L 112 1827 c 0.39 0 0.713 0.29 0.764 0.667 l 0.007 0.104 v 1.286 h 4.114 v -1.286 c 0 -0.39 0.29 -0.713 0.667 -0.764 l 0.105 -0.007 Z m 1.8 8.228 h -14.915 v 6.943 c 0 0.71 0.576 1.286 1.287 1.286 h 12.342 c 0.71 0 1.286 -0.575 1.286 -1.286 v -6.943 Z m -1.286 -4.628 H 105.83 c -0.71 0 -1.286 0.576 -1.286 1.286 l -0.001 1.799 h 14.915 v -1.8 c 0 -0.71 -0.575 -1.285 -1.286 -1.285 Z");
    transform: translate(-100, -1824);
}
.dIZwNu {
    color: rgb(9, 9, 9);
    font-family: JalnanOTF;
    height: 26px;
    font-size: 14px;
    outline: none;
    border: none;
    width: 100%;
    background-color: rgb(246, 247, 248);
    box-sizing: border-box;
}
input:not([type="range"]):not([type="color"]) {
    writing-mode: horizontal-tb !important;
}
input:not([type="file" i], [type="image" i], [type="checkbox" i], [type="radio" i]) {
}\
.iunTGn > div {
    margin-right: 16px;
}
.iunTGn {
    display: flex;
    flex-direction: row;
}
.ioNcga {
    display: flex;
    -webkit-box-align: center;
    align-items: center;
}
.jXKbJV {
    display: flex;
    -webkit-box-align: center;
    align-items: center;
    color: rgb(207, 206, 206);
    min-width: 70px;
    padding: 0px;
    margin: 0px;
    font-family: JalnanOTF;
    font-size: 14px;
    line-height: 1.86;
}
eYsNwq {
    padding: 3px 0px;
    background-color: rgb(246, 247, 248);
    margin: 0px 10px 0px 0px;
    appearance: none;
    width: 20px;
    height: 20px;
    border-radius: 14px;
    outline: none;
}
input:not([type="range"]):not([type="color"]) {
    writing-mode: horizontal-tb !important;
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
.eYsNwq:checked {
    border: 5px solid rgb(252, 209, 30);
    background-color: rgb(255, 255, 255);
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
    font-family: JalnanOTF;
    color: rgb(9, 9, 9);
    background-color: rgb(252, 209, 30);
}
sc-fbJfA {
	z-index: -1;
}
.liyBtK:last-child {
    margin-right: 0px;
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
    font-family: yg-jalnan;
    margin: 0px;
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
.bNwkas {
    font-size: 28px;
    line-height: 38px;
    color: rgb(242, 152, 51);
}
.dZlziL {
    color: rgb(134, 134, 136);
    font-size: 16px;
    line-height: 1.75em;
    font-family: "Apple SD Gothic Neo";
}
</style>
</head>
<body>
		<header>
        	<jsp:include page="/WEB-INF/views/home/home_top.jsp" />
    	</header>
	<main class="sc-bCDidY kZZDuN ageJsp">
		<div>
			<div class="sc-jMAIzZ fNDbMx">
				<ul class="sc-dQelHR kYqwoU">
				</ul>
			</div>
		</div>
		<div>
			<div class="sc-ehsgIH ccSDWw">
				<div>
					<a class="sc-fbJfA gWFIhC" href="/food.do">사료칼로리</a><a
						class="sc-fbJfA gWFIhC" href="/recommend.do">권장칼로리</a><a
						class="sc-fbJfA gWFIhC" href="/bmi.do">비만도</a><a
						class="sc-fbJfA huFlcW" href="/age.do">나이</a>
				</div>
			</div>
		</div>
		<div class="sc-ldFCYb dDWxH">
			<div class="sc-gHyekI gmQRFo">
				<h1 class="sc-cPlDXj sc-cmEail iCJkkn cFMBsW">
					<span color="#f29833" class="sc-hjsqBZ eTgrRq">나이계산기</span>란?
				</h1>
				<p class="sc-kZGvTt sc-eZYOHW bFEDlq iRdXUj">
					우리 아이의 나이,<br>사람나이로는 몇살일까요?
				</p>
			</div>
			<img src="/resources/images/ogudoctor/cal/ageMain.png"
				class="sc-FeKFz dZVjNB">
		</div>
		<div class="sc-jOQpHc jyMFKB">
			<form class="sc-ftWlEF hofxzw">
				<div class="sc-dskThN jjmNcZ">
					<div class="sc-cYRmzm sXbo">
						<label class="sc-hNeXkk bnlRbj">반려동물 종류</label>
						<div class="sc-fGjrnr jGNyzc">
							<div class="sc-dsInJy iempoK selPet">
								<img src="/resources/images/ogudoctor/cal/dog.png" 
									alt="Option Image" class="sc-dlUsjx lbTxgq">
								<p class="sc-YtoFE gqcnzR">강아지</p>
							</div>
							<div class="sc-dsInJy iempoK selPet">
								<img src="/resources/images/ogudoctor/cal/cat.png" 
									alt="Option Image" class="sc-dlUsjx lbTxgq">
								<p class="sc-YtoFE gqcnzR">고양이</p>
							</div>
						</div>
					</div>
				</div>
				<div class="sc-dskThN jjmNcZ">
					<div class="sc-cYRmzm sXbo">
						<label class="sc-hNeXkk bnlRbj">생년월일</label>
						<div class="sc-gtIISA jpeBZh">
							<div class="sc-bYOEQd gpdHNn">
								<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"
									style="width: 24px; height: 24px;">
									<g fill="none">
									<path fill="transition" d="M0 0H1260V1948H0z"
										transform="translate(-100 -1824)"></path>
									<path fill="#cfcece"
										d="M117.657 1827c.39 0 .713.29.765.667l.007.104v1.298c1.441.13 2.571 1.341 2.571 2.817v10.285c0 1.563-1.266 2.829-2.829 2.829H105.83c-1.563 0-2.829-1.266-2.829-2.829v-10.285c0-1.476 1.13-2.687 2.571-2.817v-1.298c0-.426.346-.771.772-.771.39 0 .713.29.764.667l.007.104v1.286h4.114v-1.286c0-.39.29-.713.667-.764L112 1827c.39 0 .713.29.764.667l.007.104v1.286h4.114v-1.286c0-.39.29-.713.667-.764l.105-.007zm1.8 8.228h-14.915v6.943c0 .71.576 1.286 1.287 1.286h12.342c.71 0 1.286-.575 1.286-1.286v-6.943zm-1.286-4.628H105.83c-.71 0-1.286.576-1.286 1.286l-.001 1.799h14.915v-1.8c0-.71-.575-1.285-1.286-1.285z"
										transform="translate(-100 -1824)"></path></g></svg>
							</div>
							<input placeholder="0000 . 00" class="sc-FIATH dIZwNu"
								value="">
						</div>
					</div>
				</div>
				<div class="sc-dskThN jjmNcZ perSize" style="display:none;">
					<div class="sc-cYRmzm sXbo">
						<label class="sc-hNeXkk bnlRbj">반려동물 크기</label>
						<div class="sc-gHbYXZ iunTGn">
							<div class="sc-crPCXo ioNcga">
								<label color="#cfcece" class="sc-dExYQz jXKbJV">
								<input type="radio" class="sc-bqWVmG eYsNwq" value="소형">소형</label>
							</div>
							<div class="sc-crPCXo ioNcga">
								<label color="#cfcece" class="sc-dExYQz jXKbJV">
								<input type="radio" class="sc-bqWVmG eYsNwq" value="중형">중형</label>
							</div>
							<div class="sc-crPCXo ioNcga">
								<label color="#cfcece" class="sc-dExYQz jXKbJV">
								<input type="radio" class="sc-bqWVmG eYsNwq" value="대형">대형</label>
							</div>
						</div>
					</div>
				</div>
				<div class="sc-faCEWe jrTReh">
					<button type="button" class="sc-fYdXmn xWwDG getResult">결과보기</button>
				</div>
			</form>
		</div>
		
		<!--  결과 보기 -->
		<div class="sc-vjKnw eHwBqx" style="display:none;">
			<div class="sc-bjMMwb fCNIuD">
				<h4 class="sc-hVkBjg hISUjs">
					우리 아이의 나이는 <span color="#f29833"
						class="sc-hjsqBZ sc-ejdXBC eTgrRq bNwkas ageResult">9</span> 살이에요!
				</h4>
				<p color="#868688" class="sc-kZGvTt dZlziL">
					아직 모든 강아지의 나이를 사람 나이로 정확하게 변환하는 연구 결과는
					없습니다. <br>강아지마다 나이가 드는 속도가 다릅니다. 위 결과는 참고로만 봐주세요.
				</p>
			</div>
		</div>
	</main>
</body>
<script>
$(document).ready(function(){
	init();
});

function init(){
	var $jsp = $('.ageJsp');
	
	$jsp.find('.selPet').on('click',function() {
		$jsp.find('.sc-dsInJy').removeClass('liyBtK').addClass('iempoK');
		if ($(this).find('.sc-YtoFE').text() == '고양이' && $(this).hasClass('liyBtK')) {
			$(this).removeClass('liyBtK').addClass('iempoK');
		} else if ($(this).find('.sc-YtoFE').text() == '고양이' && $(this).hasClass('iempoK')) {
			$jsp.find('.perSize').hide();
			$(this).removeClass('iempoK').addClass('liyBtK');
		}
		if ($(this).find('.sc-YtoFE').text() == '강아지' && $(this).hasClass('liyBtK')) {
			$(this).removeClass('liyBtK').addClass('iempoK');
		} else if ($(this).find('.sc-YtoFE').text() == '강아지' && $(this).hasClass('iempoK')) {
			$jsp.find('.perSize').show();
			$(this).removeClass('iempoK').addClass('liyBtK');
		}
	});
	
	$jsp.find('.sc-FIATH').on('focus',function() {
	    $(this).closest('.sc-gtIISA').removeClass('jpeBZh').addClass('oLOis');
	});

	$jsp.find('.sc-FIATH').on('blur',function() {
		$(this).closest('.sc-gtIISA').removeClass('oLOis').addClass('jpeBZh');
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
	
	$jsp.find('.sc-FIATH').on('keyup', function(event) {
		
	    this.value = this.value.replace(/[^0-9\.]/g, '');
		
	    if(event.key != "Backspace" && this.value.length == 4) {
	        this.value += '.';
	    }
	    
	    if (this.value.length > 7) {
	        this.value = this.value.substr(0, 7);
	    }

	    if (/^\d{4}\.\d{2}$/.test(this.value)) {
	        this.removeEventListener('input', arguments.callee);
	    }
	});
	
	// 결과보기 버튼 이벤트
	$jsp.find('.getResult').on('click',function(){
		var data = getValue();
		if (data.pet != '' && data.age != ''){
			var result = getPetAge(data);
			$jsp.find('.ageResult').html(result);
			$jsp.find('.eHwBqx').show();	
		} else {
			alert('선택되지 않은 항목이 있습니다. 다시 선택 바랍니다.');
		}
	});
	
	//입력값 받아오기
	function getValue(){
		var pet = '';
		var $petGroup = $jsp.find('.sc-YtoFE');	// find => 전체에서 찾는
		$petGroup.each(function(idx,inp){
			if($(inp).text() == '고양이' && $(inp).closest('.sc-dsInJy').hasClass('liyBtK')) {	// closest => 
				pet = '고양이'; 
			} else if ($(inp).text() == '강아지' && $(inp).closest('.sc-dsInJy').hasClass('liyBtK')) {
				pet = '강아지';
			}
		});
		
		var age = '';
		var ageInputValue = $jsp.find('.sc-FIATH').val();  // 0000.00
		var ageList = ageInputValue.split('.');
		// 현재 날짜를 가져옵니다.
	   var currentDate = new Date();
	   var currentYear = currentDate.getFullYear();
	   var currentMonth = currentDate.getMonth() + 1; // getMonth()는 0부터 시작하므로 1을 더합니다.
	
	   // 생년월을 기반으로 나이를 계산합니다.
	   age = currentYear - ageList[0];
	
	   // 생월을 비교하여 생일이 지났는지 확인합니다.
	   if (currentMonth < ageList[1]) {
	     age--; // 아직 생일이 오지 않았으면 나이를 1년 감소시킵니다.
	   }
	   
	   if(pet = '강아지'){
           var dogSize = '';
           var $dogSizeGroup = $jsp.find('.sc-bqWVmG');
           $dogSizeGroup.each(function(idx,inp){
        	   if($(inp).is(':checked') && $(inp).val() == '소형'){
        		   dogSize = '소형';
        	   } else if ($(inp).is(':checked') && $(inp).val() == '중형') {
        		  dogSize = '중형';
        	   } else if ($(inp).is(':checked') && $(inp).val() == '대형') {
        		  dogSize = '대형'; 
        	   }
           });
	   }
	   
	   var result = {'pet' : pet, 'age' : age, 'dogSize': dogSize };
	   
	   return result;
		
	};
	
	
	// 나이 계산식
	function getPetAge(data) {
		var humanAge = 0;

		  if (data.pet === '강아지') {
		    if (data.age === 1) {
		      if (data.dogSize === '소형') {
		        humanAge = 15;
		      } else if (data.dogSize === '중형') {
		        humanAge = 16;
		      } else if (data.dogSize === '대형') {
		        humanAge = 17;
		      }
		    } else if (data.age === 2) {
		      if (data.dogSize === '소형') {
		        humanAge = 24;
		      } else if (data.dogSize === '중형') {
		        humanAge = 22;
		      } else if (data.dogSize === '대형') {
		        humanAge = 20;
		      }
		    } else {
		      if (data.dogSize === '소형') {
		        humanAge = 24 + (data.age - 2) * 4;
		      } else if (data.dogSize === '중형') {
		        humanAge = 22 + (data.age - 2) * 4;
		      } else if (data.dogSize === '대형') {
		        humanAge = 20 + (data.age - 2) * 4;
		      }
		    }
		  } else if (data.pet === '고양이') {
		    if (data.age === 1) {
		      humanAge = 15;
		    } else if (data.age === 2) {
		      humanAge = 24;
		    } else {
		      humanAge = 24 + (data.age - 2) * 5;
		    }
		  }

		  return humanAge;
	};
};
</script>
</html>