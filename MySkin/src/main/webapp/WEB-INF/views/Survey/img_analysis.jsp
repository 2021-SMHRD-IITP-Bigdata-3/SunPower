<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var='cpath' value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="ko">
<head>
<title>이미지 피부진단</title>
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
							<a href="../"><img src="../resources/logo/image02.png" width="150" height="60" ></a>
						</div>
						<nav class="navbar">
							<ul class="navbar_menu">
								<li><a href="../">home</a></li>
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
				<li class="menu_item"><a href="survey/survey">피부타입 재검사</a></li>
				<li class="menu_item"><a href="board/board_list">피부게시판</a></li>
				<li class="menu_item"><a href="product/product_list">상품목록</a></li>
			</ul>
		</div>
	</div>
		<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/exif-js"></script>
		<script type="text/javascript">
    	function uploadImgPreview() {

        // 업로드 파일 읽기
        const fileInfo = document.getElementById( "uploadFile" ).files[0];
        const reader = new FileReader();

        // readAsDataURL( )을 통해 파일을 읽어 들일때 onload가 실행
        reader.onload = function() {

            EXIF.getData(fileInfo, () => {
                
                const tags = EXIF.getAllTags( fileInfo );

                // 객체 내용 확인하기
                console.dir(tags);

                // 메타데이터 값 얻기
                console.log(tags.Artist);
                console.log(tags.Orientation);

                // 모든 키와 해당 키의 값 얻기
                for( let key in tags ) {
                    console.log(key);
                    console.log(tags[key]);
                }
            });

            // 파일의 URL을 Base64 형태로 가져온다.
            document.getElementById("thumbnailImg").src = reader.result;
        };

        if( fileInfo ) {

            // readAsDataURL( )을 통해 파일의 URL을 읽어온다.
            reader.readAsDataURL( fileInfo );
        }
    }
    function payment(){
      $.ajax({
          url : "",
          type:"post",
          data : "",
          success : 연결하세요,
          error : function() {alart("error");}

      });
    }
   
</script>

</head>
	<div class="contact_container" style="width:auto; margin-top:50px;">
		<div class="container" style="text-align:center">
			<!-- breadcrumbs = 상단여백, 줄 넣기 -->
			<div class="breadcrumbs" style="margin-bottom: 30px;"></div>
			<h3 style="margin-bottom: 50px; font-size:25px">남준성 님의<br> 피부를 분석해드립니다.</h3>
		</div>
		<h1 style="font-size:17px; text-align:center; margin-bottom:30px;"> <strong>또한 여드름관리에 좋은 화장품도 추천해드려요!</strong></h1>
		
		<div align="center">
				<div align="center">
					<img id="thumbnailImg" src="" width="350" style="margin-left: auto; margin-right: auto; display: block;">
					<input type="file" static="bottom" id="uploadFile" name="uploadFile" onChange="uploadImgPreview();" accept="image/*">
				</div>
				<div class="radio icheck-danger" style="margin:20px;">
				<button class="btn btn-success" style="width:100%; height:60px; background-color: #fe4c50; border-color: #fe4c50;" type="submit" ><strong>내 피부 분석하기!</strong><br><a style="font-size:13px">분석중에는 다소 시간이 걸릴 수 있습니다.</a></button>
			</div>
		</div>	
		<!-- Footer -->
	<footer>
		<div style="width:auto; margin-top:160px">
				<div style="text-align:center; margin:">Copyright 2021. 태양광발전소 all rights reserved.</div>
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
<script src="../resources/js/categories_custom.js"></script>
</body>

</html>
