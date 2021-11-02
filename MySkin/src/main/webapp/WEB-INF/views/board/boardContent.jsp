<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var='cpath' value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="ko">
<head>
<title>게시글 읽기</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css"
	href="../resources/styles/bootstrap4/bootstrap.min.css">
<link
	href="../resources/plugins/font-awesome-4.7.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css"
	href="../resources/plugins/OwlCarousel2-2.2.1/owl.carousel.css">
<link rel="stylesheet" type="text/css"
	href="../resources/plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
<link rel="stylesheet" type="text/css"
	href="../resources/plugins/OwlCarousel2-2.2.1/animate.css">
<link rel="stylesheet"
	href="../resources/plugins/themify-icons/themify-icons.css">
<link rel="stylesheet" type="text/css"
	href="../resources/plugins/jquery-ui-1.12.1.custom/jquery-ui.css">
<link rel="stylesheet" type="text/css"
	href="../resources/styles/single_styles.css">
<link rel="stylesheet" type="text/css"
	href="../resources/styles/single_responsive.css">
<script type="text/javascript">
function goDel(article_seq){
	location.href="${cpath}/board/boardDelete.do?article_seq="+article_seq;
		//list.article_seq
	}
	 function goForm(){
			
	  		location.href="/board/board_list";
	  	}

</script>
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
								<a href="../"><img src="../resources/logo/image02.png" width="150"
									height="60"></a>
							</div>
							<nav class="navbar">
								<ul class="navbar_menu">
									<li><a href="../">home</a></li>
								</ul>
								<ul class="navbar_user">
									<li><a href="#"><i class="fa fa-search"
											aria-hidden="true"></i></a></li>
									<li><a href="#"><i class="fa fa-user"
											aria-hidden="true"></i></a></li>
									<li class="checkout"><a href="#"> <i
											class="fa fa-shopping-cart" aria-hidden="true"></i> <span
											id="checkout_items" class="checkout_items">2</span>
									</a></li>
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
			<div class="hamburger_close">
				<i class="fa fa-times" aria-hidden="true"></i>
			</div>
			<div class="hamburger_menu_content text-right">
				<ul class="menu_top_nav">
					<li class="menu_item has-children"><a href="#"> 내 계정 <i
							class="fa fa-angle-down"></i>
					</a>
						<ul class="menu_selection">
							<li><a href="/member/login"><i class="fa fa-sign-in"
									aria-hidden="true"></i>로그인</a></li>
							<li><a href="/member/register"><i class="fa fa-user-plus"
									aria-hidden="true"></i>회원가입</a></li>
						</ul></li>
					<li class="menu_item"><a href="/">메인으로</a></li>
					<li class="menu_item"><a href="/product/product_list">shop</a></li>
				</ul>
			</div>
		</div>
		<div class="container">
			<div
				style="padding-right: 5px; padding-left: 5px; padding-bottom: 10px; padding-top: 100px;">
				<!-- 제목 -->
				<div align="left" style="width: 100%; color: black;">
					<div
						style="font-size: 4vw; overflow: hidden; text-overflow: ellipsis; white-space: nowrap; border-bottom: 1px solid silver;">
						<strong>${to.article_title}</strong>
					</div>
				</div>
				<div class="d-flex justify-content-between">
					<div style="text-align: right; font-size: 12px; color: silver;">${to.mb_id}</div>
					<div style="text-align: left; font-size: 12px; color: silver;">작성자
						피부타입</div>
					<div style="text-align: right; font-size: 12px; color: silver;">${to.reg_date}</div>
				</div>
				<!-- 내용 -->
				<div align="left" class="mt-2 mb-2"
					style="width: 100%; height: auto; min-height: 300px; word-break: break-all; word-wrap: break-word; border-bottom: 1px solid silver;">
					${to.article_content}</div>
				<!-- 버튼 -->
				<div class="d-flex justify-content-end">
					<c:if test="${sessionScope.members.mb_id == to.mb_id}">
						<button type="button" class="btn btn-secondary"
							style="margin: 0 7px; padding: 3px 6px;" value="delete"
							onClick="goUpdate(${to.article_seq})">수정</button>
						<button type="button" class="btn btn-danger"
							style="margin: 0 7px; padding: 3px 6px;" value="delete"
							onClick="goDel(${to.article_seq})">삭제</button>
					</c:if>
					<button type="button" class="btn light"
						style="margin: 0 7px; padding: 3px 6px;" value="Submit"
						onClick="location.href='${spath}/board/board_list'">목록</button>
				</div>
			</div>
		</div>
		<!-- Footer -->
		<footer>
			<div style="width: auto; margin-top: 60px">
				<div style="text-align: center; margin:">Copyright 2021.
					태양광발전소 all rights reserved.</div>
			</div>
		</footer>
	</div>
	<script src="../resources/js/jquery-3.2.1.min.js"></script>
	<script src="../resources/styles/bootstrap4/popper.js"></script>
	<script src="../resources/styles/bootstrap4/bootstrap.min.js"></script>
	<script src="../resources/plugins/Isotope/isotope.pkgd.min.js"></script>
	<script src="../resources/plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
	<script src="../resources/plugins/easing/easing.js"></script>
	<script src="../resources/plugins/jquery-ui-1.12.1.custom/jquery-ui.js"></script>
	<script src="../resources/js/single_custom.js"></script>
</body>
</html>