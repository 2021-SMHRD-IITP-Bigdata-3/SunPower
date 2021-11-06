<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var='cpath' value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="ko">
<head>
<title>화분::구매완료</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="${cpath}/resources/styles/bootstrap4/bootstrap.min.css">
<link href="${cpath}/resources/plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="${cpath}/resources/plugins/OwlCarousel2-2.2.1/owl.carousel.css">
<link rel="stylesheet" type="text/css" href="${cpath}/resources/plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
<link rel="stylesheet" type="text/css" href="${cpath}/resources/plugins/OwlCarousel2-2.2.1/animate.css">
<link rel="stylesheet" href="../resources/plugins/themify-icons/themify-icons.css">
<link rel="stylesheet" type="text/css" href="${cpath}/resources/plugins/jquery-ui-1.12.1.custom/jquery-ui.css">
<link rel="stylesheet" type="text/css" href="${cpath}/resources/styles/single_styles.css">
<link rel="stylesheet" type="text/css" href="${cpath}/resources/styles/single_responsive.css">
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
							<a href="${cpath}"><img src="../resources/logo/image02.png" width="150" height="60" ></a>
						</div>
						<nav class="navbar">
							<ul class="navbar_menu">
								<li><a href="${cpath}">home</a></li>
							</ul>
							<ul class="navbar_user">
								<li><a href="#"><i class="fa fa-search" aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fa fa-user" aria-hidden="true"></i></a></li>
								<li class="checkout">
									<a href="${cpath}/product/product_cart">
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
				<li class="menu_item"><a href="../board/board_list"><strong>피부게시판</strong></a></li>
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
	
	<div class="contact_container" style="width:auto; margin-top:50px;">
		<div class="container">
			<!-- breadcrumbs = 상단여백, 줄 넣기 -->
			<div class="breadcrumbs" style="margin-bottom: 10px;"></div>
			<h3 style="margin-bottom: 20px;">구매완료</h3>
		</div>
		<form action="/ajax/signup" method="post" id="myForm" >
			<div class="container" style="width:95%; height:auto; margin:auto;">
				<h3 style="margin-top:100px; margin-bottom:30px; font-size:20px; text-align:center">구매가 정상적으로 완료되었습니다.<br></h3>
				<h3 style="margin-top:30px; margin-bottom:60px; font-size:13px; text-align:center">구매가 정상적으로 완료되었으며, <br>상품이 배송준비 중 입니다.<br></h3>
				<div class="radio icheck-danger" style="margin:20px;">
					<button class="btn btn-secondary" style="width:100%;" type="submit" onclick="location.href='${cpath}'" >메인화면으로</button>
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
<script src="${cpath}/resources/js/jquery-3.2.1.min.js"></script>
<script src="${cpath}/resources/styles/bootstrap4/popper.js"></script>
<script src="${cpath}/resources/styles/bootstrap4/bootstrap.min.js"></script>
<script src="${cpath}/resources/plugins/Isotope/isotope.pkgd.min.js"></script>
<script src="${cpath}/resources/plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
<script src="${cpath}/resources/plugins/easing/easing.js"></script>
<script src="${cpath}/resources/plugins/jquery-ui-1.12.1.custom/jquery-ui.js"></script>
<script src="${cpath}/resources/js/single_custom.js"></script>
</div>
</body>
</html>
