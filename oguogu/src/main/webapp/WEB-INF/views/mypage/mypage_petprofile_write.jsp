<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지 - 반려동물 등록</title>
<style type="text/css">
	#write-pet-profile-form{
		width:1920px;
		margin:auto;
		display: flex;
		margin-top:50px;
	}
	#write-pet-profile{
		width:1500px;
		display: flex;
	    flex-direction: column;
	    align-items: center;
	    background-color: #FBF9D9;
	    padding-top:50px;
	    margin-left:100px;
	    border-radius:50px;
	   	padding-bottom:50px;
	}
	
	#write-pet-profile div{
		margin:10px 0;
	}
	
	.choice-pet-img,#pet-img{
		width:200px;
		height:200px;
		border-radius:20px;
	}
	
	#pet-upload button{
		border-radius:10px;
		width:100px;
		height:40px;
		font-size: 17px;
		font-family: 'Noto Sans KR', sans-serif;
		color:black;
	}
	
	#pet-name input[type="text"],
	#petbirth{
		width:400px;
		height:40px;
		border-radius:10px;
	}
	
	#pet-profile-form input::placeholder{font-size: 18px;}
	
	#choice-pet-img-div{
		display: flex;
	    grid-gap: 20px;
	    gap: 20px;
	    flex-wrap: wrap;
	    justify-content: center;
	    align-items: center;
	    max-width: 100%;
	}

	.pet_essential{
		color:red;
		font-size: 15px;
		padding-right:10px;
	}
	
	#pet_kind_list{
		width:400px;
		height:40px;
		font-size: 15px;
		border-radius:10px;
	}
	.gender_radio{
		width:18px;
		height:18px;
	}
	#pet_gender_radio,#pet_neut_div,#pet_weight_div{
		width:400px;
	}
	#pet_neut_check{
		width:18px;
		height:18px;
	}
	#pet_weight{
		width:400px;
		height:30px;
		border-radius:10px;
	}
	#pet_add_cancel_div{
		display:grid;
		grid-template-rows:1fr 1fr;
	}
	.pet_add_cancel_btn{
		width:150px;
		height:30px;
		font-size:20px;
		margin:10px;
		border-radius: 10px;
		border:none;
		background-color: #FFA629;
		color:#f8f8ff;
	}
	footer{
        width:1920px;
        display:flex;
        margin:auto;
        margin-top:20px;
        margin-bottom: 20px;
    }
    
    #pet-add-btn,#pet-delete-btn {
	    cursor: pointer;
	    display: inline-block;
	    background-color: lightgray;
	    padding:10px;
	    text-align:center;
	    color: #fff;
	    border: none;
	    border-radius:10px;
		width:100px;
		font-size: 15px;
	}
	
	.radio_item{
		display: none !important;
	}
	
	.label_item {
		opacity: 0.5;
		cursor:pointer;
	}
	
	.radio_item:checked + label {
		opacity: 1;
		border: 5px solid #FFA629;
		border-radius:20px;
	}
	
	
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		
		//파일 첨부와 이미지 변수
        const $fileInput = $('#petfileInput');
        const $imgElement = $('#pet-img');

        // 사진 등록 이벤트 처리
        $fileInput.on('change', function () {
            var selectedFile = $fileInput[0].files[0]; // 첫 번째 선택한 파일을 가져옵니다.
            
          // 파일을 이미지로 미리보기합니다.
            if (selectedFile) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    // 이미지 파일을 읽어서 이미지 요소에 표시합니다.
                    $imgElement.attr('src', e.target.result);
                };

                reader.readAsDataURL(selectedFile);
                
            }
        });
        
        //사진 삭제 이벤츠 처리
		$("#pet-delete-btn").on("click", function() {
		    // 파일 입력 요소 초기화
		    $("#petfileInput").val("");
		    // 이미지 속성을 기본 이미지로 바꿈
		    $("#pet-img").attr("src", "resources/images/login/basic_profile.jpg");
		    // 파일 밸류를 기본 이미지로
		    $("#petfileInput").val("/login/basic_profile.jpg");
		});
        
        
        
		var isPetBirth = false;
		var isPetName = false;
		var isPetKind = false;
		var isGender = false;

		// 이름 입력 이벤트 리스너(필수)
		$("#pet_name").on('keyup', function () {
		    var petName = $("#pet_name").val().trim();
		    // 이름이 비어 있지 않으면 isPetName 값을 true로 설정합니다.
		    if(petName.trim().length>0){
		    	isPetName = true;
		    }else{
		    	isPetName = false;
		    }
		    
		    updateBtnState(); // 버튼 활성화 상태를 업데이트합니다.
		});
		
		 //펫 타입 이벤트 리스너(필수)
	    $("#pet_kind_list").on("change", function() {
	        // 선택한 옵션의 값 가져오기
	        var selectedValue = $(this).val();

	        if (selectedValue == "default") {
	            isPetKind = false;
	        } else {
	            isPetKind = true;
	        }
	        
	        updateBtnState();
	    });
		
        // 생년월일 유효성 검사(필수)
        $("#petbirth").on("keyup", function() {
			var petbirth = $("#petbirth").val();
			var petbirthChk = $("#petbirthChk")
			var pattern = /^(19[0-9][0-9]|20\d{2})-(0[0-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])$/;
			
			if(!pattern.test(petbirth)){
				petbirthChk.text("유효한 생일을 기재해주세요.").css("color","red");
				isPetBirth = false;
			}else{
				petbirthChk.text("")
				isPetBirth = true;
			}
			
			updateBtnState();
		})
		
		//성별 유효성 검사(필수)
		$("input[name='pet_gender']").on("change", function() {
	        if ($(this).is(":checked")) {
	            isGender = true; // 라디오 버튼이 선택된 경우 isGender를 true로 설정
	        } else {
	            isGender = false; // 라디오 버튼이 선택되지 않은 경우 isGender를 false로 설정
	        }
	        updateBtnState();
		})
		
		// 몸무게 유효성 검사(필수 아님)
		$('#pet_weight').on('input', function() {
			var pet_weight = $("#pet_weight").val();
			var petweightChk = $("#petweightChk")
			var pattern = /^[0-9]+(\.[0-9]+)?$/;
			
			if(!pattern.test(pet_weight)){
				petweightChk.text("숫자만 쓸 수 있습니다.").css("color","red");
				isPetWeight = false;
			}else{
				petweightChk.text("")
				isPetWeight = true;
			}
			
			updateBtnState()
			
		  });
		
        
		//버튼 활성화 
		function updateBtnState() {
			if(isPetBirth && isPetKind && isGender && isPetName && isPetWeight){
				$("#pet_add_btn").prop("disabled", false).css("background-color", "#FFA629").css("cursor", "pointer").css("color","white");
			}else{
				$("#pet_add_btn").prop("disabled", true).css("background-color", "#F3F1EF").css("cursor", "default").css("color","#C4C4C4");
			}
		}
		
		//항상 활성화
		updateBtnState()
		
		});
