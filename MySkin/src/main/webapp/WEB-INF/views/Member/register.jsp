<%@ page language="java"  contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html :x-data="data()" lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>VarChar 회원가입</title>
    <link
      href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap"
      rel="stylesheet"
    />
    <link rel="stylesheet" href="../../../resources/css/tailwind.output.css" />
    <script
      src="https://cdn.jsdelivr.net/gh/alpinejs/alpine@v2.x.x/dist/alpine.min.js"
      defer
    ></script>
    <script src="../../../resources/js/init-alpine.js"></script>
  </head>
  <body>
    <div class="flex items-center min-h-screen p-6 bg-gray-50 dark:bg-gray-900">
      <div class="flex-1 h-full max-w-4xl mx-auto overflow-hidden bg-white rounded-lg shadow-xl dark:bg-gray-800">
        <div class="flex flex-col overflow-y-auto md:flex-row" style="background-color: #FFF">
          <div class="h-24 md:h-auto md:w-1/2">
          <a href="index.jsp">
            <img
              aria-hidden="true"
              class="object-cover w-full dark:hidden"
              src="../../../resources/img/logo.png"
              alt="logo"
            />
            </a>
          </div>
          <div class="flex items-center justify-center p-6 sm:p-12 md:w-1/2" style="background-color: #FFF">
            <div class="w-full">
			<form action="register" method="post">
			  <h2 class="mb-4 text-xl font-semibold text-gray-700 dark:text-gray-200" align="center">바차에 오신것을 환영합니다.</h2>
              <h1 class="mb-4 text-xl font-semibold text-gray-700 dark:text-gray-200">회원가입</h1>
              <label class="block text-sm">
                <span class="text-gray-700 dark:text-gray-400"><strong>아이디</strong></span>
                <input
                  class="block w-full mt-1 text-sm dark:border-gray-600 dark:bg-gray-700 focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:text-gray-300 dark:focus:shadow-outline-gray form-input"
                  placeholder="ex) varchar"
                  name="mb_id"
                />
              </label>
			  
              <label class="block mt-4 text-sm">
                <span class="text-gray-700 dark:text-gray-400"><strong>비밀번호</strong></span>
                <input
                  class="block w-full mt-1 text-sm dark:border-gray-600 dark:bg-gray-700 focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:text-gray-300 dark:focus:shadow-outline-gray form-input"
                  placeholder="8자리 이상 입력"
                  type="password"
                  name="mb_pwd"
                />
              </label>
			  
              <label class="block mt-4 text-sm">
                <span class="text-gray-700 dark:text-gray-400"><strong>비밀번호 확인</strong></span>
                <input
                  class="block w-full mt-1 text-sm dark:border-gray-600 dark:bg-gray-700 focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:text-gray-300 dark:focus:shadow-outline-gray form-input"
                  placeholder="8자리 이상 입력"
                  type="password"
                />
              </label>
			  
              <label class="block mt-4 text-sm">
                <span class="text-gray-700 dark:text-gray-400"><strong>이름</strong></span>
                <input
                  class="block w-full mt-1 text-sm dark:border-gray-600 dark:bg-gray-700 focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:text-gray-300 dark:focus:shadow-outline-gray form-input"
                  placeholder="바차규"
                  name="mb_name"
                />
              </label>
			  
              <label class="block mt-4 text-sm">
                <span class="text-gray-700 dark:text-gray-400"><strong>성별<br></strong></span>
					<label class="inline-flex items-center text-gray-600 dark:text-gray-400">
					<div class="mt-2">
						<input
							type="radio"
							class="text-purple-600 form-radio focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:focus:shadow-outline-gray"
							name="gender"
							value="M"
						/>
						<span class="ml-2">남성</span>
					</label>
					
					<label class="inline-flex items-center ml-6 text-gray-600 dark:text-gray-400">
						<input
						  type="radio"
						  class="text-purple-600 form-radio focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:focus:shadow-outline-gray"
						  name="gender"
						  value="F"
						/>
						<span class="ml-2">여성</span>
					</label>
					</div>
              </label>
			  
              <label class="block mt-4 text-sm">
                <span class="text-gray-700 dark:text-gray-400"><strong>생년월일</strong></span>
                <input
                class="block w-full mt-1 text-sm dark:border-gray-600 dark:bg-gray-700 focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:text-gray-300 dark:focus:shadow-outline-gray form-input"
                  type="date"
                  name="mb_birth"
                />
              </label>
			  
              <!-- You should use a button here, as the anchor is only used for the example  -->
              <input type="submit"
			  value="회원가입 완료"
                class="block w-full px-4 py-2 mt-4 text-sm font-medium leading-5 text-center text-white transition-colors duration-150 bg-purple-600 border border-transparent rounded-lg active:bg-purple-600 hover:bg-purple-700 focus:outline-none focus:shadow-outline-purple"
              >
			</form>
              <hr class="my-8" />

              <p class="mt-4">
                <a
                  class="text-sm font-medium text-purple-600 dark:text-purple-400 hover:underline"
                  href="login"
                >
                  이미 계정이 있으신가요?<br>로그인 하러 가기 >>
                </a>
              </p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>