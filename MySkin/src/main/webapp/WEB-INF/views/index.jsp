<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="kr.smhrd.domain.*"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var='cpath' value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>맞춤화장품 태양샵</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="Colo Shop Template">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="../../resources/styles/bootstrap4/bootstrap.min.css">
<link href="../../resources/plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="../../resources/plugins/OwlCarousel2-2.2.1/owl.carousel.css">
<link rel="stylesheet" type="text/css" href="../../resources/plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
<link rel="stylesheet" type="text/css" href="../../resources/plugins/OwlCarousel2-2.2.1/animate.css">
<link rel="stylesheet" type="text/css" href="../../resources/styles/main_styles.css">
<link rel="stylesheet" type="text/css" href="../../resources/styles/responsive.css">

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<style>
@font-face {
    font-family: 'SF_HambakSnow';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2106@1.1/SF_HambakSnow.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}
</style>
</head>

<body>

<div class="super_container">
	<!-- Header -->
	<header class="header trans_300">
		<!-- Main Navigation -->
		<div class="main_nav_container">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 text-right">
						<div class="logo_container">
							<a href="/"><img src="../resources/logo/image02.png" width="150" height="60" ></a>
						</div>
						<nav class="navbar">
							<ul class="navbar_menu">
								<li><a href="/">home</a></li>
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

	<!-- Hamburger Menu -->
	<div class="hamburger_menu">
		<div class="hamburger_close"><i class="fa fa-times" aria-hidden="true"></i></div>
		<div class="hamburger_menu_content text-right">
			<ul class="menu_top_nav">
				<li class="menu_item has-children">
					<a href="#">
						내 계정
						<i class="fa fa-angle-down"></i>
					</a>
					<ul class="menu_selection">
						<li><a href="/member/login"><i class="fa fa-sign-in" aria-hidden="true"></i>로그인</a></li>
						<li><a href="/member/register"><i class="fa fa-user-plus" aria-hidden="true"></i>회원가입</a></li>
						<li><a href="/member/logout"><i class="fa fa-sign-in" aria-hidden="true"></i>로그아웃</a></li>
						<li><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>구매한 상품</a></li>
					</ul>
				</li>
				<li class="menu_item"><a href="survey/survey">피부타입 재검사</a></li>
				<li class="menu_item"><a href="board/board_list">피부게시판</a></li>
				<li class="menu_item"><a href="product/product_list">상품목록</a></li>
			</ul>
		</div>
	</div>

	<!-- Slider -->
	<div><br></div>
	<div><br></div>
	<div><br></div>

	<div id="carouselExampleDark" class="carousel carousel-dark slide" data-bs-ride="carousel">
	  <div class="carousel-indicators">
		<button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
		<button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="1" aria-label="Slide 2"></button>
		<button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="2" aria-label="Slide 3"></button>
	  </div>
	  <div class="carousel-inner">
		<div class="carousel-item active" data-bs-interval="3000">
			<div style="background-image:url(../resources/images/winter.png); background-size:cover; height:250px; display:flex; align-items: center;">
				<div class="container fill_height">
					<div class="row align-items-center fill_height">
						<div class="col">
							<div class="main_slider_content">
								<h5 style="font-family:SF_HambakSnow"><strong>2021년 하반기 겨울보습 특가!</strong></h5>
								<h1 style="font-family:SF_HambakSnow">보습 화장품</h1>
								<h1 style="font-family:SF_HambakSnow">최대 15% 할인 이벤트!</h1>
								<div class="red_button shop_now_button"><a href="#"><strong>특가 보러가기</strong></a></div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="carousel-item" data-bs-interval="3000">
			<div style="background-image:url(../resources/images/event1.jpg); background-size:cover; height:250px; display:flex; align-items: center;">
				<div class="container fill_height">
					<div class="row align-items-center fill_height">
						<div class="col">
							<div class="main_slider_content">
								<h5 style="font-family:SF_HambakSnow"><strong>크리스마스 선물!</strong></h5>
								<h1 style="font-family:SF_HambakSnow">화장품 전 품목</h1>
								<h1 style="font-family:SF_HambakSnow">최대 49% 할인 이벤트!</h1>
								<div class="red_button shop_now_button"><a href="#"><strong>특가 보러가기</strong></a></div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="carousel-item" data-bs-interval="3000">
			<div style="background-image:url(../resources/images/event3.jpg); background-size:cover; height:250px; display:flex; align-items: center;">
				<div class="container fill_height">
					<div class="row align-items-center fill_height">
						<div class="col">
							<div class="main_slider_content">
								<h5 style="font-family:SF_HambakSnow"><strong>블로그 홍보 이벤트</strong></h5>
								<h1 style="font-family:SF_HambakSnow">블로그에 화분을 홍보해주세요</h1>
								<h1 style="font-family:SF_HambakSnow">할인쿠폰을 드립니다.</h1>
								<div class="red_button shop_now_button"><a href="#"><strong>이벤트 보기</strong></a></div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	  </div>

	<!-- Best Sellers -->

	<div class="best_sellers">
		<div class="container">
			<div class="row">
				<div class="col text-center">
					<div class="section_title new_arrivals_title">
						<h2>신상품</h2>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col">
					<div class="product_slider_container">
						<div class="owl-carousel owl-theme product_slider">

							<!-- Slide  -->
							<c:forEach items="${list}" var="product">
							<div class="owl-item product_slider_item">
								<div class="product-item">
									<div class="product discount">
										<div class="product_image">
											<img src="resources/img/product_img/<c:out value="${product.prod_id}" />.jpg" alt="">
										</div>
										<div class="favorite favorite_left"></div>
										<div class="product_bubble product_bubble_right product_bubble_red d-flex flex-column align-items-center"><span>-$20</span></div>
										<div class="product_info">
											<h6 class="product_name">
												<a href="product/product_view?prod_id=<c:out value="${product.prod_id}" />">
													<c:out value="${product.prod_name}" />
												</a>
											</h6>
											<div class="product_price"><c:out value="${product.getFormat_price()}" /><span><c:out value="${product.getFormat_price()}" /></span></div>
										</div>
									</div>
								</div>
							</div>
							</c:forEach>
						</div>

						<!-- Slider Navigation -->

						<div class="product_slider_nav_left product_slider_nav d-flex align-items-center justify-content-center flex-column">
							<i class="fa fa-chevron-left" aria-hidden="true"></i>
						</div>
						<div class="product_slider_nav_right product_slider_nav d-flex align-items-center justify-content-center flex-column">
							<i class="fa fa-chevron-right" aria-hidden="true"></i>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


	<div class="blogs">
		<div class="container">
			<div class="row">
				<div class="col text-center">
					<div class="section_title">
						<h2><strong>피부관리 Tip</strong></h2>
					</div>
				</div>
			</div>
			<div class="row blogs_container">
				<div class="col-lg-4 blog_item_col">
					<div class="blog_item">
						<div class="blog_background" style="background-image:url(../resources/images/tip_1.jpg)"></div>
						<div class="blog_content d-flex flex-column align-items-center justify-content-center text-center">
							<h4 class="blog_title">화장품 저렴하게 사는 방법은 없을까?</h4>
							<span class="blog_meta">다나와</span>
							<a class="blog_more" href="http://plan.danawa.com/info/index.php?nPlanSeq=786">팁 보러가기</a>
						</div>
					</div>
				</div>
				<div class="col-lg-4 blog_item_col">
					<div class="blog_item">
						<div class="blog_background" style="background-image:url(../resources/images/tip_2.jpg)"></div>
						<div class="blog_content d-flex flex-column align-items-center justify-content-center text-center">
							<h4 class="blog_title">착한화장품, 어떻게 골라야 할까?</h4>
							<span class="blog_meta">다나와</span>
							<a class="blog_more" href="http://plan.danawa.com/info/index.php?nPlanSeq=786">팁 보러가기</a>
						</div>
					</div>
				</div>
				<div class="col-lg-4 blog_item_col">
					<div class="blog_item">
						<div class="blog_background" style="background-image:url(../resources/images/tip_3.jpg)"></div>
						<div class="blog_content d-flex flex-column align-items-center justify-content-center text-center">
							<h4 class="blog_title">피부트러블 실생활 관리법 확인해보자</h4>
							<span class="blog_meta">다나와</span>
							<a class="blog_more" href="http://plan.danawa.com/info/index.php?nPlanSeq=2177">팁 보러가기</a>
						</div>
					</div>
				</div>
				<div class="col-lg-4 blog_item_col">
					<div class="blog_item">
						<div class="blog_background" style="background-image:url(../resources/images/tip_4.jpg)"></div>
						<div class="blog_content d-flex flex-column align-items-center justify-content-center text-center">
							<h4 class="blog_title">편견을 깨는 보통사람들의<br>스킨케어 레시피</h4>
							<span class="blog_meta">닥터지</span>
							<a class="blog_more" href="http://plan.danawa.com/info/index.php?nPlanSeq=2177">팁 보러가기</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Benefit -->

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
						<p>태양광발전소가 저렴한 가격을 유지할 수 있도록 홍보해주세요!</p>
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
						<ul class="footer_nav">
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
					<div class="footer_nav_container">
						<div class="cr" style="font-size:10px">본사에 등록된 모든 광고와 저작권 및 법적책임은 자료제공사(또는 글쓴이)에게 있으므로 본사는 광고에 대한 책임을 지지 않습니다.</div>
						<div class="cr text-center">Copyright 2021. 태양광발전소 all rights reserved.</div>
					</div>
				</div>
			</div>
		</div>
	</footer>
</div>

<script src="../../resources/js/jquery-3.2.1.min.js"></script>
<script src="../../resources/styles/bootstrap4/popper.js"></script>
<script src="../../resources/styles/bootstrap4/bootstrap.min.js"></script>
<script src="../../resources/plugins/Isotope/isotope.pkgd.min.js"></script>
<script src="../../resources/plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
<script src="../../resources/plugins/easing/easing.js"></script>
<script src="../../resources/js/custom.js"></script>
</body>
</html>