<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="ko">
<head>
<title>회원가입</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="Colo Shop Template">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="../../../resources/styles/bootstrap4/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="../../../resources/plugins/font-awesome-4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="../../../resources/plugins/OwlCarousel2-2.2.1/owl.carousel.css">
<link rel="stylesheet" type="text/css" href="../../../resources/plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
<link rel="stylesheet" type="text/css" href="../../../resources/plugins/OwlCarousel2-2.2.1/animate.css">
<link rel="stylesheet" href="../../../resources/plugins/themify-icons/themify-icons.css">
<link rel="stylesheet" type="text/css" href="../../../resources/plugins/jquery-ui-1.12.1.custom/jquery-ui.css">
<link rel="stylesheet" type="text/css" href="../../../resources/styles/contact_styles.css">
<link rel="stylesheet" type="text/css" href="../../../resources/styles/contact_responsive.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/icheck-bootstrap@3.0.1/icheck-bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-material-design/0.5.10/css/ripples.min.css"/>
<link rel="stylesheet" href="../../../resources/styles/bootstrap-material-datetimepicker.css" />
<link rel='stylesheet' type='text/css' href='http://fonts.googleapis.com/css?family=Roboto:400,500'>
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">


<script src="../../../resources/plugins/Isotope/isotope.pkgd.min.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&key=AIzaSyCIwF204lFZg1y4kPSIhKaHEXMLYxxuMhA"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js"></script>

