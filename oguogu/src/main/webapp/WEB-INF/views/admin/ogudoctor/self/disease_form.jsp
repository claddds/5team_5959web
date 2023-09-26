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
						<select name="sym_cate" class="sym_cate">
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
    
    <script type="text/javascript">
    
    </script>
    <footer>
		<jsp:include page="/WEB-INF/views/home/home_bottom.jsp" />
	</footer>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" crossorigin="anonymous"></script>
    <script src="resources/js/summernote-lite.js"></script>
    <script src="resources/js/lang/summernote-ko-KR.js"></script>
    <script type="text/javascript">
    
    </script>
</body>
</html>