</script>
<script type="text/javascript">
	function petReg_go(f) {
		if(confirm("반려동물을 등록하시겠습니까?")){
			f.action="/petReg.do"
			f.submit();
		}
	}
</script>
</head>
<body>
	<header>
		<jsp:include page="../home/home_top.jsp" />
	</header>
	<form id="write-pet-profile-form" method="post" enctype="multipart/form-data">
		<div style="margin-top:100px;">
			<jsp:include page="mypage-sidebar.jsp" />
		</div>
		<div id="write-pet-profile">
			<div style="font-size: 50px; font-weight: bold;color:#FFA629;">반려동물 등록</div>
			<!-- 기본 이미지 뜨게 할거고 -->
			<div id="pet-img-div">
				<img src="resources/images/login/basic_profile.jpg" id="pet-img" />				
			</div>
			<!-- 사진 첨부 버튼 -->
			<div id="pet-upload">
				<label for="petfileInput" id="pet-add-btn" style="margin-right:15px;">
					사진 추가<input type="file" id="petfileInput" name="file" style="display: none;">
				</label>
				<label id="pet-delete-btn">삭제</label>
			</div>
			<!-- 이름 입력 -->
			<div id="pet-name">
				<span class="pet_essential">*</span><input type="text" name="pet_name" id="pet_name" placeholder="이름" maxlength="10" />
			</div>
			<div id="pet-birth">
				<span class="pet_essential">*</span><input type="date" placeholder="반려동물의 생년월일" name="pet_birth" id="petbirth" style="font-size: 20px;" />
			</div>
			<div id ="petbirthChk" style="width:400px;"></div>
			
			<!-- 강아지, 고양이 선택 -->
			<div id="choice-pet-img-div">
				<input type="radio" class="radio_item" name="pet_type" value="강아지" id="DOG"/><!-- name 언제든지 vo에 맞춰 수정 -->
				<label for="DOG" class="label_item">
					<img src="resources/images/mypage/dog.png" class="choice-pet-img">
					<p style="margin-left:80px;">강아지</p>
				</label>
				
				<input type="radio" class="radio_item" name="pet_type" value="고양이" id="CAT"/>
				<label for="CAT" class="label_item">
					<img src="resources/images/mypage/cat.png" class="choice-pet-img">
					<p style="margin-left:80px;">고양이</p>
				</label>
			</div>
			<!-- 품종선택 -->
			<div>
				<span class="pet_essential">*</span>
				<select id="pet_kind_list" name="pet_kind">
					<option value="default">품종</option>
				</select>
			</div>
			<!-- 성별 -->
			<div style="margin:5px 0; width:420px;font-size:18px;">
				<span class="pet_essential">*</span><label>성별</label>
			</div>
			<div id="pet_gender_radio">
				<input type="radio" name="pet_gender" value="남아" class="gender_radio"/>
				<label id="male" style="margin-right:50px;font-size:20px;">남아</label>
				<input type="radio" name="pet_gender" value="여아" class="gender_radio"/>
				<label id="female" style="font-size:20px;">여아</label>
			</div>
			<!-- 중성화 여부 -->
			<div id="pet_neut_div">
				<input type="checkbox" id="pet_neut_check" name="pet_neute" value="중성화"/><label for="pet_neut_check" style="font-size: 20px;">중성화 여부</label>
			</div>
			<!-- 몸무게 입력, 최소 0 -->
			<div id="pet_weight_div">
				<span class="pet_essential">*</span><input type="text" placeholder="몸무게(kg)" name="pet_weight" id="pet_weight" maxlength="4" />
			</div>
			<div id ="petweightChk" style="width:400px;"></div>
			<!-- 등록, 취소 버튼 -->
			<div id="pet_add_cancel_div">
				<input type="button" id="pet_add_btn" class="pet_add_cancel_btn" onclick="petReg_go(this.form)" value="등록" disabled/>
			</div>
		</div>
	</form>
	<footer>
		<jsp:include page="/WEB-INF/views/home/home_bottom.jsp" />
	</footer>
	<script type="text/javascript">
	//라디오 버튼 요소와 선택 박스 요소를 가져옵니다.
	const DogRadio = document.getElementById('DOG');
	const CatRadio = document.getElementById('CAT');
	const pet_kind_list = document.getElementById('pet_kind_list');
	
	var isPetKind = false;
	
	// 라디오 버튼 변경 이벤트 리스너를 추가합니다.
	DogRadio.addEventListener('change', updateSelectOptions);
	CatRadio.addEventListener('change', updateSelectOptions);
	
	// 선택 박스 옵션들을 설정합니다.
	const DogList = ["","골든리트리버", "닥스훈트", "래브라도 리트리버", "말티즈", "래브라도 리트리버","미니어처 슈나우저", "미니어처 푸들",
					"미니어처 핀셔", "베들링턴 테리어", "보더 콜리", "보스턴 테리어", "비글", "비숑 프리제", "사모예드", "셰틀랜드 쉽독",
					"스탠더드 푸들", "시바 이누", "시베리안 허스키", "시츄", "아메리칸 코카 스파니엘", "요크셔 테리어", "웰시 코기",
					"이탈리안 그레이 하운드", "제페니스 스피츠", "진돗개", "치와와", "카바리에 킹찰스 스파니", "코카 스파니엘", "토이 푸들",
					"파피용", "퍼그", "페키니즈", "펨브록 웰시코기", "포메라니안", "푸들", "풍산개", "프렌치 불도그","믹스견", "기타"];
	const CatList = ["","브리티시 숏헤어", "페르시안", "메인쿤", "시암", "렉돌", "스핑크스", "아비시니안","벵골", "버먼", "아메리칸 숏헤어",
					"엑조틱 숏헤어", "러시안 블루", "스코티시 폴드", "버마 고양이","노르웨이숲", "데본 렉스", "시베리안 고양이", "맹크스",
					"터키시 앙고라", "아메리칸 밥테일", "코니시 렉스", "아메리칸 컬", "히말리안", "봄베이 고양이", "이집션 마우", "발리니즈",
					"사트트뢰", "라가머핀", "터키시 반", "먼치킨", "기타"];
	
	// 초기 선택 박스 상태를 설정합니다.
	updateSelectOptions();
	
	// 라디오 버튼 변경에 따라 선택 박스 옵션을 업데이트하는 함수
	function updateSelectOptions() {
	    // 현재 선택된 라디오 버튼을 확인합니다.
	    if (DogRadio.checked) {
	        updateOptions(DogList);
	    } else if (CatRadio.checked) {
	        updateOptions(CatList);
	    } else {
	        // 어떤 라디오 버튼도 선택되지 않았을 때 기본 메시지를 표시합니다.
	        updateOptions(["품종을 선택해주세요"]);
	    }
	}
	
	// 선택 박스의 옵션을 업데이트하는 함수
	function updateOptions(options) {
	    // 선택 박스의 모든 옵션을 제거합니다.
	    pet_kind_list.innerHTML = '';
	
	    // 새로운 옵션들을 선택 박스에 추가합니다.
	    for (const option of options) {
	        const optionElement = document.createElement('option');
	        optionElement.value = option;
	        optionElement.textContent = option;
	        pet_kind_list.appendChild(optionElement);
	    }
	}
	</script>
</body>
</html>


