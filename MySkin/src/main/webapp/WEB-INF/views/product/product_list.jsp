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
.product_li{

}
.product_li:hover {
	background: #f3f3f3;
</style>
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
							<a href="/"><img src="../resources/logo/image02.png" width="150" height="60" ></a>
						</div>
						<!-- 상단 아이콘(장바구니, 마이페이지 모양) -->
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

	<!-- 우측 메뉴 -->
	<div class="hamburger_menu">
		<div class="hamburger_close"><i class="fa fa-times" aria-hidden="true"></i></div>
		<div class="hamburger_menu_content" style="padding-left: 32px;">
			<ul class="menu_top_nav">
				<li class="menu_item has-children">
					<a href="#">
						<strong>내 계정</strong>
						<i class="fa fa-angle-down"></i>
					</a>
					<ul class="menu_selection" style="padding-left:32px">
						<c:if test="${sessionScope.members.mb_id == null}">
						<li><a href="/member/login"><i class="fa fa-sign-in" aria-hidden="true"></i>&nbsp;&nbsp;로그인</a></li>
						<li><a href="/member/register"><i class="fa fa-user-plus" aria-hidden="true"></i>&nbsp;&nbsp;회원가입</a></li>
						</c:if>
						<c:if test="${sessionScope.members.mb_id != null}">
						<li><a href="/member/logout"><i class="fa fa-sign-out" aria-hidden="true"></i>&nbsp;&nbsp;로그아웃</a></li>
						<li><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>&nbsp;&nbsp;구매한 상품</a></li>
						</c:if>
					</ul>
				</li>
				<li class="menu_item">
					<a href="/survey/survey_choice">피부타입 
						<c:if test="${sessionScope.members.st_id != null}">
						재
						</c:if>
				검사</a>
				</li>
				<li class="menu_item"><a href="board/board_list">피부게시판</a></li>
			</ul>
		</div>
	</div>

	<div class="container product_section_container">
		<div class="row">
			<div class="col product_section clearfix">

				<!-- Breadcrumbs -->
								<div class="breadcrumbs d-flex flex-row align-items-center" style="margin-bottom: 15px;">
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
							<div class="col" style="border-bottom:1px solid #d9d9d9">
								<!-- Product Sorting -->
								<div style="float:left; width:30%; margin-bottom:5px;">
									<ul class="product_sorting">
										<li>
										<form action="product_list" method="post" name="frm">
											<span class="type_sorting_text" onchange="sm()">정렬</span>
											<i class="fa fa-angle-down"></i>
											<ul class="sorting_type">
												<li class="type_sorting_btn" onclick="location.href='product_list?orders=1';"><span>등록순</span></li>
												<li class="type_sorting_btn" onclick="location.href='product_list?orders=2';"><span>가격높은순</span></li>
												<li class="type_sorting_btn" onclick="location.href='product_list?orders=3';"><span>가격낮은순</span></li>
												<li class="type_sorting_btn" onclick="location.href='product_list?orders=4';"><span>별점순</span></li>
											</ul>
										</form>
										</li>
									</ul>
								</div>
							</div>
						</div>
						<!-- 상품목록틀 -->
						<div><!-- 상품 한개 틀 -->
							<c:forEach items="${list}" var="product">
								<div class="product_li" style="width:99%; margin:10px 5px; border-bottom:1px solid #d9d9d9" onclick="location.href='product_view?prod_id=${product.prod_id}';">
									<table>
										<tr>
											<td rowspan="4" style="float:center;">
												<img src="../resources/images/pro_img/${product.prod_id}.jpg" style="width:95px; height:95px;">
											</td>
											<!-- 위쪽 상품이름 -->
											<td style="padding:0 10px; padding-top:5px; width:99%; display: inline-block; overflow:hidden; text-overflow:ellipsis; line-height:1; height:33.5px; text-align:left; word-wrap:break-word; display:-webkit-box; -webkit-line-clamp:2; -webkit-box-orient: vertical;">
											${product.prod_name}
											</td>
										</tr>
										<tr>
											<td style="text-align:left; padding:0 10px; width:99%; color:silver">${product.prod_maker}</td>
										</tr>
										<tr>
											<!-- 아래쪽 가격 -->
											<td style="text-align:left; padding:0 10px; width:99%"><strong><span>${product.getFormat_price()}</span>원</strong></td>
										</tr>
										<tr>
											<!-- 별점 불러오기 -->
											<td style="text-align:left; padding:0 10px; width:99%"><i class="fa fa-star" style="color:#fac451;"></i>${product.prod_rating}</td>
										</tr>
									</table>
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