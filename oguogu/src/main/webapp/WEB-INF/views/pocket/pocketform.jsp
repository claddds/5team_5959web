<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>포켓 만들기</title>

<style type="text/css">
#minibanner img {
	width: 1920px;
	height: 200px;
	display: flex;
	margin: auto;
	margin-top: 20px;
	margin-bottom: 20px;
}
#pocket_form {
	width: 1920px;
	display: flex;
	margin: auto;
	margin-top: 20px;
	margin-bottom: 20px;
}
#pocket_info{
	width: 1000px;
	margin: auto;
	transform: translate(0, -50%);
}

input[type=text], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

input[type=submit] {
  width: 100%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}


footer {
	width: 1920px;
	display: flex;
	margin: auto;
	margin-top: 20px;
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

	<div id=minibanner>
		<a href="/pocketmaindisplay.do"><img src="resources/images/page_banner/listbanner_pocket.png"></a>
	</div>
	
	<div id = pocket_form>
		<form method="post" enctype="multipart/form-data">
			<div id = img_upload>
			</div>
			<div id = pocket_info>
				<label for="fname">First Name</label>
    			<input type="text" id="fname" name="firstname" placeholder="Your name..">

    			<label for="lname">Last Name</label>
    			<input type="text" id="lname" name="lastname" placeholder="Your last name..">
			</div>
			<div id = location_add>
			</div>
			<div id = form_submit>
				<input type="submit" value="Submit">
			</div>
		</form>
	</div>
	
	<footer>
		<jsp:include page="/WEB-INF/views/home/home_bottom.jsp" />
	</footer>
</body>
</html>