<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오구닥터 메인화면</title>
<style type="text/css">
	*{
		padding: 0;
	}
</style>
<script>
	$(document).ready(function() {
		$("input[type='checkbox']").on("click", function() {
			var count = $("input:checked[type='checkbox']").length;
			if(count>3){
				$(this).prop("checked",false);
				alert("3개까지만 선택가능합니다.")
			}
		});
	});
</script>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Checkbox as tiles</title>
    <!-- FontAwesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet">
    <!-- Stylesheet -->
    <link rel="stylesheet" href="style.css">
</head>
<body>
	<h2>유형 선택</h2>
	<h3>반려견의 증상 유형을 선택해주세요<br>최대 3개까지 가능합니다.</h3>
	<div class="tile">
		<label><input type="checkbox" name="bodypart" value="stool">대변</label>
		<label><input type="checkbox" name="bodypart" value="urine">소변</label>
		<label><input type="checkbox" name="bodypart" value="meal">식사</label>
		<label><input type="checkbox" name="bodypart" value="vomit">구토</label>
		<label><input type="checkbox" name="bodypart" value="ear">귀</label>
		<label><input type="checkbox" name="bodypart" value="face">얼굴</label>
		<label><input type="checkbox" name="bodypart" value="eye">눈</label>
		<label><input type="checkbox" name="bodypart" value="paw">발바닥</label>
		<label><input type="checkbox" name="bodypart" value="joint">관절</label>
		<label><input type="checkbox" name="bodypart" value="skin">피부/모질</label>
		<label><input type="checkbox" name="bodypart" value="tooth">구강/치아</label>
		<label><input type="checkbox" name="bodypart" value="breath">호흡기</label>
		<label><input type="checkbox" name="bodypart" value="genitals">생식기/항문</label>
		<label><input type="checkbox" name="bodypart" value="fatness">비만도</label>
		<label><input type="checkbox" name="bodypart" value="behavior">행동</label>
		<label><input type="checkbox" name="bodypart" value="abdomen">배(복부)</label>
		<label><input type="checkbox" name="bodypart" value="waist">등(허리)</label>
	</div>
		
</body>
</html>