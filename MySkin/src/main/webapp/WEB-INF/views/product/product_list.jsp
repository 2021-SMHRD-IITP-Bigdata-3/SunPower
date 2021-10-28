<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var='cpath' value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
<title>상품 목록</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="Colo Shop Template">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="../resources/styles/bootstrap4/bootstrap.min.css">
<link href="../resources/plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="../resources/plugins/OwlCarousel2-2.2.1/owl.carousel.css">
<link rel="stylesheet" type="text/css" href="../resources/plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
<link rel="stylesheet" type="text/css" href="../resources/plugins/OwlCarousel2-2.2.1/animate.css">
<link rel="stylesheet" type="text/css" href="../resources/plugins/jquery-ui-1.12.1.custom/jquery-ui.css">
<link rel="stylesheet" type="text/css" href="../resources/styles/categories_styles.css">
<link rel="stylesheet" type="text/css" href="../resources/styles/categories_responsive.css">

<style>
.page-list.active .page-num {
    z-index: 2;
    color: #fff;
    background-color: #fe4c50;
    border-color: #659844;
}
.page-num {
    position: relative;
    display: block;
    padding: 0.5rem 0.75rem;
    margin-left: -1px;
    line-height: 1.25;
    color: #fe4c50;
    background-color: #fff;
    border: 1px solid #ddd;
}
.page-btn {
    position: relative;
    display: block;
    padding: 0.5rem 0.75rem;
    margin-left: -1px;
    line-height: 1.25;
    color: #fe4c50;
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
							<a href="index.html">SUN<span>POWER</span></a>
						</div>
						<nav class="navbar">
							<ul class="navbar_menu">
								<li><a href="../">home</a></li>
								<li><a href="#">shop</a></li>
								<li><a href="#">promotion</a></li>
								<li><a href="#">pages</a></li>
								<li><a href="https://section.blog.naver.com/BlogHome.naver?directoryNo=0&currentPage=1&groupId=0">blog</a></li>
								<li><a href="contact.html">contact</a></li>
							</ul>
							<ul class="navbar_user">
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

	<div class="fs_menu_overlay"></div>

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
						<li><a href="#"><i class="fa fa-sign-in" aria-hidden="true"></i>로그인</a></li>
						<li><a href="#"><i class="fa fa-user-plus" aria-hidden="true"></i>회원가입</a></li>
					</ul>
				</li>
				<li class="menu_item"><a href="index.html">메인으로</a></li>
				<li class="menu_item"><a href="#">shop</a></li>
			</ul>
		</div>
	</div>

	<div class="container product_section_container">
		<div class="row">
			<div class="col product_section clearfix">

				<!-- Breadcrumbs -->
				<div class="breadcrumbs d-flex flex-row align-items-center">
					<ul>
						<li><a href="../">홈</a></li>
						<li class="active"><a href="index.html"><i class="fa fa-angle-right" aria-hidden="true"></i>상품 목록</a></li>
					</ul>
				</div>

				<!-- Main Content -->
				<div class="main_content">

					<!-- Products -->
					<div class="products_iso">
						<div class="row">
							<div class="col">
							
								<!-- Product Sorting -->

									<div class="col-xs-12 col-md-8" style="float:left; width:60%;">
										<ul class="product_sorting">
											<li>
												<span class="type_sorting_text">카테고리</span>
												<i class="fa fa-angle-down"></i>
												<ul class="sorting_type">
													<li class="type_sorting_btn" data-isotope-option='{ "sortBy": "original-order" }'><span>best 상품</span></li>
													<li class="type_sorting_btn" data-isotope-option='{ "sortBy": "price" }'><span>가격</span></li>
													<li class="type_sorting_btn" data-isotope-option='{ "sortBy": "name" }'><span>신상품</span></li>
												</ul>
											</li>
										</ul>
									</div>
									<div class="col-xs-6 col-md-4" style="float:right; width:40%;">
										<ul class="product_sorting">
											<li>
												<span class="num_sorting_text">상품 표시개수</span>
												<i class="fa fa-angle-down"></i>
												<ul class="sorting_num">
													<li class="num_sorting_btn"><span>30</span></li>
													<li class="num_sorting_btn"><span>50</span></li>
													<li class="num_sorting_btn"><span>100</span></li>
												</ul>
											</li>
										</ul>
									</div>

								<!-- Product Grid -->

								<div class="product-grid">
								
									<!-- Product 1 -->
									<c:forEach items="${list}" var="product">
									<div class="product-item men">
										<div class="product discount product_filter">
											<div class="product_image">
												<img src="../resources/product_img/${product.prod_id}.jpg" alt="">
											</div>
											<div class="favorite favorite_left"></div>
											<div class="product_bubble product_bubble_right product_bubble_red d-flex flex-column align-items-center"><span>-↓20</span></div>
											<div class="product_info">
												<h6 class="product_name"><a href="product_view?prod_id=${product.prod_id}">${product.prod_name}</a></h6>
												<div class="product_price">${product.getFormat_price()}<span>${product.getFormat_price()}</span></div>
											</div>
										</div>
										<div class="red_button add_to_cart_button"><a href="#">add to cart</a></div>
									</div>
									</c:forEach>
								</div>

							<!-- 페이지 -->
								<ul class="pagination justify-content-center" style="margin-top:20px;">
									<li><a class="page-btn" href="#">이전</a></li>
									<li class="page-list active"><a class="page-num" href="#">1</a></li>
									<li class="page-list"><a class="page-num" href="#">2</a></li>
									<li class="page-list"><a class="page-num" href="#">3</a></li>
									<li class="page-list"><a class="page-num" href="#">4</a></li>
									<li class="page-list"><a class="page-num" href="#">5</a></li>
									<li><a class="page-btn" href="#">다음</a></li>
								</ul>
							</div>
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

<script src="../resources/js/jquery-3.2.1.min.js"></script>
<!--  <script src="../resources/styles/bootstrap4/popper.js"></script> -->
<!--  <script src="../resources/styles/bootstrap4/bootstrap.min.js"></script> -->
<script src="../resources/plugins/Isotope/isotope.pkgd.min.js"></script>
<script src="../resources/plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
<script src="../resources/plugins/easing/easing.js"></script>
<script src="../resources/plugins/jquery-ui-1.12.1.custom/jquery-ui.js"></script>
<script src="../resources/js/categories_custom.js"></script>
</body>
</html>