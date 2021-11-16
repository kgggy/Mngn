<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css"
	rel="stylesheet" />
<title>Insert title here</title>
<style>
body {
	background: #fff;
	margin-top: 20px;
}

.card-box {
	padding: 20px;
	border-radius: 3px;
	margin-bottom: 30px;
	background-color: #fff;
	box-shadow: 5px 5px 10px 5px #e0e0e0;
}

.social-links li a {
	border-radius: 50%;
	color: rgba(121, 121, 121, .8);
	display: inline-block;
	height: 30px;
	line-height: 27px;
	border: 2px solid rgba(121, 121, 121, .5);
	text-align: center;
	width: 30px
}

.social-links li a:hover {
	color: #797979;
	border: 2px solid #797979
}

.thumb-lg {
	height: 88px;
	width: 88px;
}

.img-thumbnail {
	padding: .25rem;
	background-color: #fff;
	border: 1px solid #dee2e6;
	border-radius: .25rem;
	max-width: 100%;
	height: auto;
}

#select {
	width: 200px;
	height: 200px;
	cursor: pointer;
}

.text-pink {
	color: #ff679b !important;
}

.btn-rounded {
	border-radius: 2em;
}

.text-muted {
	color: #98a6ad !important;
}

h4 {
	line-height: 22px;
	font-size: 18px;
}

/* The Modal (background) */
.modal {
	display: none; /* Hidden by default */
	position: fixed; /* Stay in place */
	padding-top: 100px; /* Location of the box */
	left: 0;
	top: 0;
	width: 100%; /* Full width */
	height: 100%; /* Full height */
	overflow: auto; /* Enable scroll if needed */
	background-color: rgb(0, 0, 0); /* Fallback color */
	background-color: rgba(0, 0, 0, 0.4); /* Black w/ opacity */
}

/* Modal Content */
.modal-content {
	background-color: #fefefe;
	margin: auto;
	padding: 20px;
	border: 1px solid #888;
	width: 30%;
	height: auto;
	top: 30%;
	border-radius: 20px;
	top: 30%;
}

/* The Close Button */
.close {
	color: #aaaaaa;
	float: right;
	font-size: 28px;
	font-weight: bold;
}

.close:hover, .close:focus {
	color: #000;
	text-decoration: none;
	cursor: pointer;
}

@import
	url('https://fonts.googleapis.com/css2?family=Rajdhani:wght@300;400;600;700&display=swap')
	;

.admin {
	font-family: 'Rajdhani', sans-serif;
	font-size: 30px;
	color: black;
	text-transeform: uppercase
}

;
.boxed-btn3:hover {
	opacity: 0.8;
	cursor: pointer;
}

#abtn {
	float: right;
	top: 100px;
}
</style>

<script>
   $(function() {
      // Get the modal
      var modal = document.getElementById("light");

      // Get the button that opens the modal
      var btn = document.getElementById("abtn");

      // Get the <span> element that closes the modal
      var span = document.getElementsByClassName("close")[0];

      // When the user clicks the button, open the modal 
      btn.onclick = function() {
         modal.style.display = "block";
         $('.maincontent').on('scroll touchmove mousewheel',
               function(event) {
                  event.preventDefault();
                  event.stopPropagation();
                  return false;
               });
      }
      $(".genric-btn").on("click", function() {
         $(".genric-btn").removeClass("focus")
         $(this).addClass("focus")
      })

      // When the user clicks on <span> (x), close the modal
      span.onclick = function() {
         modal.style.display = "none";
         $('.maincontent').off('scroll touchmove mousewheel');

      }

      // When the user clicks anywhere outside of the modal, close it
      window.onclick = function(event) {
         if (event.target == modal) {
            $('.maincontent').off('scroll touchmove mousewheel');
            modal.style.display = "none";
         }
      }
   });
</script>

</head>

<body>
	<div class="bradcam_area breadcam_bg">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="bradcam_text text-center">
						<h3>반려동물 프로필</h3>
					</div>
				</div>
			</div>
		</div>
	</div>
	<br />
	<br />
	<br />
	<br />
	<br />
	<!-- END nav -->
	<a id="abtn" class="boxed-btn3">Add Pet</a>
	<div class="content">
		<div class="container">
			<div class="row">
				<div class="col-sm-4"></div>
				<!-- end col -->
			</div>
			<!-- end row -->
			<div class="row">
				<c:forEach items="${petForm }" var="pet">
					<div class="col-lg-4">
						<div class="text-center card-box">
							<div class="member-card pt-2 pb-2">
								<div class="thumb-lg member-thumb mx-auto">
									<img src="https://bootdey.com/img/Content/avatar/avatar2.png"
										class="rounded-circle img-thumbnail" alt="profile-image">
								</div>
								<div class="">
									<h4>${pet.name }</h4>
								</div>
								<div class="mt-4">
									<div class="row">
										<div class="col-4">
											<div class="mt-3">
												<h4>나이</h4>
												<p class="mb-0 text-muted">${pet.age }세</p>
											</div>
										</div>
										<div class="col-4">
											<div class="mt-3">
												<h4>성별</h4>
												<p class="mb-0 text-muted">${pet.gen_wm }</p>
											</div>
										</div>
										<div class="col-4">
											<div class="mt-3">
												<h4>몸무게</h4>
												<p class="mb-0 text-muted">${pet.wgt }kg</p>
											</div>
										</div>
										<div>
											<a href="formReg.do" id="abtn1" class="boxed-btn3" >수정</a> <a id="abtn1"
												class="boxed-btn3" onclick="delete()">삭제</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- end col -->
				</c:forEach>
			</div>
		</div>
		<!-- container -->
	</div>
	<!-- testmonial_area_start  -->
	<div id="light" class="modal">
		<div class="white_content modal-content" align="center">
			<div>
				<div class="aprofile-select">

					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h2 class="admin">어떤 동물과 함께하시나요?</h2>
					<img src="img/dog.png" id="select"
						onclick="location.href ='dogForm.do'"> <img
						src="img/cat.png" id="select"
						onclick="location.href ='catForm.do'">
				</div>
			</div>
		</div>

	</div>
</body>
</html>