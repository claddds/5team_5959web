<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오구닥터-질병정보 미게시 페이지(관리자 페이지)</title>
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
function delete_ok(f) {
	f.action="/disease_delete.do";
	f.submit();
}
function list_go(f) {
	f.action="/goadmindiseaselist.do";
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
    <form method="post">
    	<p>선택한 증상 게시여부 변경</p>
		<input type="hidden" name="ogu_idx" value="${ogu_idx}">
		<input type="hidden" name="cPage" value="${cPage}">
		<input type="button" value="변경" onclick="delete_ok(this.form)"/>
		<input type="button" value="목록" onclick="list_go(this.form)"/>	
	</form>			
    </div>

    <footer>
		<jsp:include page="/WEB-INF/views/home/home_bottom.jsp" />
	</footer>
	
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" crossorigin="anonymous"></script>
    
</body>
</html>