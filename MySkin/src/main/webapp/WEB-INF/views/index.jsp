<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="kr.smhrd.domain.*"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var='cpath' value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>화분::나에게맞는 화장품 분석</title>
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

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Nanum+Brush+Script&display=swap" rel="stylesheet">

<!-- 랜덤 스크립트 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script>
var banner1=new Array();
banner1[0]="안녕하세요.";
banner1[1]="어서오세요.";
banner1[2]="반가워요.";
banner1[3]="등장!";
var random_banner1=Math.floor(Math.random()*(banner1.length));
</script>
<script>
var banner2=new Array();
banner2[0]="이제, 화장품은 선택은 화분에서!";
banner2[1]="무방비한 자외선노출은 피부노화의 원인입니다.";
banner2[2]="당신을 괴롭히는 피부고민이 있나요?";
banner2[3]="흡연은 피부를 더 늙게만들고 주름지게 합니다.";
banner2[4]="흡연은 피부를 더 늙게만들고 주름지게 합니다.";
var random_banner2=Math.floor(Math.random()*(banner2.length));
</script>

<style>
@font-face {
    font-family:'SF_HambakSnow';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2106@1.1/SF_HambakSnow.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}
@font-face {
	src : url("../../resources/fonts/koverwatch.ttf");
	font-family:'over';
}
@font-face {
	src : url("../../resources/fonts/AuctionGothic_Medium.ttf");
	font-family:'AC';
}
</style>
</head>

<body>
<!-- 가장 외부 div 틀 -->
<div class="super_container" style="font-family:AC;">
	<!-- 헤더 -->
	<header class="header trans_300">
		<!-- 상단부 메뉴 -->
		<div class="main_nav_container">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 text-right">
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
		<div class="hamburger_menu_content">
			<ul class="menu_top_nav">
				<li class="menu_item has-children">
					<a href="#">
						<strong>내 계정</strong>
						<i class="fa fa-angle-down"></i>
					</a>
					<ul class="menu_selection">
						<li><a href="/member/login"><i class="fa fa-sign-in" aria-hidden="true"></i>&nbsp;&nbsp;로그인</a></li>
						<li><a href="/member/register"><i class="fa fa-user-plus" aria-hidden="true"></i>&nbsp;&nbsp;회원가입</a></li>
						<c:if test="${sessionScope.members.mb_id != null}">
						<li><a href="/member/logout"><i class="fa fa-sign-out" aria-hidden="true"></i>&nbsp;&nbsp;로그아웃</a></li>
						<li><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>&nbsp;&nbsp;구매한 상품</a></li>
						</c:if>
					</ul>
				</li>
				<li class="menu_item"><a href="survey/survey">피부타입 재검사</a></li>
				<li class="menu_item"><a href="board/board_list">피부게시판</a></li>
				<li class="menu_item"><a href="product/product_list">상품목록</a></li>
			</ul>
		</div>
	</div>

	<!-- 상단 이벤트 알림 -->
	<div><br><br><br></div>
	<c:if test="${sessionScope.members.mb_id != null}">
	<div class="benefit_item d-flex flex-row align-items-center" style="background:white;">
		<div class="benefit_icon"><i class="fa fa-smile-o" aria-hidden="true"></i></div>
		<div class="benefit_content">
			<h5><strong>${members.mb_id}님 &nbsp;<script>document.write(banner1[random_banner1]);</script></strong></h5>
			<p style="font-size:13px"><strong><script>document.write(banner2[random_banner2]);</script></strong></p>
		</div>
	</div>
	</c:if>


	<div id="carouselExampleDark" class="carousel carousel-dark slide" data-bs-ride="carousel">
		<div class="carousel-indicators">
			<button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
			<button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="1" aria-label="Slide 2"></button>
			<button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="2" aria-label="Slide 3"></button>
		</div>
		<div class="carousel-inner">
			<!-- 첫 번째 이벤트 -->
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
			<!-- 두번째 이벤트 -->
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
			<!-- 세번째 이벤트 -->
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
	 </div>

	<!-- 신상품 탭 -->
	<div class="best_sellers">
		<a href="https://www.naver.com">
			<div class="benefit_item d-flex flex-row align-items-center" style="background:#ffd868; margin-top:20px;">
				<div class="benefit_icon"><i class="fa fa-search" aria-hidden="true"></i></div>
				<div class="benefit_content">
					<h5><strong>피부타입 알아보기</strong></h5>
					<p><strong>자가진단 서비스</strong>로 피부타입을 알아보세요.</p>
				</div>
			</div>
		</a>
		<div class="container">
			<div class="row">
				<div class="col text-center">
					<div class="section_title new_arrivals_title" style=" margin-top: 20px;">
						<h2>새로나온 상품</h2>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col">
					<div class="product_slider_container" style=" margin-top: 20px;">
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
										<div class="product_bubble product_bubble_right product_bubble_red d-flex flex-column align-items-center"><span>NEW</span></div>
										<div class="product_info">
											<h6 class="product_name">
												<a href="product/product_view?prod_id=<c:out value="${product.prod_id}" />">
													<c:out value="${product.prod_name}" />
												</a>
											</h6>
											<div class="product_price"><span><c:out value="${product.getFormat_price2()}" />원</span>&nbsp;<c:out value="${product.getFormat_price()}" />원</div>
										</div>
									</div>
								</div>
							</div>
							</c:forEach>
						</div>
						<!-- 슬라이드 버튼 -->
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


	<div class="blogs" style="margin-top:30px;">
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
							<p> 상담시간 : 09:00 ~ 17:00 </p>
							<p> 전화번호 : 010-7495-1996 </p>
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
				<div class="col-lg-6" style="padding:0">
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
						<ul class="footer_nav" style="padding-left:0px;">
							<li><a href="https://m.blog.naver.com/Recommendation.naver">블로그 홍보</a></li>
							<li><a href="#">자주하는 질문</a></li>
						</ul>
					</div>
				</div>
				<div class="col-lg-6">
					<div class="footer_social d-flex flex-row align-items-center justify-content-lg-end justify-content-center">
						<ul style="padding-left:0px;">
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
						<div class="cr text-center" style="font-size:10px; line-height: 15px;">본사에 등록된 모든 광고와 저작권 및 법적책임은<br>자료제공사(또는 글쓴이)에게 있으므로<br>본사는 광고에 대한 책임을 지지 않습니다.</div>
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
<!--  
░██████╗██╗░░░██╗███╗░░██╗██████╗░░█████╗░░██╗░░░░░░░██╗███████╗██████╗░
██╔════╝██║░░░██║████╗░██║██╔══██╗██╔══██╗░██║░░██╗░░██║██╔════╝██╔══██╗
╚█████╗░██║░░░██║██╔██╗██║██████╔╝██║░░██║░╚██╗████╗██╔╝█████╗░░██████╔╝
░╚═══██╗██║░░░██║██║╚████║██╔═══╝░██║░░██║░░████╔═████║░██╔══╝░░██╔══██╗
██████╔╝╚██████╔╝██║░╚███║██║░░░░░╚█████╔╝░░╚██╔╝░╚██╔╝░███████╗██║░░██║
╚═════╝░░╚═════╝░╚═╝░░╚══╝╚═╝░░░░░░╚════╝░░░░╚═╝░░░╚═╝░░╚══════╝╚═╝░░╚═╝
 -->