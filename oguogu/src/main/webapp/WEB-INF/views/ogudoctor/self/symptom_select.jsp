<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>증상체크</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;500&display=swap" rel="stylesheet">
<style type="text/css">
	.sym_chek{
		width: 1920px;
		text-align: center;
		margin: 0 auto;
		margin-bottom: 30px;
	}
</style>
</head>
<body>
	<div class="sym_chek">
		<%
		String[] value = request.getParameterValues("bodypart_dog");
		
		if (value != null) {
		    for (String val : value) {
		        // out.print(val + "<br>");
		        switch (val) {
	            case "meal":
	                // Include option1.jsp
	                request.getRequestDispatcher("/WEB-INF/views/ogudoctor/self/category_symptom/dog/meal.jsp").include(request, response);
	                break;
	           	case "option2":
	                // Include option2.jsp
	                request.getRequestDispatcher("/WEB-INF/views/option2.jsp").include(request, response);
	                break;
	            case "option3":
	                // Include option3.jsp
	                request.getRequestDispatcher("/WEB-INF/views/option3.jsp").include(request, response);
	                break;
	            default:
	                out.println("Invalid option.");
	                break;
	        	}
		    }
		} else {
		    out.print("bodypart_dog parameter is null or missing");
		}	
		%>
	</div>
</body>
</html>