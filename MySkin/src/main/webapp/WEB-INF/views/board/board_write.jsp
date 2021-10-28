<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var='cpath' value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html :class="{ 'theme-dark': dark }" x-data="data()" lang="ko">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>VarChar규팀 열정!</title>
<link
	href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap"
	rel="stylesheet" />
<link rel="stylesheet" href="../resources/css/tailwind.output.css" />
<script
  src="https://code.jquery.com/jquery-3.6.0.js"
  integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
  crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/gh/alpinejs/alpine@v2.x.x/dist/alpine.min.js"
	defer></script>
	
<script src="../resources/js/init-alpine.js"></script>
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

	function goForm(){
	
  		location.href="/board/board_list";
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
	<div class="flexd h-screen bg-gray-50 dark:bg-gray-900"
		:class="{ 'overflow-hidden': isSideMenuOpen }">
		<!-- 웹 버전 사이드 바 -->
		<aside
			class="z-20 hidden w-64 overflow-y-auto bg-white dark:bg-gray-800 md:block flex-shrink-0 where">
			<div class="py-4 text-gray-500 dark:text-gray-400">
				<a class="ml-6 text-lg font-bold text-gray-800 dark:text-gray-200">
				</a>
				<ul class="mt-6">
					<c:if test="${sessionScope.members.mb_id != null}">
						<li class="relative px-6 py-3"><span
							class="absolute inset-y-0 left-0 w-1 bg-purple-600 rounded-tr-lg rounded-br-lg"
							aria-hidden="true"></span> <a
							class="inline-flex items-center w-full text-sm font-semibold text-gray-800 transition-colors duration-150 hover:text-gray-800 dark:hover:text-gray-200 dark:text-gray-100"
							href="index.jsp"> <svg class="w-5 h-5" aria-hidden="true"
									fill="none" stroke-linecap="round" stroke-linejoin="round"
									stroke-width="2" viewBox="0 0 24 24" stroke="currentColor">
                  <path
										d="M3 12l2-2m0 0l7-7 7 7M5 10v10a1 1 0 001 1h3m10-11l2 2m-2-2v10a1 1 0 01-1 1h-3m-6 0a1 1 0 001-1v-4a1 1 0 011-1h2a1 1 0 011 1v4a1 1 0 001 1m-6 0h6"></path>
                </svg> <span class="ml-4">프로필</span>
						</a> <a
							class="inline-flex items-center w-full text-sm font-semibold text-gray-800 transition-colors duration-150 hover:text-gray-800 dark:hover:text-gray-200 dark:text-gray-100">
								<img class="object-cover w-8 h-8 rounded-full"
								src="https://pbs.twimg.com/media/EQdD_-jUcAAJylD.jpg"
								aria-hidden="true" /> <span class="ml-4">${sessionScope.members.mb_name}님</span>
						</a> <a
							class="inline-flex items-center w-full px-2 py-1 text-sm font-semibold transition-colors duration-150 rounded-md hover:bg-gray-100 hover:text-gray-800 dark:hover:bg-gray-800 dark:hover:text-gray-200"
							href="#"> <svg class="w-4 h-4 mr-3" aria-hidden="true"
									fill="none" stroke-linecap="round" stroke-linejoin="round"
									stroke-width="2" viewBox="0 0 24 24" stroke="currentColor">
                          <path
										d="M16 7a4 4 0 11-8 0 4 4 0 018 0zM12 14a7 7 0 00-7 7h14a7 7 0 00-7-7z"></path>
                        </svg> <span>내 정보</span>
						</a> <a
							class="inline-flex items-center w-full px-2 py-1 text-sm font-semibold transition-colors duration-150 rounded-md hover:bg-gray-100 hover:text-gray-800 dark:hover:bg-gray-800 dark:hover:text-gray-200"
							href="LogoutServiceCon"> <svg class="w-4 h-4 mr-3"
									aria-hidden="true" fill="none" stroke-linecap="round"
									stroke-linejoin="round" stroke-width="2" viewBox="0 0 24 24"
									stroke="currentColor">
                          <path
										d="M11 16l-4-4m0 0l4-4m-4 4h14m-5 4v1a3 3 0 01-3 3H6a3 3 0 01-3-3V7a3 3 0 013-3h7a3 3 0 013 3v1"></path>
                        </svg> <span>로그아웃</span>
						</a></li>

					</c:if>
				</ul>
				<ul>
					<li class="relative px-6 py-3"><a
						class="inline-flex items-center w-full text-sm font-semibold transition-colors duration-150 hover:text-gray-800 dark:hover:text-gray-200"
						href="buttons.html"> <svg class="w-5 h-5" aria-hidden="true"
								fill="none" stroke-linecap="round" stroke-linejoin="round"
								stroke-width="2" viewBox="0 0 24 24" stroke="currentColor">
                  <path
									d="M15 15l-2 5L9 9l11 4-5 2zm0 0l5 5M7.188 2.239l.777 2.897M5.136 7.965l-2.898-.777M13.95 4.05l-2.122 2.122m-5.657 5.656l-2.12 2.122"></path>
                </svg> <span class="ml-4">상품 보기</span>
					</a></li>

					<li class="relative px-6 py-3"><a
						class="inline-flex items-center w-full text-sm font-semibold transition-colors duration-150">
							<svg class="w-5 h-5" aria-hidden="true" fill="none"
								stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
								viewBox="0 0 24 24" stroke="currentColor">
                  <path
									d="M9 5H7a2 2 0 00-2 2v12a2 2 0 002 2h10a2 2 0 002-2V7a2 2 0 00-2-2h-2M9 5a2 2 0 002 2h2a2 2 0 002-2M9 5a2 2 0 012-2h2a2 2 0 012 2m-3 7h3m-3 4h3m-6-4h.01M9 16h.01"></path>
                </svg> <span class="ml-4">게시판</span>
					</a></li>

					<li class="relative px-6 py-3"><a
						class="inline-flex items-center w-full text-sm font-semibold transition-colors duration-150"
						href="survey.jsp"> <svg class="w-5 h-5" aria-hidden="true"
								fill="none" stroke-linecap="round" stroke-linejoin="round"
								stroke-width="2" viewBox="0 0 24 24" stroke="currentColor">
                  <path d="M11 3.055A9.001 9.001 0 1020.945 13H11V3.055z"></path>
                  <path d="M20.488 9H15V3.512A9.025 9.025 0 0120.488 9z"></path>
                </svg> <span class="ml-4">설문조사</span>
					</a></li>


					<li class="relative px-6 py-3"><c:if
							test="${sessionScope.members.mb_id == null}">
							<!-- 로그인 회원가입 버튼 -->
							<div class="px-6 my-6">
								<a
									class="flex items-center justify-between w-full px-4 py-2 text-sm font-medium leading-5 text-white transition-colors duration-150 bg-purple-600 border border-transparent rounded-lg active:bg-purple-600 hover:bg-purple-700 focus:outline-none focus:shadow-outline-purple"
									href="login.jsp"> <strong>로그인</strong> <span class="ml-2"
									aria-hidden="true">→</span>
								</a>
							</div>
							<div class="px-6 my-6">
								<a
									class="flex items-center justify-between w-full px-4 py-2 text-sm font-medium leading-5 text-white transition-colors duration-150 bg-purple-600 border border-transparent rounded-lg active:bg-purple-600 hover:bg-purple-700 focus:outline-none focus:shadow-outline-purple"
									href="create-account.jsp"> <strong>회원가입</strong> <span
									class="ml-2" aria-hidden="true">+</span>
								</a>
							</div>
						</c:if></li>
				</ul>
				<!-- 로그인 회원가입 버튼 끝 -->
			</div>

		</aside>
		<!-- Mobile sidebar -->
		<!-- Backdrop -->
		<div x-show="isSideMenuOpen"
			x-transition:enter="transition ease-in-out duration-150"
			x-transition:enter-start="opacity-0"
			x-transition:enter-end="opacity-100"
			x-transition:leave="transition ease-in-out duration-150"
			x-transition:leave-start="opacity-100"
			x-transition:leave-end="opacity-0"
			class="fixed inset-0 z-10 flex items-end bg-black bg-opacity-50 sm:items-center sm:justify-center"></div>
		<aside
			class="fixed inset-y-0 z-20 flex-shrink-0 w-64 mt-16 overflow-y-auto bg-white dark:bg-gray-800 md:hidden"
			x-show="isSideMenuOpen"
			x-transition:enter="transition ease-in-out duration-150"
			x-transition:enter-start="opacity-0 transform -translate-x-20"
			x-transition:enter-end="opacity-100"
			x-transition:leave="transition ease-in-out duration-150"
			x-transition:leave-start="opacity-100"
			x-transition:leave-end="opacity-0 transform -translate-x-20"
			@click.away="closeSideMenu" @keydown.escape="closeSideMenu">
			<div class="py-4 text-gray-500 dark:text-gray-400">

				<ul class="mt-6">
					<c:if test="${sessionScope.members.mb_id != null}">
						<li class="relative px-6 py-3"><span
							class="absolute inset-y-0 left-0 w-1 bg-purple-600 rounded-tr-lg rounded-br-lg"
							aria-hidden="true"></span> <a
							class="inline-flex items-center w-full text-sm font-semibold text-gray-800 transition-colors duration-150 hover:text-gray-800 dark:hover:text-gray-200 dark:text-gray-100">
								<img class="object-cover w-8 h-8 rounded-full"
								src="https://pbs.twimg.com/media/EQdD_-jUcAAJylD.jpg"
								aria-hidden="true" /> <span class="ml-4">${sessionScope.members.mb_name}
									님</span>
						</a> <a
							class="inline-flex items-center w-full px-2 py-1 text-sm font-semibold transition-colors duration-150 rounded-md hover:bg-gray-100 hover:text-gray-800 dark:hover:bg-gray-800 dark:hover:text-gray-200"
							href="#"> <svg class="w-4 h-4 mr-3" aria-hidden="true"
									fill="none" stroke-linecap="round" stroke-linejoin="round"
									stroke-width="2" viewBox="0 0 24 24" stroke="currentColor">
                          <path
										d="M16 7a4 4 0 11-8 0 4 4 0 018 0zM12 14a7 7 0 00-7 7h14a7 7 0 00-7-7z"></path>
                        </svg> <span>내 정보</span>
						</a> <a
							class="inline-flex items-center w-full px-2 py-1 text-sm font-semibold transition-colors duration-150 rounded-md hover:bg-gray-100 hover:text-gray-800 dark:hover:bg-gray-800 dark:hover:text-gray-200"
							href="LogoutServiceCon"> <svg class="w-4 h-4 mr-3"
									aria-hidden="true" fill="none" stroke-linecap="round"
									stroke-linejoin="round" stroke-width="2" viewBox="0 0 24 24"
									stroke="currentColor">
                          <path
										d="M11 16l-4-4m0 0l4-4m-4 4h14m-5 4v1a3 3 0 01-3 3H6a3 3 0 01-3-3V7a3 3 0 013-3h7a3 3 0 013 3v1"></path>
                        </svg> <span>로그아웃</span>
						</a></li>
					</c:if>
				</ul>
				<ul>

					<li class="relative px-6 py-3"><a
						class="inline-flex items-center w-full text-sm font-semibold transition-colors duration-150 hover:text-gray-800 dark:hover:text-gray-200"
						href="ProductServiceCon"> <svg class="w-5 h-5"
								aria-hidden="true" fill="none" stroke-linecap="round"
								stroke-linejoin="round" stroke-width="2" viewBox="0 0 24 24"
								stroke="currentColor">
                  <path
									d="M15 15l-2 5L9 9l11 4-5 2zm0 0l5 5M7.188 2.239l.777 2.897M5.136 7.965l-2.898-.777M13.95 4.05l-2.122 2.122m-5.657 5.656l-2.12 2.122"></path>
                </svg> <span class="ml-4">상품보기</span>
					</a></li>

					<li class="relative px-6 py-3"><a
						class="inline-flex items-center w-full text-sm font-semibold transition-colors duration-150">
							<svg class="w-5 h-5" aria-hidden="true" fill="none"
								stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
								viewBox="0 0 24 24" stroke="currentColor">
                  <path
									d="M9 5H7a2 2 0 00-2 2v12a2 2 0 002 2h10a2 2 0 002-2V7a2 2 0 00-2-2h-2M9 5a2 2 0 002 2h2a2 2 0 002-2M9 5a2 2 0 012-2h2a2 2 0 012 2m-3 7h3m-3 4h3m-6-4h.01M9 16h.01"></path>
                </svg> <span class="ml-4">게시판</span>
					</a></li>


					<li class="relative px-6 py-3"><a
						class="inline-flex items-center w-full text-sm font-semibold transition-colors duration-150 hover:text-gray-800 dark:hover:text-gray-200"
						href="survey.jsp"> <svg class="w-5 h-5" aria-hidden="true"
								fill="none" stroke-linecap="round" stroke-linejoin="round"
								stroke-width="2" viewBox="0 0 24 24" stroke="currentColor">
                  <path
									d="M11 3.055A9.001 9.001 0 1020.945 13H11V3.055z"></path>
                  <path d="M20.488 9H15V3.512A9.025 9.025 0 0120.488 9z"></path>
                </svg> <span class="ml-4">설문조사</span>
					</a></li>

					<c:if test="${sessionScope.members.mb_id == null}">
						<div class="px-6 my-6">
							<a
								class="flex items-center justify-between px-4 py-2 text-sm font-medium leading-5 text-white transition-colors duration-150 bg-purple-600 border border-transparent rounded-lg active:bg-purple-600 hover:bg-purple-700 focus:outline-none focus:shadow-outline-purple"
								href="login.jsp"> <strong> 로 그 인 </strong> <span
								class="ml-2" aria-hidden="true">→</span>
							</a>
						</div>
						<div class="px-6 my-6">
							<a
								class="flex items-center justify-between px-4 py-2 text-sm font-medium leading-5 text-white transition-colors duration-150 bg-purple-600 border border-transparent rounded-lg active:bg-purple-600 hover:bg-purple-700 focus:outline-none focus:shadow-outline-purple"
								href="create-account.jsp"> <strong>회원가입</strong> <span
								class="ml-2" aria-hidden="true">+</span>
							</a>
						</div>
					</c:if>
			</div>
		</aside>
		<div class="flex flex-col flex-1 w-full">
			<header class="z-10 py-4 bg-white shadow-md dark:bg-gray-800">
				<div
					class="container flex items-center justify-between h-full px-6 mx-auto text-purple-600 dark:text-purple-300">
					<!-- 로고 -->
					<a href="index.jsp"> <img class="object-cover"
						src="../resources/img/logo_main.png" width="150px" alt="logo"
						align="left" />
					</a>
					<ul class="flex items-center flex-shrink-0 space-x-6">
						<!-- 나이트모드 겹치지 않게 칸 맞춤 공간 -->
						<li></li>
						<!-- 나이트모드 버튼 -->
						<li class="flex">
							<button
								class="rounded-md focus:outline-none focus:shadow-outline-purple"
								@click="toggleTheme" aria-label="Toggle color mode">
								<template x-if="!dark">
									<svg class="w-5 h-5" aria-hidden="true" fill="currentColor"
										viewBox="0 0 20 20">
                      <path
											d="M17.293 13.293A8 8 0 016.707 2.707a8.001 8.001 0 1010.586 10.586z"></path>
                    </svg>
								</template>
								<template x-if="dark">
									<svg class="w-5 h-5" aria-hidden="true" fill="currentColor"
										viewBox="0 0 20 20">
                      <path fill-rule="evenodd"
											d="M10 2a1 1 0 011 1v1a1 1 0 11-2 0V3a1 1 0 011-1zm4 8a4 4 0 11-8 0 4 4 0 018 0zm-.464 4.95l.707.707a1 1 0 001.414-1.414l-.707-.707a1 1 0 00-1.414 1.414zm2.12-10.607a1 1 0 010 1.414l-.706.707a1 1 0 11-1.414-1.414l.707-.707a1 1 0 011.414 0zM17 11a1 1 0 100-2h-1a1 1 0 100 2h1zm-7 4a1 1 0 011 1v1a1 1 0 11-2 0v-1a1 1 0 011-1zM5.05 6.464A1 1 0 106.465 5.05l-.708-.707a1 1 0 00-1.414 1.414l.707.707zm1.414 8.486l-.707.707a1 1 0 01-1.414-1.414l.707-.707a1 1 0 011.414 1.414zM4 11a1 1 0 100-2H3a1 1 0 000 2h1z"
											clip-rule="evenodd"></path>
                    </svg>
								</template>
							</button>
						</li>
						<!-- Mobile hamburger -->
						<button
							class="p-1 mr-5 -ml-1 rounded-md md:hidden focus:outline-none focus:shadow-outline-purple"
							@click="toggleSideMenu" aria-label="Menu">
							<svg class="w-6 h-6" aria-hidden="true" fill="currentColor"
								viewBox="0 0 20 20">
                <path fill-rule="evenodd"
									d="M3 5a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1zM3 10a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1zM3 15a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1z"
									clip-rule="evenodd"></path>
              </svg>
						</button>
					</ul>
				</div>
			</header>
			<main class="h-full overflow-y-auto">
				<div class="container px-6 mx-auto grid">
					<form method="post" enctype="multipart/form-data" id="frm">
						<!-- 본문 시작 -->

						<!-- 한 칸 띄어주기 -->
						<div>
							<br>
						</div>

						<!-- 게시글 폼 -->
						<h4
							class="mb-4 text-lg font-semibold text-gray-600 dark:text-gray-300">
							게시글 작성</h4>
						<div
							class="px-4 py-3 mb-8 bg-white rounded-lg shadow-md dark:bg-gray-800">
							<input type="hidden" id="mb_id" name="mb_id" value='<c:out value="${sessionScope.members.mb_id}"></c:out>'>
							<label class="block text-sm"> <span
								class="text-gray-700 dark:text-gray-400" id="article_title">제목</span>
								<input
								class="block w-full mt-1 text-sm dark:border-gray-600 dark:bg-gray-700 focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:text-gray-300 dark:focus:shadow-outline-gray form-input"
								placeholder="제목을 입력하세요" name="article_title" />
							</label> 
							<br> 
							<!-- 
							<label class="block text-sm"> 
							<span class="text-gray-700 dark:text-gray-400" id="board_img">사진첨부</span>
								<div class="relative">
									<input type="file" accept=".gif, .jpg, .png"
										class="block w-full pl-20 mt-1 text-sm dark:text-gray-300 dark:border-gray-600 dark:bg-gray-700 focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:focus:shadow-outline-gray form-input"
										name="fileName" />
								</div>
							</label>
							 --> 
							<label class="block mt-4 text-sm"> <span
								class="text-gray-700 dark:text-gray-400" id="article_content">내용</span>
								<textarea
									class="block w-full mt-1 text-sm dark:text-gray-300 dark:border-gray-600 dark:bg-gray-700 form-textarea focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:focus:shadow-outline-gray"
									rows="3" placeholder="내용을 입력하세요"
									style="margin-top: 4px; margin-bottom: 0px; height: 315px;"
									name="article_content"></textarea>
							</label>

						</div>
						<input type="submit"
							class="px-4 py-2 text-sm font-medium leading-5 text-white transition-colors duration-150 bg-purple-600 border border-transparent rounded-lg active:bg-purple-600 hover:bg-purple-700 focus:outline-none focus:shadow-outline-purple"
							value="등록" onclick="goInsert()">
						<button
							class="px-4 py-2 text-sm font-medium leading-5 text-white transition-colors duration-150 bg-purple-600 border border-transparent rounded-lg active:bg-purple-600 hover:bg-purple-700 focus:outline-none focus:shadow-outline-purple"
							>
							<a href="board_list"> 뒤로 </a>
						</button>
					</form>
				</div>
			</main>
		</div>
	</div>
</body>
</html>