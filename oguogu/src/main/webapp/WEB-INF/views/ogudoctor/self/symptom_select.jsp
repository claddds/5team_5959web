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
		<c:choose>
    		<c:when test="${not empty param.bodypart_dog}">
        		<c:forEach var="val" items="${paramValues.bodypart_dog}">
            		<c:choose>
            		
                		<c:when test="${val eq 'stool'}">
                     		<script type="text/javascript">
            					window.location.href = "/dog_meal_list.do";
        					</script>
                		</c:when>
                
                		<c:when test="${val eq 'urine'}">
                     		<script type="text/javascript">
            					window.location.href = "/dog_meal_food_list.do";
        					</script>
                		</c:when>
                
		                <c:when test="${val eq 'meal'}">
		                     <script type="text/javascript">
		            			window.location.href = "/dog_meal_list.do";
		        			</script>
		                </c:when>
                
		                <c:when test="${val eq 'vomit'}">
		                     <script type="text/javascript">
		            			window.location.href = "/dog_meal_food_list.do";
		        			</script>
		                </c:when>
                
		                <c:when test="${val eq 'ear'}">
		                     <script type="text/javascript">
		            			window.location.href = "/dog_meal_food_list.do";
		        			</script>
		                </c:when>
                
		                <c:when test="${val eq 'face'}">
		                     <script type="text/javascript">
		            			window.location.href = "/dog_meal_food_list.do";
		        			</script>
		                </c:when>
                
		                <c:when test="${val eq 'eye'}">
		                     <script type="text/javascript">
		            			window.location.href = "/dog_meal_food_list.do";
		        			</script>
		                </c:when>
                
		                <c:when test="${val eq 'paw'}">
		                     <script type="text/javascript">
		            			window.location.href = "/dog_meal_food_list.do";
		        			</script>
		                </c:when>
                
		                <c:when test="${val eq 'joint'}">
		                     <script type="text/javascript">
		            			window.location.href = "/dog_meal_food_list.do";
		        			</script>
		                </c:when>
                
		                <c:when test="${val eq 'skin'}">
		                     <script type="text/javascript">
		            			window.location.href = "/dog_meal_food_list.do";
		        			</script>
		                </c:when>
                
		                <c:when test="${val eq 'tooth'}">
		                     <script type="text/javascript">
		            			window.location.href = "/dog_meal_food_list.do";
		        			</script>
		                </c:when>
                
		                <c:when test="${val eq 'breath'}">
		                     <script type="text/javascript">
		            			window.location.href = "/dog_meal_food_list.do";
		        			</script>
		                </c:when>
                
		                <c:when test="${val eq 'genitals'}">
		                     <script type="text/javascript">
		            			window.location.href = "/dog_meal_food_list.do";
		        			</script>
		                </c:when>
                
		                <c:when test="${val eq 'behavior'}">
		                     <script type="text/javascript">
		            			window.location.href = "/dog_meal_food_list.do";
		        			</script>
		                </c:when>
                
		                <c:when test="${val eq 'abdomen'}">
		                     <script type="text/javascript">
		            			window.location.href = "/dog_meal_food_list.do";
		        			</script>
		                </c:when>
                
		                <c:when test="${val eq 'waist'}">
		                     <script type="text/javascript">
		            			window.location.href = "/dog_meal_food_list.do";
		        			</script>
		                </c:when>
                
		                <c:otherwise>
		                    Invalid option.
		                </c:otherwise>
            		</c:choose>
        		</c:forEach>
    	</c:when>
    
    <c:otherwise>
        bodypart_dog parameter is null or missing
    </c:otherwise>
</c:choose>

	</div>
</body>
</html>