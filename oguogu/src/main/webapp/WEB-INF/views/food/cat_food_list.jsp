<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

#dog-food-form a{text-decoration: none;}
#dog-food-form{font-family: 'Noto Sans KR', sans-serif;width: 1920px;margin: auto;margin-top:20px;}
#dog-food-form ul li{list-style-type: none;}

#minibanner img {width: 1920px;height: 200px;}

#product-type ul {display: flex;justify-content: center;margin: 50px;margin-bottom:30px;}

#product-type ul li{margin:15px;
					display: flex;justify-content: center;}

#product-type button {font-size: 40px;font-family: 'Bagel Fat One', cursive;width:90px;
					color:#FFC700;border-radius: 10px;border:none;}


#dog-food-type ul{list-style:none;display:flex;padding:0;justify-content: center;margin-bottom:60px;}

#dog-food-type ul li{display:inline;margin:20px;padding:10px;border:none;font-size: 25px;}

.prod {margin:auto; border: 1px solid black; border-radius: 5px; height: 450px;width: 350px;
		padding: 5px;margin-bootom: 10px;}
		
.prod-price {font-weight:bold; font-size:25px;}

.prod-img img {height: 300px;width: 350px;border-radius: 10px;margin-bottom:10px;}

.prod-info div{margin:10px;}

.prod-title{display: -webkit-box;-webkit-line-clamp: 2;-webkit-box-orient: vertical;overflow: hidden;
  text-overflow: ellipsis;font-size:20px;}

#prod-list{display:grid;grid-template-columns: repeat(4, 1fr);gap: 30px;list-style: none;}
#prod-list li{margin-bottom:30px;}
#prod-list li:hover{cursor:pointer;transform: scale(1.05);transition: transform 0.3s ease-in-out;
}
#food,#desert,#supplies{cursor:pointer;}

#sort{display:flex; justify-content: flex-end; font-size:25px; margin-bottom:50px; margin-right:40px;}
#sort input[type="radio"]{width:25px; height:25px; margin:10px;}

/* HOME>필수/양육/훈련 정보/#강아지,#고양이 */
#link-step{margin-left:100px; margin-top:40px;}
#link-step a{
	text-decoration: none;
	font-size: 30px;
	color:#868688;
}
/* 꺾새 */
#link-step label{
	font-size:30px;
}

.coupang-buy button{
	background-color:#F8CE38;
	border:none;
	border-radius:10px;
	margin-left:25px;
	font-size: 15px;
}

.material-symbols-outlined {
  margin-left:10px;
  margin-right:10px;
  font-variation-settings:
  'FILL' 0,
  'wght' 1000,
  'GRAD' 0,
  'opsz' 40
}

</style>

<script type="text/javascript">
	/* 좋아요 기능 구현 */
</script>

