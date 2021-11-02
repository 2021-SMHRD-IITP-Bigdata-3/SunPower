<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var='cpath' value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="ko">
<head>
<title>게시판</title>
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
<link rel="stylesheet" href="../resources/plugins/themify-icons/themify-icons.css">
<link rel="stylesheet" type="text/css"
	href="../resources/plugins/jquery-ui-1.12.1.custom/jquery-ui.css">
<link rel="stylesheet" type="text/css" href="../resources/styles/single_styles.css">
<link rel="stylesheet" type="text/css"
	href="../resources/styles/single_responsive.css">
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
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
  src="https://code.jquery.com/jquery-3.6.0.js"
  integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
  crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/gh/alpinejs/alpine@v2.x.x/dist/alpine.min.js"
	defer></script>
<script type="text/javascript">
function goForm(){
	 // 글쓰기 화면좀 보여주세요라고 POJO로 요청
	 location.href="${cpath}/board/boardInsertForm.do"; //?->/web(Context path)
 }
  function goContent(index){
	  var article_SEQ=$("#article_SEQ"+index).text();
	  var contents=$("#content"+index).val();
	  $.ajax({ 
		  url : "${cpath}/boardContent.do",
		  type : "post",
		  data : {  "article_SEQ":article_SEQ,"contents":contents},
		  success : loadJson,
		  error : function(){alert("error");}
		  
	  });  
  }

  function selChange() {
		var sel = 5;
			//document.getElementById('cntPerPage').value;
			location.href="board_list?nowPage=${paging.nowPage}&cntPerPage="+sel;

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

		<div
			style="padding-right: 20px; padding-left: 20px; padding-bottom: 10px; padding-top: 100px;">
			<div class="row">
				<div class="col">
					<!-- Breadcrumbs -->
					<div class="breadcrumbs d-flex flex-row align-items-center"
						style="margin-bottom: 15px;">
						<ul>
							<li><a href="/">Home</a></li>
							<li class="active"><a href="#"><i
									class="fa fa-angle-right" aria-hidden="true"></i>게시판</a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="row">
				<div style="width: 100%; padding: 0 15px;">
					<div class="product_details" style="margin-top: 0px;">
						<div class="product_details_title">
							<h2>자유게시판</h2>
						</div>
					 <!-- 
						<div style="float: right;">
		<select id="cntPerPage" name="sel" onchange="selChange()">
			<option value="5"
				<c:if test="${paging.cntPerPage == 5}">selected</c:if>>5줄 보기</option>
			<option value="10"
				<c:if test="${paging.cntPerPage == 10}">selected</c:if>>10줄 보기</option>
			<option value="15"
				<c:if test="${paging.cntPerPage == 15}">selected</c:if>>15줄 보기</option>
			<option value="20"
				<c:if test="${paging.cntPerPage == 20}">selected</c:if>>20줄 보기</option>
		</select>
	</div>
	 -->
						
						<table class="table table-hover"
							style="text-align: center; border: 1; border-bottom: solid 1px #ebebeb; table-layout: fixed;">
							<thead>
								<tr>
									<th scope="col" style="padding: 2px; width: 10%;">번호</th>
									<!-- <th scope="col" style="padding:2px; width:15%;"></th> -->
									<th scope="col" style="padding: 2px; width: 60%;">제목</th>
									<th scope="col" style="padding: 2px; width: 15%;"><strong>작성자</strong></th>
								</tr>
							</thead>
								<c:set value="1" var="listNum"/>
								<c:forEach items="${list}" var="list">
								<tbody>
								<!-- ${list.article_seq } -->
									<tr>
										<th scope="row"
											style="display: table-cell; vertical-align: middle; padding: 2px;">${listNum}</th>
										<td
											style="text-align: left; display: table-cell; vertical-align: middle; padding: 0 7px; white-space: nowrap; text-overflow: ellipsis; overflow: hidden;">
											<a href='boardContent?article_SEQ=${list.article_seq}'>${list.article_title }</a>
										</td>
										<td style="display: table-cell; vertical-align: middle; padding: 2px; white-space: nowrap; text-overflow: ellipsis; overflow: hidden;">${list.mb_id }</td>
									</tr>
								
							</tbody>
								<c:set value="${listNum + 1 }" var="listNum"/>
							</c:forEach>
						</table>
					</div>
				</div>
			</div>
		</div>
		<div class="d-flex flex-column"
			style="margin-top: 20px; border-top: solid 1px #ebebeb;">
			<!-- 페이지 -->
		</div>
		
		<div class="d-flex justify-content-end" style="margin: 10px 30px 0 0">
		<c:if test="${sessionScope.members.mb_id != null}">
			<button class="red_button review_submit_btn"
				style="float: right; width: 60px; height: 30px" onclick="goForm()">글쓰기</button>
				</c:if>
		</div>	
		<div style="display: block; text-align: center;">		
		<c:if test="${paging.startPage != 1 }">
			<a href="board/board_list?nowPage=${paging.startPage - 1 }&cntPerPage=${paging.cntPerPage}">&lt;</a>
		</c:if>
		<c:forEach begin="${paging.startPage }" end="${paging.endPage }" var="p">
			<c:choose>
				<c:when test="${p == paging.nowPage }">
					<b>${p }</b>
				</c:when>
				<c:when test="${p != paging.nowPage }">
					<a href="board_list?nowPage=${p }&cntPerPage=${paging.cntPerPage}">${p }</a>
				</c:when>
			</c:choose>
		</c:forEach>
		<c:if test="${paging.endPage != paging.lastPage}">
			<a href="board_list?nowPage=${paging.endPage+1 }&cntPerPage=${paging.cntPerPage}">&gt;</a>
		</c:if>
	</div>
		<!-- 
						<ul class="pagination justify-content-center" style="margin-top:20px;">
		<li><a class="page-btn" href="#">이전</a></li>
		<li class="page-list active"><a class="page-num" href="#">1</a></li>
		<li class="page-list"><a class="page-num" href="#">2</a></li>
		<li class="page-list"><a class="page-num" href="#">3</a></li>
		<li class="page-list"><a class="page-num" href="#">4</a></li>
		<li class="page-list"><a class="page-num" href="#">5</a></li>
		<li><a class="page-btn" href="#">다음</a></li>
	</ul>
					
					 -->

		<!-- Newsletter -->
		<div class="newsletter">
			<div class="container">
				<div class="row">
					<div class="col-lg-6">
						<div
							class="newsletter_text d-flex flex-column justify-content-center align-items-lg-start align-items-md-center text-center">
							<h4>SNS 공유하기</h4>
							<p>화분이 저렴한 가격을 유지할 수 있도록 홍보해주세요!</p>
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
						<div
							class="footer_nav_container d-flex flex-sm-row flex-column align-items-center justify-content-lg-start justify-content-center text-center">
							<ul class="footer_nav">
								<li><a href="https://m.blog.naver.com/Recommendation.naver">블로그
										홍보</a></li>
								<li><a href="#">자주하는 질문</a></li>
							</ul>
						</div>
					</div>
					<div class="col-lg-6">
						<div
							class="footer_social d-flex flex-row align-items-center justify-content-lg-end justify-content-center">
							<ul>
								<li><a href="https://www.facebook.com/"><i
										class="fa fa-facebook" aria-hidden="true"></i></a></li>
								<li><a href="https://twitter.com/"><i
										class="fa fa-twitter" aria-hidden="true"></i></a></li>
								<li><a href="https://www.instagram.com/"><i
										class="fa fa-instagram" aria-hidden="true"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-12">
						<div class="footer_nav_container" style="margin-top: 10px;">
							<div class="cr"
								style="font-size: 10px; text-align: center; margin-right: 0px;">
								본사에 등록된 모든 광고와 저작권 및 법적책임은<br>자료제공사에게 있으므로 본사는 광고에 대한 책임을
								지지 않습니다.
							</div>
							<div class="cr text-center" style="margin-right: 0px;">Copyright
								2021. 태양광발전소 all rights reserved.</div>
						</div>
					</div>
				</div>
			</div>
		</footer>
	</div>
	<script src="../resources/js/jquery-3.2.1.min.js"></script>
	<!--  <script src="../resources/styles/bootstrap4/popper.js"></script>
	<script src="../resources/styles/bootstrap4/bootstrap.min.js"></script>-->
	<script src="../resources/plugins/Isotope/isotope.pkgd.min.js"></script>
	<script src="../resources/plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
	<script src="../resources/plugins/easing/easing.js"></script>
	<script src="../resources/plugins/jquery-ui-1.12.1.custom/jquery-ui.js"></script>
	<script src="../resources/js/single_custom.js"></script>
</body>
</html>