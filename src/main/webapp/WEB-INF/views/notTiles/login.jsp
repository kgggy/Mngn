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
<!-- 카카오 스크립트 -->
<script src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script>
	Kakao.init('fd8bf1199af6014c16070f1498a5cfa6'); //발급받은 키 중 javascript키를 사용해준다.
	console.log(Kakao.isInitialized()); // sdk초기화여부판단
	//카카오로그인
	function kakaoLogin() {
		$.ajax({
			url : '/login/getKakaoAuthUrl',
			type : 'get',
			async : false,
			dataType : 'text',
			success : function(res) {
				location.href = res;
			}
		});
	}
	$(document).ready(
			function() {

				var kakaoInfo = '${kakaoInfo}';

				if (kakaoInfo != "") {
					var data = JSON.parse(kakaoInfo);

					alert("카카오로그인 성공 \n accessToken : " + data['accessToken']);
					alert("user : \n" + "email : " + data['email']
							+ "\n nickname : " + data['nickname']);
				}
			});
	a
</script>

<!-- 네이버 로그인 스크립트 -->
<script
	src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2.js"
	charset="utf-8"></script>

<script>
	var naverLogin = new naver.LoginWithNaverId({
		clientId : "FcJJbV7LY4ta0I1OPbFa", //내 애플리케이션 정보에 cliendId를 입력해줍니다.
		callbackUrl :"http://localhost/naverLogin", // 내 애플리케이션 API설정의 Callback URL 을 입력해줍니다.
		isPopup : false,
		callbackHandle : true
	});

	naverLogin.init();

	window.addEventListener('load', function() {
		naverLogin.getLoginStatus(function(status) {
			if (status) {
				var name = naverLogin.user.getName();
				var email = naverLogin.user.getEmail(); // 필수로 설정할것을 받아와 아래처럼 조건문을 줍니다.

				console.log(naverLogin.user);

				if (email == undefined || email == null) {
					alert("이메일은 필수정보입니다. 정보제공을 동의해주세요.");
					naverLogin.reprompt();
					return;
				}
			} else {
				console.log("callback 처리에 실패하였습니다.");
			}
		});
	});

	var testPopUp;

	function openPopUp() {
		testPopUp = window
				.open(
						"https://nid.naver.com/nidlogin.logout",
						"_blank",
						"toolbar=yes,scrollbars=yes,resizable=yes,width=800,height=850,top=580,left=580");
	}
	function resizePopUp() {
		window.resizeTo(1400, 740);
		window.focus();
	}

	function closePopUp() {
		testPopUp.close();
	}

	function naverLogout() {
		openPopUp();
		setTimeout(function() {
			closePopUp();
		}, 1000);

	}

	function login() {

		var loginForm = document.loginForm;
		var client_id = loginForm.client_id.value;
		var pwd = loginForm.pwd.value;

		if (!client_id || !pwd) {
			alert("id또는 password가 입력해주세요.")
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
									onclick="kakaoLogin()"> <img src="img/naverlogin.png"
									id="naver_id_login" onclick="openPopUp()"> <img
									src="img/googleLogin.png" id="google_id_login" onclick="">
								<img src="img/facebookLogin.png" id="facebook_id_login"
									onclick="">
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
	<script>
		
	</script>

</body>
</html>

