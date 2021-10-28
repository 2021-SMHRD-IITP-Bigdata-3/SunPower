<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>로그인</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="../../../resources/styles/bootstrap4/bootstrap.min.css">
<link href="../../../resources/plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="../../../resources/plugins/OwlCarousel2-2.2.1/owl.carousel.css">
<link rel="stylesheet" type="text/css" href="../../../resources/plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
<link rel="stylesheet" type="text/css" href="../../../resources/plugins/OwlCarousel2-2.2.1/animate.css">
<link rel="stylesheet" href="../../../resources/plugins/themify-icons/themify-icons.css">
<link rel="stylesheet" type="text/css" href="../../../resources/plugins/jquery-ui-1.12.1.custom/jquery-ui.css">
<link rel="stylesheet" type="text/css" href="../../../resources/styles/contact_styles.css">
<link rel="stylesheet" type="text/css" href="../../../resources/styles/contact_responsive.css">


<script src="../../../resources/js/jquery-3.2.1.min.js"></script>
<script src="../../../resources/styles/bootstrap4/popper.js"></script>
<script src="../../../resources/styles/bootstrap4/bootstrap.min.js"></script>
<script src="../../../resources/plugins/Isotope/isotope.pkgd.min.js"></script>
<script src="../../../resources/plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
<script src="../../../resources/plugins/easing/easing.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&key=AIzaSyCIwF204lFZg1y4kPSIhKaHEXMLYxxuMhA"></script>
<script src="../../../resources/plugins/jquery-ui-1.12.1.custom/jquery-ui.js"></script>
<script src="../../../resources/js/contact_custom.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js"></script>

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
							<a href="index.html"><img src="../../../resources/logo/image02.png" width="200" height="70" ></a>
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
					</ul>
				</li>
				<li class="menu_item"><a href="index.html">메인으로</a></li>
				<li class="menu_item"><a href="#">shop</a></li>
			</ul>
		</div>
	</div>

	<div class="contact_container" style="width:auto; margin-top:50px;">
		<div class="container">
			<!-- breadcrumbs = 상단여백, 줄 넣기 -->
			<div class="breadcrumbs" style="margin-bottom: 10px;"></div>
			<h3 style="margin-bottom: 20px;">로그인</h3>
		</div>
		<form action="login" method="post" id="myForm" >
			<div class="container" style="width:80%; height:auto; margin:auto;">
				<div class="container" style="margin-bottom:20px">
					<label class="control-label" for="id">아이디</label>
					<input class="form-control" type="text" style="width:100%;" placeholder="아이디를 입력하세요." name="mb_id" id="id" required>

				</div>
				<div class="container">
					<label class="control-label" for="pwd">비밀번호</label>
					<input class="form-control" type="password" style="width:100%;" placeholder="비밀번호를 입력하세요." name="mb_pwd" id="pwd" required>

				</div>
				<div style="text-align:center; margin:20px">
					<a href="register">태양계에 처음이신가요?</a>
				</div>
				<div class="radio icheck-danger" style="margin:20px;">
					<button class="btn btn-success" style="width:100%;" type="submit" >로그인</button>
				</div>
			</div>
		</form>
	</div>


	<!-- Footer -->
	<footer>
		<div style="width:auto; margin-top:60px">
				<div style="text-align:center; margin:">Copyright 2021. 태양광발전소 all rights reserved.</div>
		</div>
	</footer>

</div>
</body>
</html>