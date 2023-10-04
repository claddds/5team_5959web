<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오구닥터-질병정보 Add Form(관리자 페이지)</title>
<link rel="stylesheet" href="resources/css/summernote-lite.css">
<style type="text/css">
	#minibanner img{
		width:1920px;
		height:200px;
		display:flex;
		margin:auto;
		margin-top:20px;
		margin-bottom: 20px;
    }
    #table_form{
    	width:1200px;
    	display:flex;
		margin:auto;
		margin-top:20px;
		margin-bottom: 20px;
    }
    #table_form table{
    	width:1200px;
    	margin-left:auto; 
    	margin-right:auto;
    	border-collapse:collapse;
    	text-align: center;
    	}
    	
	table,th,td{
		border: 1px solid black; 
		padding: 3px;
		
		}
	.note-btn-group{width: auto;}
	.note-toolbar{width: auto;}
    footer{
		width:1920px;
		display:flex;
		margin:auto;
		margin-top:20px;
		margin-bottom: 20px;
	}
</style>
<script type="text/javascript">
	function optionChange() {
    	var stool = ['대변 색상','대변의 단단한 정도','대변 횟수'];
    	var urine = ['소변 색상','소변 냄새','소변 횟수'];
    	var meal = ['식사량','음수량'];
    	var vomit = ['구토의 색상','구토 목격 횟수'];
        var ear = ['귀 피부 색깔','귀지 색깔','귀 긁기 수준','귀의 악취'];
        var face = ['특정 부위가 불어남','코 주변이 변함','얼굴을 자주 긁음'];
        var eye = ['눈동자 문제','눈 주변 문제','눈물/눈꼽 문제'];
       	var paw = ['발바닥을 계속 햝음'];
        var joint = ['걸음걸이에 문제가 있음'];
        var skin = ['피부','털'];
        var tooth = ['냄새','치석','이빨빠짐','혀와 잇몸 색'];
        var breath = ['이상한 소리를 냄','숨쉬기 이상 혹은 기침'];
        var genitals = ['생식기 햝음','항문이 튀어나옴','항문 긁기'];
        var behavior = ['평소와 다른 이상 행동'];
        var abdomen = ['배(복부)의 이상 변화'];
        var waist = ['등(허리)의 이상 변화'];
        	
        var value = $('.sym_cate').val();
        var option;
        	
        if (value == 'stool') {
        	option = stool;
        } else if ( value == 'urine' ) {
        	option = urine;
        }else if ( value == 'meal' ) {
        	option = meal;
        }else if ( value == 'vomit' ) {
        	option = vomit;
        }else if ( value == 'ear' ) {
        	option = ear;
        }else if ( value == 'face' ) {
        	option = face;
        }else if ( value == 'eye' ) {
        	option = eye;
        }else if ( value == 'paw' ) {
        	option = paw;
        }else if ( value == 'joint' ) {
       		option = joint;
       	}else if ( value == 'skin' ) {
       		option = skin;
       	}else if ( value == 'tooth' ) {
       		option = tooth;
       	}else if ( value == 'breath' ) {
       		option = breath;
       	}else if ( value == 'genitals' ) {
       		option = genitals;
       	}else if ( value == 'behavior' ) {
       		option = behavior;
       	}else if ( value == 'abdomen' ) {
       		option = abdomen;
        }else if ( value == 'waist' ) {
       		option = waist;
       	} else {
       		option = [];
       	}
        	
       	$('.sym_check').empty();
       	$('.sym_check').append( '<option></option>' );
       	
       	for ( var i = 0; i < option.length; i++ ) {
       		$('.sym_check').append('<option value = "' + option[i] + '">' + option[i] + '</option>');
        }
	}

	function save_go(f) {
		f.action="/disease_insert.do";
		f.submit();
	}
    
</script>
</head>
<body>
	<header>
		<jsp:include page="/WEB-INF/views/home/home_top.jsp" />
	</header>
	<!-- 사이드바 -->
	<jsp:include page="/WEB-INF/views/adminhome/sidebar.jsp" />
	
    <div id="table_form">
    <form method="post" enctype="multipart/form-data">
			<table>
			
				<tr align="center">
					<th bgcolor="#99ccff">동물종류</th>
					<td>
						<select name="animal" class="animal">
						    <option value="0">강아지</option>
						    <option value="1">고양이</option>
  						</select>
					</td>
				</tr>
				
				<tr align="center">
					<th bgcolor="#99ccff">증상유형</th>
					<td>
						<select name="sym_cate" class="sym_cate" onchange="optionChange()">
							<option></option>
						    <option value="stool">대변</option>
						    <option value="urine">소변</option>
						    <option value="meal">식사</option>
						    <option value="vomit">구토</option>
						    <option value="ear">귀</option>
						    <option value="face">얼굴</option>
						    <option value="eye">눈</option>
						    <option value="paw">발바닥</option>
						    <option value="joint">관절</option>
						    <option value="skin">피부/모질</option>
						    <option value="tooth">구강/치아</option>
						    <option value="breath">호흡기</option>
						    <option value="genitals">생식기/항문</option>
						    <option value="behavior">행동</option>
						    <option value="abdomen">배(복부)</option>
						    <option value="waist">등(허리)</option>
  						</select>
					</td>
				</tr>
				
				<tr align="center">
					<th bgcolor="#99ccff">증상체크</th>
					<td>
						<select name="sym_check" class="sym_check">
							<option></option>
  						</select>
					</td>
				</tr>
				
				<tr align="center">
					<th bgcolor="#99ccff">위험도</th>
					<td>
						<select name="period_line" class="period_line">
							<option value="0">낮음</option>
							<option value="1">위험</option>
							<option value="2">보통</option>
  						</select>
					</td>
				</tr>
				
				<tr align="center">
					<th bgcolor="#99ccff">질병정보</th>
					<td colspan="2">
						<textarea rows="20" cols="120" name="content" id="content"></textarea>
					</td>
				</tr>
				
				<tr align="center">
					<th bgcolor="#99ccff">질병정보 이미지</th>
					<td><input type="file" name="file" size ="20"/></td>
				</tr>
				
				<tfoot>
					<tr align="center">
						<td colspan="3">
							<input type="button" value="저장" onclick="save_go(this.form)" />
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<input type="reset" value="취소" />
						</td>
					</tr>
				</tfoot>
				
			</table>
		</form>
    </div>

    <footer>
		<jsp:include page="/WEB-INF/views/home/home_bottom.jsp" />
	</footer>
	
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" crossorigin="anonymous"></script>
    <script src="resources/js/summernote-lite.js"></script>
    <script src="resources/js/lang/summernote-ko-KR.js"></script>
    <script type="text/javascript">
    	$(function(){
    		$('#content').summernote({
    			lang : 'ko-KR',
    			height : 300,
    			focus : true,
    			callbacks : {
    				onImageUpload :  function(files, editor){
    					for (var i = 0; i < files.length; i++) {
							sendImage(files[i], editor);
						}
    				}
    			}
			});
    	});
    	
    	function sendImage(file, editor) {
			var frm = new FormData();
			frm.append("s_file",file);
			$.ajax({
				url : "/saveImage.do",
				data : frm,
				type : "post",
				contentType : false,
				processData : false,
				dataType : "json",
			}).done(function(data) {
				var path = data.path;
				var fname = data.fname;
				$("#content").summernote("editor.insertImage",path+"/"+fname);
			});
		}
    </script>
</body>
</html>