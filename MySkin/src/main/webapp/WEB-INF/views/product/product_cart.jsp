<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var='cpath' value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="ko">
<head>
<title>장바구니</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="../resources/styles/bootstrap4/bootstrap.min.css">
<link href="../resources/plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="../resources/plugins/OwlCarousel2-2.2.1/owl.carousel.css">
<link rel="stylesheet" type="text/css" href="../resources/plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
<link rel="stylesheet" type="text/css" href="../resources/plugins/OwlCarousel2-2.2.1/animate.css">
<link rel="stylesheet" href="../resources/plugins/themify-icons/themify-icons.css">
<link rel="stylesheet" type="text/css" href="../resources/plugins/jquery-ui-1.12.1.custom/jquery-ui.css">
<link rel="stylesheet" type="text/css" href="../resources/styles/single_styles.css">
<link rel="stylesheet" type="text/css" href="../resources/styles/single_responsive.css">
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
									<a href="/product/product_cart">
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

	<div style="padding-right:20px; padding-left:20px; padding-bottom:10px; padding-top:100px">
		<div class="row">
			<div class="col">
				<!-- Breadcrumbs -->
				<div class="breadcrumbs d-flex flex-row align-items-center" style="margin-bottom: 25px;">
					<ul>
						<li><a href="/">Home</a></li>
						<li class="active"><a href="/product/product_cart"><i class="fa fa-angle-right" aria-hidden="true"></i>장바구니</a></li>
					</ul>
				</div>
			</div>
		</div>
		<div class="row">
			<div style="width:100%; padding:0 15px;">
				<div class="product_details" style="margin-top: 5px;">
					<div class="product_details_title">
						<h2>장바구니</h2>
					</div>
					<p style="margin-bottom: 0px; text-align:right;"><a>선택삭제</a></p>
					<table class="table table-hover" style="text-align:center; border:1;">
					    <thead>
							<tr>
							  <th scope="col" style="padding:2px"></th>
							  <th scope="col" style="padding:2px">상품정보</th>
							  <th scope="col" style="padding:2px">상품명</th>
							  <th scope="col" style="padding:2px">수량</th>
							  <th scope="col" style="padding:2px"><strong>가격</strong></th>
							</tr>
					    </thead>
					    <tbody>
							<tr>
							    <th scope="row" style="display:table-cell; vertical-align:middle; padding:2px;">
								<input type="checkbox" id="check">
							    </th>
							    <td style="float:center; padding:2px;"><img src="thumb/1.jpg" style="width:50px; height:50px;"></td>
							    <td style="text-align: left; display:table-cell; vertical-align:middle; padding:2px;">마스크 20개 묶음</td>
							    <td style="display:table-cell; vertical-align:middle; padding:2px;">1</td>
							    <td style="display:table-cell; vertical-align:middle; padding:2px;">20,000</td>
							</tr>
							<tr>
							    <th scope="row" style="display:table-cell; vertical-align:middle; padding:2px;">
								<input type="checkbox" id="check">
							    </th>
							    <td style="float:center; padding:2px;"><img src="thumb/4.jpg" style="width:50px; height:50px;"></td>
							    <td style="text-align: left; display:table-cell; vertical-align:middle; padding:2px;">마스크 20333개 묶음</td>
							    <td style="display:table-cell; vertical-align:middle; padding:2px;">10</td>
							    <td style="display:table-cell; vertical-align:middle; padding:2px;">220,000</td>
							</tr>
							</tr>
					    </tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="product_price" style="float:right;">합계 : 100,000 원</div>
		<div class="quantity" style="padding-top:60px;">
			<div class="red_button add_to_cart_button" style="float:right"><a href="buy.html">구매하기</a></div>
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
					<div class="footer_nav_container" style="margin-top: 10px;">
						<div class="cr" style="font-size:10px; text-align:center; margin-right:0px;">본사에 등록된 모든 광고와 저작권 및 법적책임은<br>자료제공사에게 있으므로 본사는 광고에 대한 책임을 지지 않습니다.</div>
						<div class="cr text-center"style="margin-right:0px;">Copyright 2021. 태양광발전소 all rights reserved.</div>
					</div>
				</div>
			</div>
		</div>
	</footer>


<script>
	function initQuantity()
	{
		if($('.plus').length && $('.minus').length)
		{
			var plus = $('.plus');
			var minus = $('.minus');
			var value = $('#quantity_value');

			plus.on('click', function()
			{
				var x = parseInt(value.text());
				value.text(x + 1);
			});

			minus.on('click', function()
			{
				var x = parseInt(value.text());
				if(x > 1)
				{
					value.text(x - 1);
				}
			});
		}
	}
</script>
</div>

<script src="js/jquery-3.2.1.min.js"></script>
<script src="styles/bootstrap4/popper.js"></script>
<script src="styles/bootstrap4/bootstrap.min.js"></script>
<script src="plugins/Isotope/isotope.pkgd.min.js"></script>
<script src="plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
<script src="plugins/easing/easing.js"></script>
<script src="plugins/jquery-ui-1.12.1.custom/jquery-ui.js"></script>
<script src="js/single_custom.js"></script>
</body>

</html>
