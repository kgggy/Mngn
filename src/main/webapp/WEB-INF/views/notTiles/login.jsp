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
<!-- 네이버 로그인 스크립트 -->
<script type="text/javascript"
	src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js"	charset="utf-8"></script>
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
									onclick="kakaoLogin()"> <img src="img/naverlogin.png"
									id="naver_id_login"> <img src="img/googleLogin.png"
									id="google_id_login" onclick=""> <img
									src="img/facebookLogin.png" id="facebook_id_login" onclick="">
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
	var naver_id_login = new naver_id_login("FcJJbV7LY4ta0I1OPbFa", "http://localhost/prj/login.do");
	var state = naver_id_login.getUniqState();
	//naver_id_login.setButton("white", 2,40);
	//naver_id_login.setDomain(".service.com");
	naver_id_login.setState(state);
	naver_id_login.setPopup();
	naver_id_login.init_naver_id_login();

	
	// 네이버 사용자 프로필 조회 이후 프로필 정보를 처리할 callback function
	function naverSignInCallback() {
		// naver_id_login.getProfileData('프로필항목명');
		// 프로필 항목은 개발가이드를 참고하시기 바랍니다.
		alert(naver_id_login.getProfileData('email'));
		alert(naver_id_login.getProfileData('nickname'));
	//	alert(naver_id_login.getProfileData('age'));
	}
		

	// 네이버 사용자 프로필 조회
	naver_id_login.get_naver_userprofile("naverSignInCallback()");	
	
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
	</script>

</body>
</html>

