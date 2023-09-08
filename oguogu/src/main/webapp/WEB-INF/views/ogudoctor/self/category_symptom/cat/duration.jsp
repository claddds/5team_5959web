<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>지속시기</title>
<style type="text/css">
	.duration{
		font-family: "Inter", sans-serif;
		color: $text-color;
		font-size: calc(1em + 1.25vw);
		background-color: mix(#fff, $primary-color, 90%);
	}
	form {
  display: flex;
  flex-wrap: wrap;
  flex-direction: column;
}

label {
  display: flex;
  cursor: pointer;
  font-weight: 500;
  position: relative;
  overflow: hidden;
  margin-bottom: 0.375em;
  /* Accessible outline */
  /* Remove comment to use */ 
  /*
    &:focus-within {
        outline: .125em solid $primary-color;
    }
  */
  input {
    position: absolute;
    left: -9999px;
    &:checked + span {
      background-color: mix(#fff, $primary-color, 84%);
      &:before {
        box-shadow: inset 0 0 0 0.4375em $primary-color;
      }
    }
  }
  span {
    display: flex;
    align-items: center;
    padding: 0.375em 0.75em 0.375em 0.375em;
    border-radius: 99em; // or something higher...
    transition: 0.25s ease;
    &:hover {
      background-color: mix(#fff, $primary-color, 84%);
    }
</style>
</head>
<body>
	<div class="duration">
		<div class="duration_ex">
			<h3>증상의 지속기간이 길수록 단순한 증상이 아닌 질병일 확률이 커집니다.</h3>
			<br>
			<h3>아래 항목 중 선택해주세요.</h3>
		</div>
		<div class="duration_text">
			<h2>필수</h2>
			<h2>지속시기</h2>
		</div>
		<div class="duration_check">
			<form>
				<label>
					<input type="radio" name="duration" checked/>
					<span>1일 이내</span>
				</label>
				<label>
					<input type="radio" name="duration" checked/>
					<span>3일 이내</span>
				</label>
				<label>
					<input type="radio" name="duration" checked/>
					<span>1주일 미만</span>
				</label>
				<label>
					<input type="radio" name="duration" checked/>
					<span>1주일 이상</span>
				</label>
			</form>
		</div>
	</div>
	
</body>
</html>