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

<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

	<script>
	window.onload = function(){
	    document.getElementById("address_kakao").addEventListener("click", function(){ //주소입력칸을 클릭하면
	        //카카오 지도 발생
	        new daum.Postcode({
	            oncomplete: function(data) { //선택시 입력값 세팅
	                document.getElementById("address_kakao").value = data.address; // 주소 넣기
	                document.querySelector("input[name=address_detail]").focus(); //상세입력 포커싱
	            }
	        }).open();
	    });
	}
	
		
	</script>

</head>
<body>


<div class="main">

	<div class="container">
	

	        <div class="col-md-5 border-right">
	
				<div class="signup-form">
					<form method="POST" class="register-form" id="register-form">
						<div class="form-row">
							<div class="form-group">

								   <div class="form-input">
										<label for="first_name" class="required"> ID </label> <input
											type="text" name="first_name" id="first_name" /> <label
											for="user_idCheck" class="required"> 중복확인 </label> <input
											type="button" name="user_idCheck" id="user_idCheck" />
									</div>

									<div class="form-input">
										<label for="password" class="required"> PASSWORD</label> <input
											type="text" name="password" id="password" />
									</div>
									<div class="form-input">
										<label for="password_check" class="required">PASSWORD_CHECK</label>
										<input type="text" name="password_check" id="password_check" />
									</div>
									<div class="form-input">
										<label for="name" class="required"> NAME </label> <input
											type="text" name="name" id="name" />
									</div>
									<div class="form-input">
										<label for="address" class="required"> 주소 </label>
						
										<input type="text" id="address_kakao" name="address"readonly />
									</div>	
									<div class="form-input">
						    			<label for="address_detail" class="required">  상세주소 </label>
										<input type="text" name="address_detail"  id = "address_detail"/>
									</div>

									<div class="form-input">
										<label for="email" class="required">Email</label> <input
											type="text" name="email" id="email" />
									</div>


									<div class="form-input">
										<label for="phone_number" class="required">Phone
											number</label> <input type="text" name="phone_number"
											id="phone_number" />
									</div>
								</div>

								<div class="form-submit">
									<input type="submit" value="Submit" class="submit" id="submit"
										name="submit" /> <input type="submit" value="Reset"
										class="submit" id="reset" name="reset" />
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