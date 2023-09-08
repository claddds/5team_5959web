<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오구닥터 메인화면</title>
<style type="text/css">
	.maindisplay_banner{
		display: flex;
		justify-content: center;
		margin-top: 20px;
	}
	
	@font-face {
	    font-family: 'SBAggroB';
	    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2108@1.1/SBAggroB.woff') format('woff');
	    font-weight: normal;
	    font-style: normal;
	}
	.ogudoctor_font_group{
		width:1920px;
		margin:auto;
		text-align: center;
		font-family: 'SBAggroB';
		font-size: 50px;
	}
	.ogudoctor_font_group a{
		text-decoration-line: none;
		color: black; 
	}
	.ogudoctor_self{
		display: flex;
		justify-content: center;
		margin-top: 30px;
		text-align: center;
	}
	.ogudoctor_cal{
		display: flex;
		justify-content: center;
		margin-top: 50px;
		text-align: center;
	}
	.ogudoctor_dog_font{
		width:50%;
	}
	.ogudoctor_cat_font{
		width:50%;
	}
	.ogudoctor_cal_font{
		
	}
	footer{
		width:1920px;
		display:flex;
		margin:auto;
		margin-top:20px;
		margin-bottom: 20px;
	}
	
</style>
<script type="text/javascript">
	
</script>
</head>
<body>
	<header>
		<jsp:include page="/WEB-INF/views/home/home_top.jsp" />
	</header>
	<div class="maindisplay_banner">
	<a href="/ogudoctormaindisplay.do"><img src="resources/images/home/mainbanner_ogudoctor.png"></a>
	</div>
	<div class="ogudoctor_font_group">
		<div class="ogudoctor_self">
			<div class="ogudoctor_dog_font">
				<a href="/ogu_dog_categorydisplay.do">강아지 간단 체크 ></a>
			</div>
			<div class="ogudoctor_cat_font">
				<a href="/ogu_cat_categorydisplay.do">고양이 간단 체크 ></a>
			</div>
		</div>
		<div class="ogudoctor_cal">
			<div class="ogudoctor_cal_font">
				<a href="/ogudoctorcaldisplay.do">건강 계산기 ></a>
			</div>
		</div>
	</div>
	<footer>
		<jsp:include page="/WEB-INF/views/home/home_bottom.jsp" />
	</footer>
</body>
</html>