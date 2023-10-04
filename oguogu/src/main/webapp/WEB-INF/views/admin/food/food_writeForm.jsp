<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 오구오구 상품관리 </title>
<link rel="stylesheet" href="resources/css/summernote-lite.css">
<style type="text/css">
  #title {
	margin : 10px auto;
   text-decoration: none;
   top: 50%;
   width: 400px;
   text-decoration: none;
   background-color: white;
   text-align: center;
   color: #FFA629;
   font-weight: bold;
   text-shadow: 1px 1px 2px #D1D1D1;
   font-size: 20pt;
   border: 1px solid;
   padding: 10px;
   border-radius:20px;
}
table{ margin:auto; width:1200px;  text-align: center;  border-radius:20px; color:black; }
table > td {border: 3px solid orange; padding: 3px ; text-align:lrft;  border-radius:20px;}
	
input[type=reset] { border:1px solid white; background-color: #FFA629;font:20px ;  color:white; border-radius:20px; height: 60px; width: 60px;    font-weight: bold;}
input[type=button] { border:1px solid white; background-color: #FFA629;font:200px ; color:white; border-radius:20px;  height: 60px; width: 60px;   font-weight: bold;}
input[type=file] { border:1px solid white; background-color: #FFA629;font:200px ; color:white;   }
  
 input[type="radio"], span {
  vertical-align: middle;
}

input[type="radio"] {
  appearance: none;
  border: max(2px, 0.1em) solid gray;
  border-radius: 50%;
  width: 1.25em;
  height: 1.25em;
  transition: border 0.5s ease-in-out;
}

[type="radio"]:checked {
  border: 0.4em solid #FFA629;
}

[type="radio"]:focus-visible {
  outline-offset: max(2px, 0.1em);
  outline: max(2px, 0.1em) dotted tomato;
}

[type="radio"]:hover {
  box-shadow: 0 0 0 max(4px, 0.2em) lightgray;
  cursor: pointer;
}

[type="radio"]:hover + span {
  cursor: pointer;
}

[type="radio"]:disabled {
  background-color: lightgray;
  box-shadow: none;
  opacity: 0.7;
  cursor: not-allowed;
}

[type="radio"]:disabled + span {
  opacity: 0.7;
  cursor: not-allowed;
}

/* Global CSS */
fieldset {
  display: flex;
  justify-content: center;
  border: none;
  margin: 0;
  padding: 40px 20px;
}

*,
*::before,
*::after {
  box-sizing: border-box;
}


/* 목록이동 버튼*/
#link{
	margin-right:300px;	
   text-decoration: none;
   background-color: white;
   text-align: center;
   color: white;
   font-weight: bold;
   text-shadow: 1px 1px 2px #D1D1D1;
   border: 2px solid;
   padding: 10px;
   border-radius:20px;
}
#link:link { color: #FFA629;  font-weight: bold;} /* 기본 상태 */
#link:visited { color: tomato;  font-weight: bold;} /* 사용자가 이미 링크 방문한 상태라면 갈색으로*/
#link:hover { color: #FFA629;  font-weight: bold;} /* 마우스 올려져 있을때 coral색으로 */
#link:active { color: khaki;  font-weight: bold;} /* 마우스로 클릭할떄 khaki색으로 변경 */

footer{
		width:1920px;
		display:flex;
		margin:auto;
		margin-top:1000px;
		margin-bottom: 20px;
	}
.button{
    background-color: #FFA629;
    color: #f8f8ff;
    border: none;
    width: 80px;
    height: 40px;
    font-size: 13pt;
    font-family: 'Bagel Fat One', cursive;         
	border-radius: 10px;
}
.button:hover {
    cursor: pointer;
}
	.note-btn-group{width: auto;}
	.note-toolbar{width: auto;}
</style>
<script type="text/javascript">
function save_go(f) {
	if(f.fd_type.value.trim().length <=0){
		alert("상품 종류를 선택하세요.");
		f.fd_type.focus();
		return;
	}else {
        var fdtype = f.fd_type.value.trim().toLowerCase();
        if (fdtype !== "사료" && fdtype !== "간식" && fdtype !== "용품") {
            alert("상품 종류를 선택하세요.");
            f.fd_type.focus();
            return;
        }
    }
	   if (f.fd_pet_type.value.trim().length <= 0) {
	        alert("동물 종류를 선택하세요.");
	        f.fd_pet_type.focus();
	        return;
	    } else {
	        var petType = f.fd_pet_type.value.trim().toLowerCase();
	        if (petType !== "강아지" && petType !== "고양이") {
	            alert("동물 종류를 선택하세요.");
	            f.fd_pet_type.focus();
	            return;
	        }
	    }
	if(f.fd_age_group.value.trim().length <=0){
		if(f.fd_type.value == "사료"){
		alert("연령을 선텍하세요.");
		f.fd_age_group.focus();
		return;
		}
	}else {
        var ageType = f.fd_age_group.value.trim().toLowerCase();
        if (ageType !== "전연령" && ageType !== "퍼피" && ageType !== "키튼" && ageType !== "어덜트" && ageType !== "시니어") {
        	alert("연령을 선텍하세요.");
            f.fd_age_group.focus();
            return;
        }
    }
	if(f.fd_name.value.trim().length <=0){
		alert("상품명을 입력하세요.");
		f.fd_name.focus();
		return;
	}
if(f.fd_company.value.trim().length <=0){
	alert("제조사를 입력하세요.");
	f.fd_company.focus();
	return;
}
if(f.fd_price.value.trim().length <=0){
	alert("가격을 입력하세요.");
	f.fd_price.focus();
	return;
}
if(f.fd_link.toString().trim().length <=0){
	alert("구매링크를 입력하세요.");
	f.fd_link.focus();
	return;
}
if(f.fd_info.toString().trim().length <=0){
	alert("상품설명을 입력하세요.");
	f.fd_info.focus();
	return;
}
if(f.fd_open.value.trim().length <=0){
	alert("공개여부를 선택하세요.");
	f.fd_open.focus();
	return;
}

		alert("상품이 등록되었습니다.");
		f.action="/food_insert.do";
		f.submit();	
}


</script>
</head>
<body style="width: 100%;">
	<!-- 헤더 구역 -->
<header style="width: 100%;">
		<jsp:include page="/WEB-INF/views/home/home_top.jsp" />
	</header>
<jsp:include page="/WEB-INF/views/adminhome/sidebar.jsp" />	
<div id="repWrapper" style="margin-right: 200px;">
		<p id="title">오구오구 상품등록</p>
		 <hr style="border-width:2px 0 0 0; border-style:dotted; border-color:#FFA629; width:80%; margin-bottom: 30px;" >
		 
		<p align="center"><a id="link" href="/ad_food_list.do">등록상품 전체보기</a></p>
			<form method="post" enctype="multipart/form-data">
			<table>
			<tr>
			<th style="background-color: #FFA629; color: white;font-weight: bold;border: 2px solid ;">상품 분류</th>
			<td style="border-radius:20px; border: 3px solid orange;">
				<select id="fd_type"  name="fd_type" >
							<option  style="display:none;">-종류 선택-</option>
							<option value="사료">사료</option>
							<option value="간식">간식</option>
							<option value="용품">용품</option>
			</select>				
			</td>
			</tr>
			<tr>
			<th style="background-color: #FFA629; color: white;font-weight: bold;border: 2px solid ;">동물 분류</th>
			<td style="border-radius:20px; border: 3px solid orange;">
			<select id="fd_pet_type"  name="fd_pet_type" >
						<option selected style="display:none;">-동물 선택-</option>
						<option value="강아지">강아지</option>
						<option value="고양이">고양이</option>
					</select>				
			</td>
			</tr>
			<tr>
			<th style="background-color: #FFA629; color: white;font-weight: bold;border: 2px solid ;">연령 분류</th>
			<td style="border-radius:20px; border: 3px solid orange;">
			<select id="fd_age_group"  name="fd_age_group" >
						<option selected style="display:none;">-연령 선택-</option>
						<option value="전연령">전연령</option>
						<option value="퍼피">퍼피</option>
						<option value="키튼">키튼</option>
						<option value="어덜트">어덜트</option>
						<option value="시니어">시니어</option>
						</select>				
			</td>
			</tr>
				<tr align="center" >
					<td style="background-color: #FFA629; color: white;font-weight: bold;border: 2px solid ;">등록자</td>
					<td style="border-radius:20px; border: 3px solid orange;"><input type="text" name="admin_nickname" size ="80" value="${nickname}" style="border-radius:20px;" readonly/></td>
					
				</tr>
			<tr align="center" >
					<td style="background-color: #FFA629; color: white;font-weight: bold;border: 2px solid ;" >상품명</td>
					<td style="border-radius:20px; border: 3px solid orange;"><input type="text" name="fd_name" size ="80" style="border-radius:20px;"/></td>
				</tr>
			<tr align="center" >
					<td style="background-color: #FFA629; color: white;font-weight: bold;border: 2px solid ;">제조회사</td>
					<td style="border-radius:20px; border: 3px solid orange;"><input type="text" name="fd_company" size ="80" style="border-radius:20px;"/></td>
				</tr>
			<tr align="center" >
					<td style="background-color: #FFA629; color: white;font-weight: bold;border: 2px solid ;">상품가격</td>
					<td style="border-radius:20px; border: 3px solid orange;"><input type="number" name="fd_price" size ="80" style="border-radius:20px;"/></td>
				</tr>
				<tr align="center" >
					<td style="background-color: #FFA629; color: white;font-weight: bold;border: 2px solid ;">구매 링크</td>
					<td style="border-radius:20px; border: 3px solid orange;"><input type="text" name="fd_link" size ="80" style="border-radius:20px;"/></td>
				</tr>
				<tr align="center">
					<td colspan="2">
						<textarea rows="10" cols="60" name="fd_info" id="content"  style="border-radius:20px;">${ad_f_vo.fd_info}</textarea>
					</td>
				</tr>
				<tr align="left">
					<td bgcolor="FFA629" align="center" style="color: white;font-weight: bold;">상품 이미지</td>
					<td style="border-radius:20px; border: 3px solid orange;"><input type="file" name="file" style="border-radius:20px;"/></td>
				</tr>
				<tfoot>
					<tr align="center" style="border-radius:20px; border: 3px solid orange;">
						<td colspan="4">
   			 			<input type="radio" name="fd_open" value="0" class="radio" /><span class="ml_10">공개</span>&nbsp;&nbsp;&nbsp;&nbsp;
   					 	<input type="radio" name="fd_open" value="1" class="radio" /><span class="ml_10">비공개</span>&nbsp;	
   					 	<hr>
							<input type="button" class="button" value="저장" onclick="save_go(this.form)" />
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<input type="reset" class="button" value="취소" />
							
						</td>
					
					</tr>
				</tfoot>
			</table>
		</form>
		
	</div>
		<script src="https://code.jquery.com/jquery-3.6.0.min.js" crossorigin="anonymous"></script>
		<script src="resources/js/summernote-lite.js"></script>
    	<script src="resources/js/lang/summernote-ko-KR.js"></script>
    	<script type="text/javascript">
    	$(function(){
    		$('#content').summernote({
    			lang : 'ko-KR',
    			height : 300,
    			focus : true,
    			callbacks : {
    				onImageUpload :  function(files, editor){
    					for (var i = 0; i < files.length; i++) {
							sendImage(files[i], editor);
						}
    				}
    			}
			});
    		$("#content").summernote("lineHeight",.7);
    	});
    	function sendImage(file, editor) {
			var frm = new FormData();
			frm.append("s_file",file);
			$.ajax({
				url : "/saveImg.do",
				data : frm,
				type : "post",
				contentType : false,
				processData : false,
				dataType : "json",
			}).done(function(data) {
				var path = data.path;
				var fname = data.fname;
				$("#content").summernote("editor.insertImage",path+"/"+fname);
			});
		}
    	
    	document.addEventListener("DOMContentLoaded", function() {
    	  var fdTypeSelect = document.getElementById("fd_type");
    	  var fdAgeGroupSelect = document.getElementById("fd_age_group");

    	  
    	  fdAgeGroupSelect.disabled = true;

    	  
    	  fdTypeSelect.addEventListener("change", function() {
    	    
    	    var selectedValue = fdTypeSelect.value;

    	    
    	    if (selectedValue === "사료" ) {
    	      fdAgeGroupSelect.disabled = false;
    	    } else {
    	      
    	      fdAgeGroupSelect.disabled = true;
    	      fdAgeGroupSelect.value = "";
    	    }
    	  });
    	});
    
    	
    	</script>
	
<footer>
		<jsp:include page="/WEB-INF/views/home/home_bottom.jsp" />
	</footer>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" ></script>
</body>
</html>