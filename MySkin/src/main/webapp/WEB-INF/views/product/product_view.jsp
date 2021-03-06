<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 
<c:set var='cpath' value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="ko">
<head>
<title>화분::상품페이지</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="${cpath}/resources/styles/bootstrap4/bootstrap.min.css">
<link href="${cpath}/resources/plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="${cpath}/resources/plugins/OwlCarousel2-2.2.1/owl.carousel.css">
<link rel="stylesheet" type="text/css" href="${cpath}/resources/plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
<link rel="stylesheet" type="text/css" href="${cpath}/resources/plugins/OwlCarousel2-2.2.1/animate.css">
<link rel="stylesheet" href="${cpath}/resources/plugins/themify-icons/themify-icons.css">
<link rel="stylesheet" type="text/css" href="${cpath}/resources/plugins/jquery-ui-1.12.1.custom/jquery-ui.css">
<link rel="stylesheet" type="text/css" href="${cpath}/resources/styles/single_styles.css">
<link rel="stylesheet" type="text/css" href="${cpath}/resources/styles/single_responsive.css">

<!-- 하단 고정바 스타일 -->
<style>
.product-actions {
    position: fixed;
    z-index: 630;
    left: 0;
    right: 0;
    bottom: 0;
    background: white;
    border-top: 1px solid #FE7C7F;
}
.star-rating {
  display:flex;
  flex-direction: row-reverse;
  font-size:1.5em;
  justify-content:space-around;
  padding:0 .2em;
  text-align:center;
  width:5em;
}

.star-rating input {
  display:none;
}

.star-rating label {
  color:#ccc;
  cursor:pointer;
}

.star-rating :checked ~ label {
  color:#f90;
}

.star-rating label:hover,
.star-rating label:hover ~ label {
  color:#fc0;
}
</style>

<script>
<!-- 장바구니 추가 후 문구 -->
function add_cart(){
	if (confirm("상품을 장바구니에 담았슴니다.\n장바구니로 가시겠습니까?") == true){    //확인
		window.location.href="${cpath}/product/cart";
	}
	else{   //취소

    return;
	}
}
function buy(index){
	location.href="${cpath}/product/buy?prod_id="+index;
}
</script>
</head>

