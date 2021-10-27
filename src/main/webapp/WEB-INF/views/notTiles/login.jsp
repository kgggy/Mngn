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

<script
	src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2.js"
	charset="utf-8"></script>

<!-- 네이버 스크립트 -->
<script
	src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2.js"
	charset="utf-8"></script>

<script>
function naverLogin(){
var naverLogin = new naver.LoginWithNaverId(
		{
			clientId: "FcJJbV7LY4ta0I1OPbFa", //내 애플리케이션 정보에 cliendId를 입력해줍니다.
			callbackUrl: "http://localhost/main.do", // 내 애플리케이션 API설정의 Callback URL 을 입력해줍니다.
			isPopup: false,
			callbackHandle: true
		}
	);	

naverLogin.init();

window.addEventListener('load', function () {
	naverLogin.getLoginStatus(function (status) {
		if (status) {
			var email = naverLogin.user.getEmail(); // 필수로 설정할것을 받아와 아래처럼 조건문을 줍니다.
    		
			console.log(naverLogin.user); 
    		
            if( email == undefined || email == null) {
				alert("이메일은 필수정보입니다. 정보제공을 동의해주세요.");
				naverLogin.reprompt();
				return;
			}
		} else {
			console.log("callback 처리에 실패하였습니다.");
		}
	});
});
}

var testPopUp;
function openPopUp() {
    testPopUp= window.open("https://nid.naver.com/nidlogin.logout", "_blank", "toolbar=yes,scrollbars=yes,resizable=yes,width=1,height=1");
}
function closePopUp(){
    testPopUp.close();
}

function naverLogout() {
	openPopUp();
	setTimeout(function() {
		closePopUp();
		}, 1000);
	
	
}
</script>

</head>
<body>
	<section class="ftco-section">
		<div class="container">

			<div class="row justify-content-center">
				<div class="col-md-6 col-lg-5">
					<div class="login-wrap p-4 p-md-5">
						<div class="logo">
							<h2 style="font-weight: bolder">
								<a><img src="img/logo1.png"> HEYYO</a>
							</h2>
						</div>
						<div class="made">
							<h5 style="font-weight: bolder">로 그 인</h5>
						</div>
						<form action="#" class="login-form">
							<div class="form-group">
								<input type="text" class="form-control rounded-left"
									placeholder="Username" required>
							</div>
							<div class="form-group d-flex">
								<input type="password" class="form-control rounded-left"
									placeholder="Password" required>
							</div>

							<div class="loginapi">
								<p>네이버로그인</p>
								<img src="img/kakao_login_medium_wide.png" id="select"
									onclick="naverLogin()">


								<div class="w-50">
									<p>회원이 아니신가요?</p>
								</div>


								<div class="w-50 text-md-right">
									<a href="register.do">가입하기</a>
								</div>
							</div>
							<div class="form-group">
								<button type="submit"
									class="btn btn-primary rounded submit p-3 px-5"
									onclick="main()" align="center">로그인</button>
							</div>


						</form>
					</div>
				</div>
			</div>
		</div>
	</section>

	<script src="js/ljquery.min.js"></script>
	<script src="js/lpopper.js"></script>
	<script src="js/lbootstrap.min.js"></script>
	<script src="js/lmain.js"></script>
	<script>
		function main() {
			location.href = "main.do"
		}
	</script>

</body>
</html>

