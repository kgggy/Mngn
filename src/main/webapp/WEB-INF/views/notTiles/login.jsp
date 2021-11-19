<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
<title>Login 08</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link
	href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap"
	rel="stylesheet">

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/lfont-awesome.min.css">

<link rel="stylesheet" href="css/lstyle.css">


<script>
	function login() {

		var loginForm = document.loginForm;
		var client_id = loginForm.client_id.value;
		var pwd = loginForm.pwd.value;

		if (!client_id || !pwd) {
			alert("id또는 password를 입력해주세요.")

		} else {
			loginForm.submit();

		}

	}
</script>


<style>
.reg {
	float: right;
}

#kakao_id_login, #naver_id_login, #google_id_login, #facebook_id_login {
	cursor: pointer;
	width: 45px;
	height: 45px;
}
</style>
</head>
<body>

	<!-- //네이버아디디로로그인 Callback페이지 처리 Script -->

	<section class="ftco-section">
		<div class="container">

			<div class="row justify-content-center">
				<div class="col-md-6 col-lg-5">
					<form action="login.do" class="login-form" name="loginForm"
						method="post">
						<div class="login-wrap p-4 p-md-5">
							<div class="logo">
								<h2 style="font-weight: bolder">
									<a><img src="img/logo1.png"> HEYYO</a>
								</h2>
							</div>
							<div class="made">
								<h5 style="font-weight: bolder">로 그 인</h5>
							</div>
							<div class="form-group">
								<input type="number" name="client_id"
									class="form-control rounded-left" placeholder="Username"
									required>
							</div>
							<div class="form-group d-flex">
								<input name="pwd" type="password"
									class="form-control rounded-left" placeholder="Password"
									required>
							</div>

							<div class="social_Login">
								<img src="img/kakaologin.svg" id="kakao_id_login"
									onclick="kakaoLogin()"> 
							</div>
							<div>
								회원이 아니신가요?<a href="joinForm.do" class="reg">가입하기</a>
							</div>
						</div>
						<div class="form-group">
							<button type="button"
								class="btn btn-primary rounded submit p-3 px-5"
								id="naverIdLogin_loginButton" align="center" onclick="login()">로그인</button>
						</div>
					</form>
				</div>
			</div>
		</div>

	</section>

	<script src="js/ljquery.min.js"></script>
	<script src="js/lpopper.js"></script>
	<script src="js/lbootstrap.min.js"></script>
	<script src="js/lmain.js"></script>
	<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
	<script>
	Kakao.init('fd8bf1199af6014c16070f1498a5cfa6'); //발급받은 키 중 javascript키를 사용해준다.
	console.log(Kakao.isInitialized()); // sdk초기화여부판단
	//카카오로그인
	function kakaoLogin() {
	    Kakao.Auth.login({
	      success: function (response) {
	        Kakao.API.request({
	          url: '/v2/user/me',
	          success: function (response) {
	        	  console.log(response)
	          },
	          fail: function (error) {
	            console.log(error)
	          },
	        })
	      },
	      fail: function (error) {
	        console.log(error)
	      },
	    })
	  }
	//카카오로그아웃  
	function kakaoLogout() {
	    if (Kakao.Auth.getAccessToken()) {
	      Kakao.API.request({
	        url: '/v1/user/unlink',
	        success: function (response) {
	        	console.log(response)
	        },
	        fail: function (error) {
	          console.log(error)
	        },
	      })
	      Kakao.Auth.setAccessToken(undefined)
	    }
	  }  
	</script>


	
		


</body>
</html>