<body>
<div class="super_container" style="font-family:AC;">
	<!-- 헤더 -->
	<header class="header trans_300">
		<!-- 상단부 메뉴 -->
		<div class="main_nav_container">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 text-left" style="padding-left:32px;">
						<!-- 로고 -->
						<div class="logo_container">
							<a href="${cpath}"><img src="../resources/logo/image02.png" width="150" height="60" ></a>
						</div>
						<!-- 상단 아이콘(장바구니, 마이페이지 모양) -->
						<nav class="navbar">
							<ul class="navbar_menu">
								<li><a href="${cpath}">home</a></li>
							</ul>
							<ul class="navbar_user" style="margin-bottom: 0px;">
								<li><a href="#"><i class="fa fa-search" aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fa fa-user" aria-hidden="true"></i></a></li>
								<li class="checkout">
									<a href="#">
										<i class="fa fa-shopping-cart" aria-hidden="true"></i>
										<span id="checkout_items" class="checkout_items">2</span>
									</a>
								</li>
							</ul>
							<div class="hamburger_container">
								<i class="fa fa-bars" aria-hidden="true"></i>
							</div>
						</nav>
					</div>
				</div>
			</div>
		</div>
	</header>

	<!-- 우측 메뉴 -->
	<div class="hamburger_menu">
		<div class="hamburger_close"><i class="fa fa-times" aria-hidden="true"></i></div>
		<div class="hamburger_menu_content" style="padding-left:32px">
			<ul class="menu_top_nav">
				<li class="menu_item has-children">
					<a>
						<strong>내 계정</strong>
						<i class="fa fa-angle-down"></i>
					</a>
					<ul class="menu_selection" style="padding-left:10px">
						<c:if test="${sessionScope.members.mb_id == null}">
							<li><a href="${cpath}/member/login"><i class="fa fa-sign-in" aria-hidden="true"></i>&nbsp;로그인</a></li>
							<li><a href="${cpath}/member/register"><i class="fa fa-user-plus" aria-hidden="true"></i>&nbsp;회원가입</a></li>
						</c:if>
						<c:if test="${sessionScope.members.mb_id != null}">
							<li><a href="${cpath}/member/logout"><i class="fa fa-sign-out" aria-hidden="true"></i>&nbsp;로그아웃</a></li>
							<li><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>&nbsp;구매한 상품</a></li>
						</c:if>
					</ul>
				</li>
				<li class="menu_item has-children">
					<a>
						<strong>피부타입 알기</strong>
						<i class="fa fa-angle-down"></i>
					</a>
					<ul class="menu_selection" style="padding-left:10px">
						<c:if test="${sessionScope.members.mb_id == null}">
							<li><a onclick="ck_log();"><i class="fa fa-file-text-o" aria-hidden="true"></i>&nbsp;자가설문 기반</a></li>
							<li><a onclick="ck_log();"><i class="fa fa-picture-o" aria-hidden="true"></i>&nbsp;이미지 기반</a></li>
						</c:if>
						<c:if test="${sessionScope.members.mb_id != null}">
							<li class="menu_item">
								<a href="${cpath}/survey/choice_survey"><i class="fa fa-file-text-o" aria-hidden="true"></i>&nbsp;자가설문 검사</a>
							</li>
							<li class="menu_item">
								<a href="${cpath}/survey/img_analysis"><i class="fa fa-picture-o" aria-hidden="true"></i>&nbsp;이미지기반 검사</a>
							</li>
						</c:if>
					</ul>
				</li>
				<li class="menu_item"><a href="${cpath}/board/board_list"><strong>피부게시판</strong></a></li>
				<li class="menu_item has-children">
					<a>
						<strong>상품 카테고리</strong>
						<i class="fa fa-angle-down"></i>
					</a>
					<ul class="menu_selection" style="padding-left:10px">
						<li><a href="${cpath}/product/product_list"><i class="fa fa-th-list" aria-hidden="true"></i>&nbsp;전체상품</a></li>
						<li><a href="${cpath}/product/product_list?orders=스킨케어"><i class="fa fa-smile-o" aria-hidden="true"></i>&nbsp;스킨케어</a></li>
						<li><a href="${cpath}/product/product_list?orders=마스크팩"><i class="fa fa-leaf" aria-hidden="true"></i>&nbsp;마스크팩</a></li>
						<li><a href="${cpath}/product/product_list?orders=선케어"><i class="fa fa-sun-o" aria-hidden="true"></i>&nbsp;선케어</a></li>
						<li><a href="${cpath}/product/product_list?orders=클렌징"><i class="fa fa-shower" aria-hidden="true"></i>&nbsp;클렌징</a></li>
					</ul>
				</li>
			</ul>
		</div>
	</div>
	<div class="container single_product_container" style="padding-bottom: 40px;">
		<div class="row">
			<div class="col">
				<!-- Breadcrumbs -->
				<div class="breadcrumbs d-flex flex-row align-items-center" style="margin-bottom: 25px;">
					<ul>
						<li><a href="${cpath}">Home</a></li>
						<li><a href="${cpath}/product_list"><i class="fa fa-angle-right" aria-hidden="true"></i>기초화장품</a></li>
						<li class="active"><a href="#"><i class="fa fa-angle-right" aria-hidden="true"></i>상품상세</a></li>
					</ul>
				</div>
			</div>
		</div><br>
		<div class="row">
			<div class="col-lg-7">
				<div class="single_product_pics">
					<div class="row">
						<div class="col-lg-3 thumbnails_col order-lg-1 order-2">
							<div class="single_product_thumbnails">
								<ul style="height: 75px;">
									<li class="active"><img src="${cpath}/resources/images/pro_img/${product.prod_id}.jpg" alt="" data-image="${cpath}/resources/images/pro_img/${product.prod_id}.jpg"></li>
									<li><img src="${cpath}/resources/images/pro_img/${product.prod_id}_2.jpg" alt="" data-image="${cpath}/resources/images/pro_img/${product.prod_id}_2.jpg"></li>
									<li><img src="${cpath}/resources/images/pro_img/${product.prod_id}_3.jpg" alt="" data-image="${cpath}/resources/images/pro_img/${product.prod_id}_3.jpg"></li>
								</ul>
							</div>
						</div>
						<div class="col-lg-9 image_col order-lg-2 order-1">
							<div class="single_product_image">
								<div class="single_product_image_background" style="background-image:url(../resources/images/pro_img/${product.prod_id}.jpg);"></div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-5">
				<div class="product_details" style="margin-top: 20px;">
					<div class="product_details_title">
						<h2>${product.prod_name}</h2>
						<p>${product.prod_maker}</p>
					</div>
					<div class="free_delivery d-flex flex-row align-items-center justify-content-center" style="margin-top: 20px;">
						<span class="ti-truck"></span><span>무료배송 - 오늘 출발</span>
					</div>
					<div class="original_price">${product.getFormat_price()} 원</div>
					<div class="product_price">${product.getFormat_price()} 원</div>
					<ul class="star_rating">
						<li><i class="fa fa-star" aria-hidden="true"></i></li>
						<li><i class="fa fa-star" aria-hidden="true"></i></li>
						<li><i class="fa fa-star" aria-hidden="true"></i></li>
						<li><i class="fa fa-star" aria-hidden="true"></i></li>
						<li><i class="fa fa-star-o" aria-hidden="true"></i></li>
					</ul>
					<div class="d-flex justify-content-start" style="height:50px;">
						<div style="text-align:center; margin-top:25px; margin-right:10px;">구매 수량:</div>
						<div class="quantity_selector">
							<span class="minus"><i class="fa fa-minus" aria-hidden="true"></i></span>
							<span id="quantity_value">1</span>
							<span class="plus"><i class="fa fa-plus" aria-hidden="true"></i></span>
						</div>
						<div class="product_favorite d-flex flex-column align-items-center justify-content-center"></div>
					</div>
					<div class="product-actions d-flex justify-content-around">
						<div class="y_button add_to_cart_button" style="width:44%; margin-bottom:15px;"><a onclick="add_cart();"><strong>장바구니</strong></a></div>
						<div class="red_button add_to_cart_button" style="width:44%; margin-bottom:15px;"><a onclick="buy(${product.prod_id});"><strong>구매하기</strong></a></div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 성분 프로그래스바 -->
	<div class="breadcrumbs" style="margin-bottom:10px; height:30%; padding:5%;">
		<table style="margin-left:auto; margin-right:auto; border-collapse:separate; border-spacing:0 10px;">
			<tr>
				<td rowspan="2" style="width:100px">
					<div>지성피부</div>
				</td>
				<!-- 위쪽 프로그래스바 -->
				<td style="width:75%">
					<div class="progress">
						<div class="progress-bar bg-success" role="progressbar" style="width:${ingreG.o * 7 + 20}%">Good ${ingreG.o}</div>
					</div>
				</td>
			</tr>
			<tr>
				<!-- 아래쪽 프로그래스바 -->
				<td style="width:75%">
					<div class="progress">
						<div class="progress-bar bg-danger" role="progressbar" style="width:${ingreB.o * 7 + 20}%">bad ${ingreB.o}</div>
					</div>
				</td>
			</tr>
		</table>
		<table style="margin-left:auto; margin-right:auto; border-collapse:separate; border-spacing:0 10px;">
			<tr>
				<td rowspan="2" style="width:100px">
					<div>건성피부</div>
				</td>
				<!-- 위쪽 프로그래스바 -->
				<td style="width:75%">
					<div class="progress">
						<div class="progress-bar bg-success" role="progressbar" style="width:${ingreG.d * 7 + 20}%">Good ${ingreG.d}</div>
					</div>
				</td>
			</tr>
			<tr>
				<!-- 아래쪽 프로그래스바 -->
				<td style="width:75%">
					<div class="progress">
						<div class="progress-bar bg-danger" role="progressbar" style="width:${ingreB.d * 7 + 20}%">bad ${ingreB.d}</div>
					</div>
				</td>
			</tr>
		</table>
		<table style="margin-left:auto; margin-right:auto; border-collapse:separate; border-spacing:0 10px;">
			<tr>
				<td rowspan="2" style="width:100px">
					<div>민감성피부</div>
				</td>
				<!-- 위쪽 프로그래스바 -->
				<td style="width:75%">
					<div class="progress">
						<div class="progress-bar bg-success" role="progressbar" style="width:${ingreG.s * 7 + 20}%">Good ${ingreG.s}</div>
					</div>
				</td>
			</tr>
			<tr>
				<!-- 아래쪽 프로그래스바 -->
				<td style="width:75%">
					<div class="progress">
						<div class="progress-bar bg-danger" role="progressbar" style="width:${ingreB.s * 7 + 20}%">bad ${ingreB.s}</div>
					</div>
				</td>
			</tr>
		</table>
	</div>
	
	

	<!-- Tabs -->
	<div class="tabs_section_container" style="padding-bottom: 5px;">
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="tabs_container" style="margin-bottom: 40px; margin-top: 20px;">
						<ul class="tabs d-flex justify-content-center">
							<li class="tab active" data-active-tab="tab_1"><span>상품 상세정보</span></li>
							<li class="tab" data-active-tab="tab_2"><span>성분정보</span></li>
							<li class="tab" data-active-tab="tab_3"><span>상품리뷰 (${fn:length(review)})</span></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col">

					<!-- Tab Description -->
					<div id="tab_1" class="tab_container active">
						<div class="row">
							<div class="col-lg-5 desc_col">
								<div class="tab_title" style="text-align:center; margin-bottom: 30px;">
									<h4>상품 상세정보</h4>
								</div>
								<div class="tab_image" style="margin-bottom: 3px;">
									<img src="${cpath}/resources/images/pro_img_info/${product.prod_id}_1.jpg" alt="">
								</div>
								<div class="tab_image" style="margin-bottom: 3px;">
									<img src="${cpath}/resources/images/pro_img_info/${product.prod_id}_2.jpg" alt="">
								</div>
								<div class="tab_image" style="margin-bottom: 3px;">
									<img src="${cpath}/resources/images/pro_img_info/${product.prod_id}_3.jpg" alt="">
								</div>
								<div class="tab_image" style="margin-bottom: 3px;">
									<img src="${cpath}/resources/images/pro_img_info/${product.prod_id}_4.jpg" alt="">
								</div>
								<div class="tab_image" style="margin-bottom: 3px;">
									<img src="${cpath}/resources/images/pro_img_info/${product.prod_id}_4.jpg" alt="">
								</div>
								<div class="tab_image" style="margin-bottom: 3px;">
									<img src="${cpath}/resources/images/pro_img_info/${product.prod_id}_5.jpg" alt="">
								</div>
								<div class="tab_image" style="margin-bottom: 3px;">
									<img src="${cpath}/resources/images/pro_img_info/${product.prod_id}_6.jpg" alt="">
								</div>
								<div class="tab_image" style="margin-bottom: 3px;">
									<img src="${cpath}/resources/images/pro_img_info/${product.prod_id}_7.jpg" alt="">
								</div>
								<div class="tab_image" style="margin-bottom: 3px;">
									<img src="${cpath}/resources/images/pro_img_info/${product.prod_id}_8.jpg" alt="">
								</div>
								<div class="tab_image" style="margin-bottom: 3px;">
									<img src="${cpath}/resources/images/pro_img_info/${product.prod_id}_9.jpg" alt="">
								</div>
								<div class="tab_image" style="margin-bottom: 3px;">
									<img src="${cpath}/resources/images/pro_img_info/${product.prod_id}_10.jpg" alt="">
								</div>
								<div class="tab_image" style="margin-bottom: 3px;">
									<img src="${cpath}/resources/images/pro_img_info/${product.prod_id}_11.jpg" alt="">
								</div>
								<div class="tab_image" style="margin-bottom: 3px;">
									<img src="${cpath}/resources/images/pro_img_info/${product.prod_id}_12.jpg" alt="">
								</div>
								<div class="tab_image" style="margin-bottom: 3px;">
									<img src="${cpath}/resources/images/pro_img_info/${product.prod_id}_13.jpg" alt="">
								</div>
								<div class="tab_image" style="margin-bottom: 3px;">
									<img src="${cpath}/resources/images/pro_img_info/${product.prod_id}_14.jpg" alt="">
								</div>
								<div class="tab_image" style="margin-bottom: 3px;">
									<img src="${cpath}/resources/images/pro_img_info/${product.prod_id}_15.jpg" alt="">
								</div>
							</div>
						</div>
					</div>

					<!-- Tab Additional Info -->

					<div id="tab_2" class="tab_container">
						<div class="row">
							<div class="col additional_info_col">
								<div class="tab_title additional_info_title" style="text-align:center; margin-bottom: 30px;">
									<h4>성분정보</h4>
								</div>
								<div class="tab_text_block">
									<h2>제품 성분</h2>
									<p>
										<c:forEach items="${ingre}" var="ingre">
											${ingre.ingred_kor_name} 
										</c:forEach>
									</p>
								</div>
								<div class="tab_text_block">
									<h2>제품 용량</h2>
									<p>200ml</p>
								</div>
							</div>
						</div>
					</div>

					<!-- Tab Reviews -->

					<div id="tab_3" class="tab_container">
						<div class="row">

							<!-- User Reviews -->
							<div class="col-lg-6 reviews_col" style="padding:0 25px;">
								<div class="tab_title reviews_title" style="text-align:center; margin-bottom:30px;">
									<h4>상품리뷰 (${fn:length(review)})</h4>
								</div>
								<!-- User Review -->
								<c:forEach items="${review}" var="review" varStatus="status">
								<div class="row review">
									<div class="user_name" style="margin-bottom: 0px; margin:0 12px;"">${review.mb_id}</div>
									<div class="review_date" style="margin-top: 0px;">
										${reviewST[status.index]}
									</div>
								</div>
								<div class="user_review_container d-flex flex-column flex-sm-row" style="border-bottom:1px solid #bbbbbb; margin-bottom: 10px;">
									<div class="user">
										<div class="user_rating">
											<ul class="star_rating" style="margin-top: 0px;">
											<c:forEach var="i" begin="1" end="5" step="1">
												<c:choose>
												<c:when test="${i <= review.review_rating}">
													<li><i class="fa fa-star" aria-hidden="true"></i></li>
												</c:when>
												<c:otherwise>
													<li><i class="fa fa-star-o" aria-hidden="true"></i></li>
												</c:otherwise>
												</c:choose>
											</c:forEach>
											</ul>
										</div>
									</div>
									<pre style="margin-bottom:10px; font-family: 'S-D'; line-height: 1.7; font-weight: 500; color: #989898; -webkit-font-smoothing: antialiased; text-shadow: rgb(0 0 0 / 1%) 0 0 1px;  white-space: pre-wrap;">${review.review_content}</pre>
								</div>
								</c:forEach>
							</div>

							<!-- Add Review -->
							<c:if test="${sessionScope.members.mb_id != null}">
							<div class="col-lg-6 add_review_col">
								<div class="add_review">
									<form action="write_review" method="post">
										<div>
											<h1>리뷰 작성</h1>
										</div>
										<div class="row" style="margin:0 0;">
											<div><strong>평점:</strong></div>
											<div class="user_star_rating">
												<!-- 별점부분 추가 -->
												<div class="star-rating">
												<!-- <input type="radio" id="5-stars" name="rating" value="5" onclick='getRating(event)' /> -->
												  <input type="radio" id="5-stars" name="review_rating" value="5" />
												  <label for="5-stars" class="star">&#9733;</label>
												  <input type="radio" id="4-stars" name="review_rating" value="4" />
												  <label for="4-stars" class="star">&#9733;</label>
												  <input type="radio" id="3-stars" name="review_rating" value="3" />
												  <label for="3-stars" class="star">&#9733;</label>
												  <input type="radio" id="2-stars" name="review_rating" value="2" />
												  <label for="2-stars" class="star">&#9733;</label>
												  <input type="radio" id="1-star" name="review_rating" value="1" />
												  <label for="1-star" class="star">&#9733;</label>
												</div>
												<!--  <script>
												function getRating(event) {
												  document.getElementById('result').innerText = 
													event.target.value;
												}
												</script>
												-->
											</div>
											<textarea id="review_message" class="input_review" name="review_content"  placeholder="리뷰를 작성해주세요." rows="4" style="padding:0px; margin:0 0 10px 0" required data-error="Please, leave us a review."></textarea>
										</div>
										<div class="text-left text-sm-right" style="float:right">
											<button id="review_submit" type="submit" class="red_button review_submit_btn trans_300" value="Submit"><strong>작성</strong></button>
										</div>
										<input type="hidden" name="prod_id" value="${prod_id}" />
										<input type="hidden" name="mb_id" value="${members.mb_id}" />
									</form>
								</div>
							</div>
							</c:if>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 아래쪽 탭 -->
	<div class="row">
		<div class="col">
			<div class="tabs_container" style="margin-bottom: 40px; margin-top: 20px;">
				<ul class="tabs d-flex justify-content-center">
					<li class="tab active" data-active-tab="tab_1"><span>상품 상세정보</span></li>
					<li class="tab" data-active-tab="tab_2"><span>성분정보</span></li>
					<li class="tab" data-active-tab="tab_3"><span>상품리뷰 (${fn:length(review)})</span></li>
				</ul>
			</div>
		</div>
	</div>
	
	<!-- 아래쪽	-->
	<div class="benefit">
		<div class="container">
			<div class="row benefit_row">
				<div class="col-lg-3 benefit_col">
					<div class="benefit_item d-flex flex-row align-items-center">
						<div class="benefit_icon"><i class="fa fa-money" aria-hidden="true"></i></div>
						<div class="benefit_content">
							<h5><strong>무료배송</strong></h5>
							<p><strong>전국 어디서든</strong> 무료배송 혜택을 누리세요.</p>
						</div>
					</div>
				</div>
				<div class="col-lg-3 benefit_col">
					<div class="benefit_item d-flex flex-row align-items-center">
						<div class="benefit_icon"><i class="fa fa-truck" aria-hidden="true"></i></div>
						<div class="benefit_content">
							<h5><strong>당일출고</strong></h5>
							<p>오후 4시 이전의 결제건은 <strong>당일출고</strong> 됩니다.</p>
						</div>
					</div>
				</div>
				<div class="col-lg-3 benefit_col">
					<div class="benefit_item d-flex flex-row align-items-center">
						<div class="benefit_icon"><i class="fa fa-clock-o" aria-hidden="true"></i></div>
						<div class="benefit_content">
							<h5><strong>고객센터</strong></h5>
							<p> 상담시간 - 09:00 ~ 17:00 </p>
							<p> 전화번호 - 010-7495-1996 </p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Newsletter -->

	<div class="newsletter">
		<div class="container">
			<div class="row">
				<div class="col-lg-6">
					<div class="newsletter_text d-flex flex-column justify-content-center align-items-lg-start align-items-md-center text-center">
						<h4>SNS 공유하기</h4>
						<p>화분이 저렴한 가격을 유지할 수 있도록 홍보해주세요!</p>
						<p></p>
						<p></p>
						<p></p>
						<p></p>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Footer -->
	<footer class="footer">
		<div class="container">
			<div class="row">
				<div class="col-lg-6">
					<div class="footer_nav_container d-flex flex-sm-row flex-column align-items-center justify-content-lg-start justify-content-center text-center">
						<ul class="footer_nav" style="margin-bottom:0px;">
							<li><a href="https://m.blog.naver.com/Recommendation.naver">블로그 홍보</a></li>
							<li><a href="#">자주하는 질문</a></li>
						</ul>
					</div>
				</div>
				<div class="col-lg-6">
					<div class="footer_social d-flex flex-row align-items-center justify-content-lg-end justify-content-center">
						<ul>
							<li><a href="https://www.facebook.com/"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
							<li><a href="https://twitter.com/"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
							<li><a href="https://www.instagram.com/"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12">
					<div class="footer_nav_container" style="margin-top: 10px;">
						<div class="cr" style="font-size:10px; text-align:center; margin-right:0px;">본사에 등록된 모든 광고와 저작권 및 법적책임은 자료제공사(또는 글쓴이)에게 있으므로 본사는 광고에 대한 책임을 지지 않습니다.</div>
						<div class="cr text-center" style="margin-right:0px;">Copyright 2021. 태양광발전소 all rights reserved.</div>
					</div>
				</div>
			</div>
		</div>
	</footer>
</div>
<div><br><br><br></div>

<script src="${cpath}/resources/js/jquery-3.2.1.min.js"></script>
<script src="${cpath}/resources/styles/bootstrap4/popper.js"></script>
<script src="${cpath}/resources/styles/bootstrap4/bootstrap.min.js"></script>
<script src="${cpath}/resources/plugins/Isotope/isotope.pkgd.min.js"></script>
<script src="${cpath}/resources/plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
<script src="${cpath}/resources/plugins/easing/easing.js"></script>
<script src="${cpath}/resources/plugins/jquery-ui-1.12.1.custom/jquery-ui.js"></script>
<script src="${cpath}/resources/js/single_custom.js"></script>
</body>
</html>