<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var='cpath' value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="ko">
<head>
<title>게시글 작성</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css"
	href="../resources/styles/bootstrap4/bootstrap.min.css">
<link href="../resources/plugins/font-awesome-4.7.0/css/font-awesome.min.css"
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
	$(document).ready(function() {
		console.log("안녕")
		loadJson();
	});
	function loadJson() {
		//서버에 -> /list.do로 요청을 해서 JSON 데이터로 응답을 받아보자
		$.ajax({
			url : "${cpath}/board/board_write",
			type : "GET",
			//data : {},
			//dataType : "json",
			success : console.log("boardwrite"),
			error : function() {
				alert("error");
			}

		});
	}

	function goForm() {

		location.href = "/board/board_list";
	}

	function goInsert() {
		var frmData = $("#frm").serialize();
		console.log("qwq")
		//alert(frmData);
		$.ajax({
			url : "${cpath}/insert.do",
			type : "post",
			data : frmData,
			success : goForm,
			error : function() {
				alert("error");
			}
		});
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
							<a href="index.html"><img src="../resources/logo/image02.png" width="150" height="60" ></a>
						</div>
						<nav class="navbar">
							<ul class="navbar_menu">
								<li><a href="/">home</a></li>
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
						<li><a href="/member/login"><i class="fa fa-sign-in" aria-hidden="true"></i>로그인</a></li>
						<li><a href="/member/register"><i class="fa fa-user-plus" aria-hidden="true"></i>회원가입</a></li>
					</ul>
				</li>
				<li class="menu_item"><a href="/">메인으로</a></li>
				<li class="menu_item"><a href="/product/product_list">shop</a></li>
			</ul>
		</div>
	</div>
						<div class="container">
		<div style="padding-right:20px; padding-left:20px; padding-bottom:10px; padding-top:100px;">
			<h2>게시글 작성</h2>
			<form  method="post" id="frm">
			<input type="hidden" id="mb_id" name="mb_id"
								value='<c:out value="${sessionScope.members.mb_id}"></c:out>'>
				<!-- 제목입력 -->
				<input type="text" name="article_title" class="form-control mt-4 mb-2" placeholder="제목을 입력해주세요." style="color:black;" required>
				<!-- 내용입력 -->
				<div class="form-group">
					<textarea class="form-control" rows="10" name="article_content" placeholder="내용을 입력해주세요" style="color:black;" required></textarea>
				</div>
				<!-- 이미지만 첨부 가능 기능, 이미지 여러장 첨부가능 기능 -->
				<!-- 
				<div align="left" class="mt-2 mb-2" style="width:100%; border:1px solid #ced4da; border-radius:0.25em;">
					<form action="action" method="post" enctype="multipart/form-data">
						<input multiple="multiple" type="file" name="filename[]" accept="image/*">
					</form>
				</div>
				 -->
						<!-- 등록버튼 -->
						<div class="d-flex justify-content-end">
							<button type="button" class="btn btn-success mb-3" value="Submit"
								onclick="goInsert()">등록</button>
							<button class="btn btn-success mb-3">
								<a href="board_list"> 뒤로 </a>
							</button>
						</div>


					</form>
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