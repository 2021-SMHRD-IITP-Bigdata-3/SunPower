<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var='cpath' value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="ko">
<head>
<title>피부타입 알아보기</title>
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
<!-- 버튼 호버 툴팁 관련-->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
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
							<a href="index.html"><img src="../resources/logo/image02.png" width="150" height="60" ></a>
						</div>
						<nav class="navbar">
							<ul class="navbar_menu">
								<li><a href="index.html">home</a></li>
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
						<li><a href="#"><i class="fa fa-sign-in" aria-hidden="true"></i>로그아웃</a></li>
						<li><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>구매한 상품</a></li>
					</ul>
				</li>
				<li class="menu_item"><a href="#">피부타입 재검사</a></li>
				<li class="menu_item"><a href="#">피부게시판</a></li>
				<li class="menu_item"><a href="#">공지사항</a></li>
			</ul>
		</div>
	</div>
	
	<div class="contact_container" style="width:auto; margin-top:50px;">
		<div class="container" style="text-align:center">
			<!-- breadcrumbs = 상단여백, 줄 넣기 -->
			<div class="breadcrumbs" style="margin-bottom: 50px;"></div>
			<h3 style="margin-bottom: 50px; font-size:25px">남준성 님에 대한<br>피부타입을 알고싶어요</h3>
		</div>
		<h1 style="font-size:15px; text-align:center">피부타입 자가진단을 하시면 <br> 가장 잘 맞는 화장품을 추천해드릴게요.</h1>
		<div class="container" style="width:100%; height:auto; margin:auto;">
			<div class="radio icheck-danger" style="margin:20px;">
				<button class="btn btn-success" style="width:100%; height:60px; background-color: #ff8688; border-color: #fe4c50;" type="submit" onclick="location.href='survey_test'">빠르고 간편하게 알고싶어요!<br><a style="font-size:10px">지성, 건성을 알아볼 수 있는 기초 피부타입테스트 (5분)</a></button>
			</div>
			<div class="radio icheck-danger" style="margin:20px;">
				<button class="btn btn-success" style="width:100%; height:60px; background-color: #fe4c50; border-color: #fe4c50;" type="submit" onclick="location.href='survey_test_detail'">정확하게 알고싶어요!<br><a style="font-size:10px">바우만 테스트를 통한 피부타입테스트 (15분)</a></button>
			</div>
		</div>
	</div>
	<!-- Footer -->
	<footer>
		<div style="width:auto; margin-top:60px">
				<div style="text-align:center; margin:">Copyright 2021. 태양광발전소 all rights reserved.</div>
		</div>
	</footer>
<script src="../resources/js/jquery-3.2.1.min.js"></script>
<script src="../resources/styles/bootstrap4/popper.js"></script>
<script src="../resources/styles/bootstrap4/bootstrap.min.js"></script>
<script src="../resources/plugins/Isotope/isotope.pkgd.min.js"></script>
<script src="../resources/plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
<script src="../resources/plugins/easing/easing.js"></script>
<script src="../resources/plugins/jquery-ui-1.12.1.custom/jquery-ui.js"></script>
<script src="../resources/js/single_custom.js"></script>
</div>
</body>
</html>
