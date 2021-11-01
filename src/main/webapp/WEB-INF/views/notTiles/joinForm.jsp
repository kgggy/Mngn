<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Sign Up Form by Colorlib</title>

<!-- Font Icon -->
<link rel="stylesheet"
	href="fonts/material-icon/css/material-design-iconic-font.min.css">
<link rel="stylesheet" href="vendor/nouislider/nouislider.min.css">

<!-- Main css -->
<link rel="stylesheet" href="css/style1.css">

<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<script>
	window.onload = function(){
	    document.getElementById("adres1").addEventListener("click", function(){ //주소입력칸을 클릭하면
	        //카카오 지도 발생
	        new daum.Postcode({
	            oncomplete: function(data) { //선택시 입력값 세팅
	                document.getElementById("adres1").value = data.address; // 주소 넣기
	                document.querySelector("input[name=address_detail]").focus(); //상세입력 포커싱
	            }
	        }).open();
	    });
	}
	
		
	</script>
<script>

function result() {

	var joinForm = document.joinForm;
	var pwd = joinForm.pwd.value;
	var name = joinForm.name.value;
	var post_no = joinForm.post_no.value;
	var adres1 = joinForm.adres1.value;
	var adres2 = joinForm.adres2.value;
	var phone = joinForm.phone.value;
	var email = joinForm.email.value;
	var join_dt = joinForm.join_dt.value;
	var role = joinForm.role.value;


	if (!client_id ||!pwd || !name || !post_no || !adres1|| !adres2 || !phone || !email ) {

		alert("필수입력창을 모두 입력해주세요.");

	} else {

		alert("등록되었습니다.");
		joinForm.submit();

	}

}
</script>


</head>
<body>


	<div class="main">

		<div class="container">


			<div class="col-md-5 border-right">

				<div class="signup-form">
					<form method="POST" class="joinForm" id="joinForm">
						<div class="form-row">
							<div class="form-group">

								<div class="form-input">
									<label for="first_name" class="required"> ID </label> <input
										type="text" name="client_id" id="client_id" /> <label
										for="client_idCheck" class="required"> 중복확인 </label> <input
										type="button" name="client_idCheck" id="client_idCheck" />
								</div>

								<div class="form-input">
									<label for="password" class="required"> PASSWORD</label> <input
										type="password" name="pwd" id="pwd" />
								</div>
								<div class="form-input">
									<label for="pwd_check" class="required">PASSWORD_CHECK</label>
									<input type="password" name="pwd_check" id="pwd_check" />
								</div>
								<div class="form-input">
									<label for="name" class="required"> NAME </label> <input
										type="text" name="name" id="name" />
								</div>
								<div class="form-input">
									<label for="address" class="required"> 주소 </label> <input
										type="text" id="adres1" name="adres1" readonly />
								</div>
								<div class="form-input">
									<label for="address_detail" class="required"> 상세주소 </label> <input
										type="text" name="adres2" id="adres2" />
								</div>

								<div class="form-input">
									<label for="email" class="required">Email</label> <input
										type="text" name="email" id="email" />
								</div>


								<div class="form-input">
									<label for="phone_number" class="required">Phone number</label>
									<input type="text" name="phone" id="phone" />
								</div>
							</div>

							<div class="form-submit">
								<input type="button" value="Submit" class="submit" id="submit"
									name="submit" onclick="result()" /> <input type="submit"
									value="Reset" class="submit" id="reset" name="reset" />
							</div>
						</div>
					</form>
				</div>
			</div>

		</div>
	</div>
	</div>
	<!-- JS -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/nouislider/nouislider.min.js"></script>
	<script src="vendor/wnumb/wNumb.js"></script>
	<script src="vendor/jquery-validation/dist/jquery.validate.min.js"></script>
	<script src="vendor/jquery-validation/dist/additional-methods.min.js"></script>
	<script src="js/login_main.js"></script>


</body>
<!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>