</head>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Bagel+Fat+One&family=Noto+Sans+KR&display=swap"
rel="stylesheet">
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<body>
	<header>
		<jsp:include page="../home/home_top.jsp" />
	</header>
	<div id = "dog-food-form">
	<div id=minibanner>
		<a href=""><img src="resources/images/page_banner/listbanner_food.png"></a>
	</div>
	<div id="link-step">
		<a href="">Home </a><label>></label>
		<a href="">먹거리 </a><label>></label><!--  -->
		<a href="">#고양이</a><!--  -->
	</div>
	<div id="product-type">
		<ul><!-- 자바스크립트 document.getElementsByClassName() 색 토마토로 변경 -->
			<li><button onclick="" id="food">사료</button></li>
			<li><button onclick="" id="desert">간식</button></li>
			<li><button onclick="" id="supplies">용품</button></li>
		</ul>
	</div>
	<div id="dog-food-type">
		<ul>
			<li><a href="">전연령</a></li>
			<li><a href="">퍼피키튼</a></li>
			<li><a href="">어덜트</a></li>
			<li><a href="">시니어</a></li>
		</ul>
	</div>
	<div id="sort">
		<input type="radio" name="align" value="popul" checked/>인기순
		<input type="radio" name="align" value="recent"/>최신순
		<input type="radio" name="align" value="min-price"/>낮은 가격순
		<input type="radio" name="align" value="max-price"/>높은 가격순
	</div>
	<div>
		<ul id="prod-list">
			<li>
				<div class="prod" onclick=""><!-- 상품 상세보기 onelist -->
					<div class="prod-img">
						<img src="resources/images/list_banner/minibanner_eduexplain.png">
					</div>
					<div class="prod-info">
						<div class="prod-title">명상품명상품명품명상품명상품명상품명상품명상품명상품명상품명상품명상명상품명상</div>
						<hr>
						<span class="material-symbols-outlined" onclick="">favorite</span>
						<span class="prod-price">50,000 원</span>
						<span class="coupang-buy"><button>쿠팡 구매하러가기</button></span>
					</div>
				</div>
			</li>
			<li>
				<div class="prod" onclick=""><!-- 상품 상세보기 onelist -->
					<div class="prod-img">
						<img src="resources/images/list_banner/minibanner_eduexplain.png">
					</div>
					<div class="prod-info">
						<div class="prod-title">명상품명상품명품명상품명상품명상품명상품명상품명상품명상품명상품명상명상품명상</div>
						<hr>
						<span class="material-symbols-outlined" onclick="">favorite</span>
						<span class="prod-price">50,000 원</span>
						<span class="coupang-buy"><button>쿠팡 구매하러가기</button></span>
						
					</div>
				</div>
			</li>
			<li>
				<div class="prod" onclick=""><!-- 상품 상세보기 onelist -->
					<div class="prod-img">
						<img src="resources/images/list_banner/minibanner_eduexplain.png">
					</div>
					<div class="prod-info">
						<div class="prod-title">명상품명상품명품명상품명상품명상품명상품명상품명상품명상품명상품명상명상품명상</div>
						<hr>
						<span class="material-symbols-outlined" onclick="">favorite</span>
						<span class="prod-price">50,000 원</span>
						<span class="coupang-buy"><button>쿠팡 구매하러가기</button></span>
					</div>
				</div>
			</li>
			<li>
				<div class="prod" onclick=""><!-- 상품 상세보기 onelist -->
					<div class="prod-img">
						<img src="resources/images/list_banner/minibanner_eduexplain.png">
					</div>
					<div class="prod-info">
						<div class="prod-title">명상품명상품명품명상품명상품명상품명상품명상품명상품명상품명상품명상명상품명상</div>
						<hr>
						<span class="material-symbols-outlined" onclick="">favorite</span>
						<span class="prod-price">50,000 원</span>
						<span class="coupang-buy"><button>쿠팡 구매하러가기</button></span>
					</div>
				</div>
			</li>
			<li>
				<div class="prod" onclick=""><!-- 상품 상세보기 onelist -->
					<div class="prod-img">
						<img src="resources/images/list_banner/minibanner_eduexplain.png">
					</div>
					<div class="prod-info">
						<div class="prod-title">명상품명상품명품명상품명상품명상품명상품명상품명상품명상품명상품명상명상품명상</div>
						<hr>
						<span class="material-symbols-outlined" onclick="">favorite</span>
						<span class="prod-price">50,000 원</span>
						<span class="coupang-buy"><button>쿠팡 구매하러가기</button></span>
					</div>
				</div>
			</li>
			<li>
				<div class="prod" onclick=""><!-- 상품 상세보기 onelist -->
					<div class="prod-img">
						<img src="resources/images/list_banner/minibanner_eduexplain.png">
					</div>
					<div class="prod-info">
						<div class="prod-title">명상품명상품명품명상품명상품명상품명상품명상품명상품명상품명상품명상명상품명상</div>
						<hr>
						<span class="material-symbols-outlined" onclick="">favorite</span>
						<span class="prod-price">50,000 원</span>
						<span class="coupang-buy"><button>쿠팡 구매하러가기</button></span>
					</div>
				</div>
			</li>
			<li>
				<div class="prod" onclick=""><!-- 상품 상세보기 onelist -->
					<div class="prod-img">
						<img src="resources/images/list_banner/minibanner_eduexplain.png">
					</div>
					<div class="prod-info">
						<div class="prod-title">명상품명상품명품명상품명상품명상품명상품명상품명상품명상품명상품명상명상품명상</div>
						<hr>
						<span class="material-symbols-outlined" onclick="">favorite</span>
						<span class="prod-price">50,000 원</span>
						<span class="coupang-buy"><button>쿠팡 구매하러가기</button></span>
					</div>
				</div>
			</li>
			<li>
				<div class="prod" onclick=""><!-- 상품 상세보기 onelist -->
					<div class="prod-img">
						<img src="resources/images/list_banner/minibanner_eduexplain.png">
					</div>
					<div class="prod-info">
						<div class="prod-title">명상품명상품명품명상품명상품명상품명상품명상품명상품명상품명상품명상명상품명상</div>
						<hr>
						<span class="material-symbols-outlined" onclick="">favorite</span>
						<span class="prod-price">50,000 원</span>
						<span class="coupang-buy"><button>쿠팡 구매하러가기</button></span>
					</div>
				</div>
			</li>
			<li>
				<div class="prod" onclick=""><!-- 상품 상세보기 onelist -->
					<div class="prod-img">
						<img src="resources/images/list_banner/minibanner_eduexplain.png">
					</div>
					<div class="prod-info">
						<div class="prod-title">명상품명상품명품명상품명상품명상품명상품명상품명상품명상품명상품명상명상품명상</div>
						<hr>
						<span class="material-symbols-outlined" onclick="">favorite</span>
						<span class="prod-price">50,000 원</span>
						<span class="coupang-buy"><button>쿠팡 구매하러가기</button></span>
					</div>
				</div>
			</li>
			<li>
				<div class="prod" onclick=""><!-- 상품 상세보기 onelist -->
					<div class="prod-img">
						<img src="resources/images/list_banner/minibanner_eduexplain.png">
					</div>
					<div class="prod-info">
						<div class="prod-title">명상품명상품명품명상품명상품명상품명상품명상품명상품명상품명상품명상명상품명상</div>
						<hr>
						<span class="material-symbols-outlined" onclick="">favorite</span>
						<span class="prod-price">50,000 원</span>
						<span class="coupang-buy"><button>쿠팡 구매하러가기</button></span>
					</div>
				</div>
			</li>
			<li>
				<div class="prod" onclick=""><!-- 상품 상세보기 onelist -->
					<div class="prod-img">
						<img src="resources/images/list_banner/minibanner_eduexplain.png">
					</div>
					<div class="prod-info">
						<div class="prod-title">명상품명상품명품명상품명상품명상품명상품명상품명상품명상품명상품명상명상품명상</div>
						<hr>
						<span class="material-symbols-outlined" onclick="">favorite</span>
						<span class="prod-price">50,000 원</span>
						<span class="coupang-buy"><button>쿠팡 구매하러가기</button></span>
					</div>
				</div>
			</li>
			
		</ul>
	</div>
	</div>
</body>
</html>


<!-- 	<div>
		<ul id="cat_desert">
			<li><a href="">파우치</a></li>
			<li><a href="">캔</a></li>
			<li><a href="">수제간식</a></li>
		</ul>
	</div>
	<div>
		<ul id="cat_supplies">
			<li><a href="">이동장/외출용품</a></li>
			<li><a href="">하우스/방석</a></li>
			<li><a href="">모래/화장실</a></li>
			<li><a href="">캣타워/스크래쳐</a></li>
		</ul>
	</div> -->