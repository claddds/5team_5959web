<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오구닥터-질병정보 Add Form(관리자 페이지)</title>
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
    	width:1920px;
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
</head>
<body>
	<header>
		<jsp:include page="/WEB-INF/views/home/home_top.jsp" />
	</header>
	<div id=minibanner>
        <a href="/ogudoctormaindisplay.do"><img src="resources/images/page_banner/listbanner_ogudoctor.png"></a>
    </div>
    <div id="table_form">
    <form method="post" enctype="multipart/form-data">
			<table>
				<tr align="center">
					<td bgcolor="#99ccff">동물종류</td>
<<<<<<< HEAD
					
=======
>>>>>>> daece5ee1dde2d146bfb63d94105a6f52976785f
				</tr>
				<tr align="center">
					<td bgcolor="#99ccff">증상유형</td>
				</tr>
				<tr align="center">
					<td bgcolor="#99ccff">증상체크</td>
				</tr>
				<tr align="center">
					<td bgcolor="#99ccff">질병정보</td>
					<td colspan="2">
						<textarea rows="20" cols="120" name="content" id="content"></textarea>
					</td>
				</tr>
				<tr align="center">
					<td bgcolor="#99ccff">질병정보 이미지</td>
					<td><input type="file" name="dis_info_img" size ="20"/></td>
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
<<<<<<< HEAD
	<script src="https://code.jquery.com/jquery-3.7.0.min.js" crossorigin="anonymous"></script>
=======
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" crossorigin="anonymous"></script>
>>>>>>> daece5ee1dde2d146bfb63d94105a6f52976785f
    <script src="resources/js/summernote-lite.js"></script>
    <script src="resources/js/lang/summernote-ko-KR.js"></script>
    <script type="text/javascript">
    
    </script>
</body>
</html>