<script src="https://code.jquery.com/jquery-1.12.3.min.js" integrity="sha256-aaODHAgvwQW1bFOGXMeX+pC4PZIPsvn2h1sArYOhgXQ=" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-material-design/0.5.10/js/ripples.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-material-design/0.5.10/js/material.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/moment-with-locales.min.js"></script>
<script src="../../../resources/js/bootstrap-material-datetimepicker.js"></script>

    <style>
        /* .help-block 을 일단 보이지 않게 설정 */
        #myForm .help-block{
            display: none;
        }
        /* glyphicon 을 일단 보이지 않게 설정 */
        #myForm .glyphicon{
            display: none;
        }
    </style>

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
							<a href="../">SUN<span>POWER</span></a>
						</div>
						<nav class="navbar">
							<ul class="navbar_menu">
								<li><a href="../">home</a></li>
								<li><a href="/product/product_list">shop</a></li>
								<li><a href="#">promotion</a></li>
								<li><a href="#">pages</a></li>
								<li><a href="https://section.blog.naver.com/BlogHome.naver?directoryNo=0&currentPage=1&groupId=0">blog</a></li>
								<li><a href="contact.html">contact</a></li>
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

	<div class="fs_menu_overlay"></div>
	
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

	<div class="container contact_container">
		<div class="container" style="width: 750px;">
			<div class="row">
				<div class="col">
					<!-- Breadcrumbs -->
					<div class="breadcrumbs" style="margin-bottom: 10px;"></div>
					<h3 style="margin-bottom: 20px;">태양</h3>
				</div>
			</div>
			<form action="register" method="post" id="myForm">
				<form action="/action_page.php" class="was-validated">
				
					<div class="container" style="padding: 10px; padding-left:100px">
						<label class="control-label" for="id">아이디</label>
						<input class="form-control" type="text" style="width:230px;" placeholder="아이디를 입력하세요." name="mb_id" id="mb_id" required>
						<span id="overlapErr" class="help-block"><p style="color:red;">사용할 수 없는 아이디 입니다.</p></span>
						<span class="glyphicon glyphicon-ok form-control-feedback"></span>
					</div>
					
					<div class="container" style="padding: 10px; padding-left:100px">
						<label class="control-label" for="pwd">비밀번호</label>
						<input class="form-control" type="password" style="width:230px;" placeholder="비밀번호를 입력하세요." name="mb_pwd" id="pwd" required>
						<span id="pwdRegErr" class="help-block"><p style="color:red;">8글자 이상 입력해 주세요.</p></span>
						<span class="glyphicon glyphicon-ok form-control-feedback"></span>
					</div>
					
					<div class="container" style="padding: 10px; padding-left:100px">
						<label class="control-label" for="rePwd">비밀번호 재확인</label>
						<input class="form-control" type="password" style="width:230px;" placeholder="비밀번호를 입력하세요."name="rePwd" id="rePwd" required>
						<span id="rePwdErr" class="help-block"><p style="color:red;">비밀번호와 일치하지 않습니다. 다시 입력해 주세요.</p></span>
						<span class="glyphicon glyphicon-ok form-control-feedback"></span>
					</div>
					
					<div class="container" style="padding: 10px; padding-left:100px">
						<label for="uname" class="form-label">이름</label>
						<input type="text" class="form-control" style="width:230px;" placeholder="이름을 입력하세요." name="mb_name" id="uname" required>
					</div>
					
					
					<div class="container" style="padding: 10px; padding-left:100px">
						<div><strong>성별</strong></div>
						<div class="radio icheck-peterriver" style="float: left; width: 33%;">
							<input type="radio" id="man" name="gender" value="M" required>
							<label for="man"><strong>남자</strong></label>
						</div>
						<div class="radio icheck-danger" style="float: left; width: 33%;">
							<input type="radio" id="woman" name="gender" value="W" required>
							<label for="woman"><strong>여자</strong></label>
						</div>
					</div>
					
					<div class="container" style="padding: 10px; padding-left:100px">
						<label class="control-label" for="birth">생년월일</label>
						<input type="text" id="date" name="mb_birth" class="form-control" placeholder="yyyy-mm-dd" data-dtp="dtp_e544G" style="width:110px;" required>
						<label for="date" class="control-label"></label>
					</div> 
					
					<div class="container" style="padding: 10px;">
						
						
						<div class="radio icheck-peterriver" style="float: left; width: 33%; padding-left:50px">
							<button class="btn btn-danger" type="button" onclick="goBack()" style="float: left; width: 100px;">뒤로가기</button>
						</div>
						<div class="radio icheck-danger" style="float: left; width: 33%; padding-left:150px">
							<button class="btn btn-success" type="submit" style="float: left; width: 100px ;">회원가입</button>
						</div>
					</div>
				</form>
			</form>
		</div>
	
	
	<!-- 스크립트 -->

    <script>
        //아이디 입력란에 keyup 이벤트가 일어 났을때 실행할 함수 등록 
        $("#mb_id").keyup(function(){
            //입력한 문자열을 읽어온다.
            var id=$(this).val();
            //ajax 요청을 해서 서버에 전송한다. (아이디 중복확인)
            $.ajax({
                method:"post",
                url:"/member/idCheck",
                data:{"mb_id" : id},
                success:function(data){
                	var string1 = JSON.stringify(data);
                    var obj=JSON.parse(string1);
                    if(obj.canUse){//사용 가능한 아이디 라면 
                        $("#overlapErr").hide();
                        // 성공한 상태로 바꾸는 함수 호출
                        successState("#id");
                        
                    }else{//사용 가능한 아이디가 아니라면 
                        $("#overlapErr").show();
                        errorState("#id");
                    }
                }
            });
        });
        $("#pwd").keyup(function(){
            var pwd=$(this).val();
            // 비밀번호 검증할 정규 표현식
            var reg=/^.{8,}$/;
            if(reg.test(pwd)){//정규표현식을 통과 한다면
                        $("#pwdRegErr").hide();
                        successState("#pwd");
            }else{//정규표현식을 통과하지 못하면
                        $("#pwdRegErr").show();
                        errorState("#pwd");
            }
        });
        $("#rePwd").keyup(function(){
            var rePwd=$(this).val();
            var pwd=$("#pwd").val();
            // 비밀번호 같은지 확인
            if(rePwd==pwd){//비밀번호 같다면
                $("#rePwdErr").hide();
                successState("#rePwd");
            }else{//비밀번호 다르다면
                $("#rePwdErr").show();
                errorState("#rePwd");
            }
        });
        $("#email").keyup(function(){
            var email=$(this).val();
            // 이메일 검증할 정규 표현식
            var reg=/^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
            if(reg.test(email)){//정규표현식을 통과 한다면
                        $("#emailErr").hide();
                        successState("#email");
            }else{//정규표현식을 통과하지 못하면
                        $("#emailErr").show();
                        errorState("#email");
            }
        });
        // 성공 상태로 바꾸는 함수
        function successState(sel){
            $(sel)
            .parent()
            .removeClass("has-error")
            .addClass("has-success")
            .find(".glyphicon")
            .removeClass("glyphicon-remove")
            .addClass("glyphicon-ok")
            .show();
     
            $("#myForm button[type=submit]")
                        .removeAttr("disabled");
        };
        // 에러 상태로 바꾸는 함수
        function errorState(sel){
            $(sel)
            .parent()
            .removeClass("has-success")
            .addClass("has-error")
            .find(".glyphicon")
            .removeClass("glyphicon-ok")
            .addClass("glyphicon-remove")
            .show();
     
            $("#myForm button[type=submit]")
                        .attr("disabled","disabled");
        };
		// 뒤로가는 함수
		function goBack() {
		window.history.back();
		}
    </script>

	<!-- 생년월일 js -->
	<script type="text/javascript">
		$(document).ready(function()
		{
			$('#date').bootstrapMaterialDatePicker
			({
				time: false,
				clearButton: true
			});

			$('#time').bootstrapMaterialDatePicker
			({
				date: false,
				shortTime: false,
				format: 'HH:mm'
			});

			$('#date-format').bootstrapMaterialDatePicker
			({
				format: 'dddd DD MMMM YYYY - HH:mm'
			});
			$('#date-fr').bootstrapMaterialDatePicker
			({
				format: 'DD/MM/YYYY HH:mm',
				lang: 'fr',
				weekStart: 1, 
				cancelText : 'ANNULER',
				nowButton : true,
				switchOnClick : true
			});

			$('#date-end').bootstrapMaterialDatePicker
			({
				weekStart: 0, format: 'DD/MM/YYYY HH:mm'
			});
			$('#date-start').bootstrapMaterialDatePicker
			({
				weekStart: 0, format: 'DD/MM/YYYY HH:mm', shortTime : true
			}).on('change', function(e, date)
			{
				$('#date-end').bootstrapMaterialDatePicker('setMinDate', date);
			});

			$('#min-date').bootstrapMaterialDatePicker({ format : 'DD/MM/YYYY HH:mm', minDate : new Date() });

			$.material.init()
		});
		</script>



	<!-- Footer -->
	<footer>
		<div class="row">
			<div class="col-lg-12">
				<div class="footer_nav_container">
					<div class="cr text-center">Copyright 2021. 태양광발전소 all rights reserved.</div>
				</div>
			</div>
		</div>
	</footer>
</div>
</body>
</html>