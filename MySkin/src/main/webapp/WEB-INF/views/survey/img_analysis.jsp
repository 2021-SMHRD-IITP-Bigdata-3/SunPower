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
<script src="${cpath}/resources/js/jquery-3.2.1.min.js"></script>
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
			<h3 style="margin-bottom: 50px; font-size:25px"> ${members.mb_id} <br> 피부를 분석해드립니다.</h3>
		</div>
		<h1 style="font-size:17px; text-align:center; margin-bottom:30px;"> <strong>또한 여드름관리에 좋은 화장품도 추천해드려요!</strong></h1>
		<form id="myform" method="POST" enctype="multipart/form-data">
          <div class ="img" align="center">
          	<div id="image_preview">
           		<%-- <img id="thumbnailImg" src="<value is too large to edit>" style ="height: 300px; width: 300px;"> --%>
           		<img src="../resources/images/show.png" style="max-width:90%">
           	</div>
            <br><br>
            <div class="f_box">
                <label for="img"><button>사진변경</button></label>
                <br>
      			<input type="file" id="img"  name="bf_file[]" accept="image/*">	
            </div>
          </div>
         </form>
		

		
		<div align="center">
				<div class="radio icheck-danger" style="margin:20px;">
				<button class="btn btn-success" id="flask" style="width:100%; height:60px; background-color: #fe4c50; border-color: #fe4c50;" type="submit" ><strong>내 피부 분석하기!</strong><br><a style="font-size:13px">분석중에는 다소 시간이 걸릴 수 있습니다.</a></button>
			</div>
		</div>	
		
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/exif-js"></script>
<script type="text/javascript">
	
    // 플라스크 데이터 보네고 받는 부분
 
    $(document).ready(function(){
    	//alert("사진을 입력해주세요.");
    
    	$('#flask').on('click',function(){
    		var formData = new FormData();
    		file = document.querySelector('input[type="file"]').files[0];
    		formData.append("file",file);
        	/* console.log('플라스크 버튼 누름');
        	file = document.querySelector('input[type="file"]').files[0];
        	formData.append("file", file);
        	alert(typeof(file));
        	console.log(file); */
        	$.ajax({
	       		crossOrigin : true,
                url : 'http://edusmhrd3.ddns.net:8849/img_file', //데이터를 주고 받을 파일 주소 !!!
                type:'POST', //데이터 전송 타입
                data : formData, //보내는 데이터
                contentType: false, // 
        		processData: false, //
                dataType : 'JSON', // 보낸 데이터를 받기,     
                success: function(result){
                	var res = Math.round(result['result']);
                	//alert("당신의 결과는 "+ res); // 작업이 성공적으로 발생했을 경우
                	location.href="${cpath}/survey/img_analysis_result?result="+res+"&st_id=${members.st_id}&mb_id=${members.mb_id}";
                },
                
        		error : function(){
        			alert('이미지를 선택해주세요!') // 에러가 났을 경우 실행시킬 코드
        		},
        		
        	});
            
        });
    
    });
	</script>

         
       	<script type="text/javascript">
     // 이미지 업로드
        $('#img').on('change', function() {
        ext = $(this).val().split('.').pop().toLowerCase(); //확장자
        //배열에 추출한 확장자가 존재하는지 체크
        if($.inArray(ext, ['gif', 'png', 'jpg', 'jpeg']) == -1) {
            /* resetFormElement($(this));  *///폼 초기화
            window.alert('이미지 파일이 아닙니다! (gif, png, jpg, jpeg 만 업로드 가능)');
        } else {
            file = $('#img').prop("files")[0];
            blobURL = window.URL.createObjectURL(file);
            $('#image_preview img').attr('src', blobURL);
            $('#image_preview').slideDown(); //업로드한 이미지 미리보기 
            $(this).hide(); //파일 양식 감춤
        }
        });
        </script> 
		
		
		
		<!-- Footer -->
	<footer>
		<div style="width:auto; margin-top:160px">
				<div style="text-align:center; margin:">Copyright 2021. 태양광발전소 all rights reserved.</div>
		</div>
	</footer>

</div>


<script src="${cpath}/resources/styles/bootstrap4/popper.js"></script>
<script src="${cpath}/resources/styles/bootstrap4/bootstrap.min.js"></script>
<script src="${cpath}/resources/plugins/Isotope/isotope.pkgd.min.js"></script>
<script src="${cpath}/resources/plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
<script src="${cpath}/resources/plugins/easing/easing.js"></script>
<script src="${cpath}/resources/plugins/jquery-ui-1.12.1.custom/jquery-ui.js"></script>
<script src="${cpath}/resources/js/categories_custom.js"></script>
</body>

</html>
