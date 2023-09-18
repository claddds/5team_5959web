<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>증상체크-배(복부)</title>

<style type="text/css">
	.abdomen_dog_ex{
		width: 1920px;
		text-align: center;
		margin: 0 auto;
		margin-bottom: 30px;
	}
	.abdomen_dog_change_checkbox{
		width: 1600px;
		text-align: center;
		margin: 0 auto;
		display: grid;
		place-items: center;
		gap:15px;
		
	}
	.container{
		width: 180px;
		height: 180px;
		background-color: #ffffff;
		position: relative;
		cursor: pointer;
	}
	.container img{
		width: 70%;
		height: 70%;
  		position: absolute;
  		margin: auto;
  		left: 0;
  		right: 0;
  		top: 0;
  		bottom: 0;
  		cursor: pointer;
	}
	.container label{
		margin-top: 5px; /* 이미지와 텍스트 사이 간격 조절 */
	}
	.symptom_ex{
		 margin: 0; /* 기본 마진 제거 */
	}
	input[type="checkbox"]{
		-webkit-appearance: none;
		position: relative;
		width: 100%;
		cursor:pointer;
	}
	input[type="checkbox"]:after {
  		position: absolute;
  		font-family: "Font Awesome 5 Free";
  		font-weight: 400;
  		content: "\f111";
  		font-size: 18px;
  		color: #ffa234;
  		right: 10px;
  		top: -5px;
	}
	
	input[type="checkbox"]:checked:after {
  		font-weight: 900;
  		content: "\f058";
  		color: #ffa234;
	}
	@media screen and (min-width: 950px) {
		.abdomen_dog_change_checkbox{
			grid-template-columns: repeat(4, 1fr);
    		gap: 10px;
		}
		.container {
    		height: 300px;
    		width: 300px;
  		}
  		input[type="checkbox"]:after {
   			font-size: 22px;
  		}
	}
</style>
	
<script type="text/javascript">
</script>

</head>
<body>
	<div class="abdomen_dog">
		<div class="abdomen_dog_ex">
			<h1>배(복부)</h1>
			<h3>복부가 팽팽하게 불어나거나, 배특정 부위가 혹처럼 불어나는 것은 질병의 증상일 수 있습니다.</h3>
			<br>
			<h3>아래 항목 중 선택해주세요.</h3>
		</div>
		<div class="abdomen_dog_change_text">
			<h2>중복 선택 가능</h2>
			<h2>배(복부)의 이상 변화</h2>
		</div>
		<div class="abdomen_dog_change_checkbox">
			<div class="container">
				<input type="checkbox" name="change_dog" id="bloat">
				<label for="bloat">
					<img src="resources/images/ogudoctor/self_symptom/abdomen_dog/bloat_dog.png">
					<div class="symptom_ex">복부팽만</div>
				</label>
			</div>
		</div>
	</div>
	
	<h2></h2>
</body>
</html>