<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var='cpath' value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="ko">
<head>
<title>화분::이미지 피부진단</title>
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
						<li><a href="../product/product_list"><i class="fa fa-th-list" aria-hidden="true"></i>&nbsp;전체상품</a></li>
						<li><a href="../product/product_list?orders=스킨케어"><i class="fa fa-smile-o" aria-hidden="true"></i>&nbsp;스킨케어</a></li>
						<li><a href="../product/product_list?orders=마스크팩"><i class="fa fa-leaf" aria-hidden="true"></i>&nbsp;마스크팩</a></li>
						<li><a href="../product/product_list?orders=선케어"><i class="fa fa-sun-o" aria-hidden="true"></i>&nbsp;선케어</a></li>
						<li><a href="../product/product_list?orders=클렌징"><i class="fa fa-shower" aria-hidden="true"></i>&nbsp;클렌징</a></li>
					</ul>
				</li>
			</ul>
		</div>
	</div>

	<div class="contact_container" style="width:auto; margin:50px 30px 0 30px;">
		<div class="container" style="text-align:center">
			<!-- breadcrumbs = 상단여백, 줄 넣기 -->
			<div class="breadcrumbs" style="margin-bottom: 30px;"></div>
			<div align="center">
				<h2 align ="center">피부 진단 결과</h2>
			</div>	
			
			<!-- 분석 결과 표시 테이블 -->
			<!--   
			<figcaption >
          <table class="tg" >
            <thead>
              <tr>
                <th class="tg-l8bv" colspan="2"></th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td class="tg-zv4m">  : </td>
                <td class="tg-8jgo">  </td>
              </tr>
            </tbody>
            </table>
        </figcaption>
			 -->
			
			<h3 style="margin-bottom: 50px; font-size:25px"> ${members.mb_id} 님은<br> ${ac.ac_name} 입니다.</h3>
		</div>
		<h1 style="font-size:17px; text-align:center; margin-bottom:10px;"> <strong>[여드름 특징]</strong></h1>
		<p style="padding:0 20px; text-align:center; margin-bottom:25px;"> <strong><br>${ac.ac_content}</strong></p>
		<h1 style="font-size:17px; text-align:center; margin-bottom:10px;"> <strong>[여드름 피부관리법]</strong></h1>
		<p style="padding:0 20px; text-align:center; margin-bottom:25px;"> <strong><br>${ac.ac_care}</strong></p>
		<h1 style="font-size:17px; text-align:center; margin-bottom:30px;"> <strong>${ac.ac_name}에 맞는 화장품 입니다.</strong></h1>
		<div class="container" style="width:100%; height:auto; margin:auto;">
			<div><!-- 상품 한개 틀 -->
				<c:forEach items="${recom}" var="recom">
					<div class="product_li" style="width:99%; margin:10px 5px; border-bottom:1px solid #d9d9d9" onclick="location.href='${cpath}/product/product_view?prod_id=${recom.prod_id}';">
						<table>
						<tr>
							<td rowspan="4" style="float:center;">
								<img src="${cpath}/resources/images/pro_img/${recom.prod_id}.jpg" style="width:95px; height:95px;">
							</td>
							<!-- 위쪽 상품이름 -->
							<td style="padding:0 10px; width:99%; display: inline-block; overflow:hidden; text-overflow:ellipsis; line-height:1; height:28px; text-align:left; word-wrap:break-word; display:-webkit-box; -webkit-line-clamp:2; -webkit-box-orient: vertical;">
							${recom.prod_name}
							</td>
						</tr>
						<tr>
							<td style="text-align:left; padding:0 10px; width:99%; color:silver">${recom.prod_maker}</td>
						</tr>
						<tr>
							<!-- 아래쪽 가격 -->
							<td style="text-align:left; padding:0 10px; width:99%"><strong>${recom.getFormat_price()}  원</strong></td>
						</tr>
						<tr>
							<!-- 별점 불러오기 -->
							<td style="text-align:left; padding:0 10px; width:99%"><i class="fa fa-star" style="color:#fac451;"></i>${recom.prod_rating}</td>
						</tr>
						
						</table>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>
	

		<!-- Footer -->
	<footer>
		<div style="width:auto; margin-top:60px">
				<div style="text-align:center; margin:">Copyright 2021. 태양광발전소 all rights reserved.</div>
		</div>
	</footer>

</div>




<script src="${cpath}/resources/js/jquery-3.2.1.min.js"></script>
<script src="${cpath}/resources/styles/bootstrap4/popper.js"></script>
<script src="${cpath}/resources/styles/bootstrap4/bootstrap.min.js"></script>
<script src="${cpath}/resources/plugins/Isotope/isotope.pkgd.min.js"></script>
<script src="${cpath}/resources/plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
<script src="${cpath}/resources/plugins/easing/easing.js"></script>
<script src="${cpath}/resources/plugins/jquery-ui-1.12.1.custom/jquery-ui.js"></script>
<script src="${cpath}/resources/js/categories_custom.js"></script>
</body>

</html>
