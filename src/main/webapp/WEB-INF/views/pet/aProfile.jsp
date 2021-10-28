<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body {
	background: #DCDCDC;
	margin-top: 20px;
}

.card-box {
	padding: 20px;
	border-radius: 3px;
	margin-bottom: 30px;
	background-color: #fff;
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


@import url('https://fonts.googleapis.com/css2?family=Rajdhani:wght@300;400;600;700&display=swap');

.admin {
    font-family: 'Rajdhani', sans-serif;
	font-size: 30px;
	color: black;
	text-transeform: uppercase
}
;
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
	<link
		href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css"
		rel="stylesheet" />
	<div class="content">
		<div class="container">
			<div class="row">
				<div class="col-sm-4">
					<a class="btn btn-custom waves-effect waves-light mb-4"
						data-animation="fadein" data-plugin="custommodal"
						data-overlayspeed="200" data-overlaycolor="#36404a" id="abtn"><i
						class="mdi mdi-plus"></i> Add Pet</a>
				</div>
				<!-- end col -->
			</div>
			<!-- end row -->
			<div class="row">
				<div class="col-lg-4">
					<div class="text-center card-box">
						<div class="member-card pt-2 pb-2">
							<div class="thumb-lg member-thumb mx-auto">
								<img src="https://bootdey.com/img/Content/avatar/avatar2.png"
									class="rounded-circle img-thumbnail" alt="profile-image">
							</div>
							<div class="">
								<h4>냥이</h4>
								<p class="text-muted">
									@Founder <span>| </span><span><a href="#"
										class="text-pink">websitename.com</a></span>
								</p>
							</div>
							<ul class="social-links list-inline">
								<li class="list-inline-item"><a title=""
									data-placement="top" data-toggle="tooltip" class="tooltips"
									href="" data-original-title="Facebook"><i
										class="fa fa-facebook"></i></a></li>
								<li class="list-inline-item"><a title=""
									data-placement="top" data-toggle="tooltip" class="tooltips"
									href="" data-original-title="Twitter"><i
										class="fa fa-twitter"></i></a></li>
								<li class="list-inline-item"><a title=""
									data-placement="top" data-toggle="tooltip" class="tooltips"
									href="" data-original-title="Skype"><i class="fa fa-skype"></i></a></li>
							</ul>
							<button type="button"
								class="btn btn-primary mt-3 btn-rounded waves-effect w-md waves-light">Message
								Now</button>
							<div class="mt-4">
								<div class="row">
									<div class="col-4">
										<div class="mt-3">
											<h4>2563</h4>
											<p class="mb-0 text-muted">Wallets Balance</p>
										</div>
									</div>
									<div class="col-4">
										<div class="mt-3">
											<h4>6952</h4>
											<p class="mb-0 text-muted">Income amounts</p>
										</div>
									</div>
									<div class="col-4">
										<div class="mt-3">
											<h4>1125</h4>
											<p class="mb-0 text-muted">Total Transactions</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- end col -->
				<div class="col-lg-4">
					<div class="text-center card-box">
						<div class="member-card pt-2 pb-2">
							<div class="thumb-lg member-thumb mx-auto">
								<img src="https://bootdey.com/img/Content/avatar/avatar3.png"
									class="rounded-circle img-thumbnail" alt="profile-image">
							</div>
							<div class="">
								<h4>달이</h4>
								<p class="text-muted">
									@Programmer <span>| </span><span><a href="#"
										class="text-pink">websitename.com</a></span>
								</p>
							</div>
							<ul class="social-links list-inline">
								<li class="list-inline-item"><a title=""
									data-placement="top" data-toggle="tooltip" class="tooltips"
									href="" data-original-title="Facebook"><i
										class="fa fa-facebook"></i></a></li>
								<li class="list-inline-item"><a title=""
									data-placement="top" data-toggle="tooltip" class="tooltips"
									href="" data-original-title="Twitter"><i
										class="fa fa-twitter"></i></a></li>
								<li class="list-inline-item"><a title=""
									data-placement="top" data-toggle="tooltip" class="tooltips"
									href="" data-original-title="Skype"><i class="fa fa-skype"></i></a></li>
							</ul>
							<button type="button"
								class="btn btn-primary mt-3 btn-rounded waves-effect w-md waves-light">Message
								Now</button>
							<div class="mt-4">
								<div class="row">
									<div class="col-4">
										<div class="mt-3">
											<h4>8471</h4>
											<p class="mb-0 text-muted">Wallets Balance</p>
										</div>
									</div>
									<div class="col-4">
										<div class="mt-3">
											<h4>8512</h4>
											<p class="mb-0 text-muted">Income amounts</p>
										</div>
									</div>
									<div class="col-4">
										<div class="mt-3">
											<h4>4751</h4>
											<p class="mb-0 text-muted">Total Transactions</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- end col -->
				<div class="col-lg-4">
					<div class="text-center card-box">
						<div class="member-card pt-2 pb-2">
							<div class="thumb-lg member-thumb mx-auto">
								<img src="https://bootdey.com/img/Content/avatar/avatar4.png"
									class="rounded-circle img-thumbnail" alt="profile-image">
							</div>
							<div class="">
								<h4>Christopher Gallardo</h4>
								<p class="text-muted">
									@Webdesigner <span>| </span><span><a href="#"
										class="text-pink">websitename.com</a></span>
								</p>
							</div>
							<ul class="social-links list-inline">
								<li class="list-inline-item"><a title=""
									data-placement="top" data-toggle="tooltip" class="tooltips"
									href="" data-original-title="Facebook"><i
										class="fa fa-facebook"></i></a></li>
								<li class="list-inline-item"><a title=""
									data-placement="top" data-toggle="tooltip" class="tooltips"
									href="" data-original-title="Twitter"><i
										class="fa fa-twitter"></i></a></li>
								<li class="list-inline-item"><a title=""
									data-placement="top" data-toggle="tooltip" class="tooltips"
									href="" data-original-title="Skype"><i class="fa fa-skype"></i></a></li>
							</ul>
							<button type="button"
								class="btn btn-primary mt-3 btn-rounded waves-effect w-md waves-light">Message
								Now</button>
							<div class="mt-4">
								<div class="row">
									<div class="col-4">
										<div class="mt-3">
											<h4>1021</h4>
											<p class="mb-0 text-muted">Wallets Balance</p>
										</div>
									</div>
									<div class="col-4">
										<div class="mt-3">
											<h4>4562</h4>
											<p class="mb-0 text-muted">Income amounts</p>
										</div>
									</div>
									<div class="col-4">
										<div class="mt-3">
											<h4>3621</h4>
											<p class="mb-0 text-muted">Total Transactions</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- end col -->
			</div>
			<!-- end row -->
			<div class="row">
				<div class="col-lg-4">
					<div class="text-center card-box">
						<div class="member-card pt-2 pb-2">
							<div class="thumb-lg member-thumb mx-auto">
								<img src="https://bootdey.com/img/Content/avatar/avatar5.png"
									class="rounded-circle img-thumbnail" alt="profile-image">
							</div>
							<div class="">
								<h4>Joseph M. Rohr</h4>
								<p class="text-muted">
									@Webdesigner <span>| </span><span><a href="#"
										class="text-pink">websitename.com</a></span>
								</p>
							</div>
							<ul class="social-links list-inline">
								<li class="list-inline-item"><a title=""
									data-placement="top" data-toggle="tooltip" class="tooltips"
									href="" data-original-title="Facebook"><i
										class="fa fa-facebook"></i></a></li>
								<li class="list-inline-item"><a title=""
									data-placement="top" data-toggle="tooltip" class="tooltips"
									href="" data-original-title="Twitter"><i
										class="fa fa-twitter"></i></a></li>
								<li class="list-inline-item"><a title=""
									data-placement="top" data-toggle="tooltip" class="tooltips"
									href="" data-original-title="Skype"><i class="fa fa-skype"></i></a></li>
							</ul>
							<button type="button"
								class="btn btn-primary mt-3 btn-rounded waves-effect w-md waves-light">Message
								Now</button>
							<div class="mt-4">
								<div class="row">
									<div class="col-4">
										<div class="mt-3">
											<h4>7845</h4>
											<p class="mb-0 text-muted">Wallets Balance</p>
										</div>
									</div>
									<div class="col-4">
										<div class="mt-3">
											<h4>1254</h4>
											<p class="mb-0 text-muted">Income amounts</p>
										</div>
									</div>
									<div class="col-4">
										<div class="mt-3">
											<h4>5846</h4>
											<p class="mb-0 text-muted">Total Transactions</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- end col -->
				<div class="col-lg-4">
					<div class="text-center card-box">
						<div class="member-card pt-2 pb-2">
							<div class="thumb-lg member-thumb mx-auto">
								<img src="https://bootdey.com/img/Content/avatar/avatar6.png"
									class="rounded-circle img-thumbnail" alt="profile-image">
							</div>
							<div class="">
								<h4>Mark K. Horne</h4>
								<p class="text-muted">
									@Director <span>| </span><span><a href="#"
										class="text-pink">websitename.com</a></span>
								</p>
							</div>
							<ul class="social-links list-inline">
								<li class="list-inline-item"><a title=""
									data-placement="top" data-toggle="tooltip" class="tooltips"
									href="" data-original-title="Facebook"><i
										class="fa fa-facebook"></i></a></li>
								<li class="list-inline-item"><a title=""
									data-placement="top" data-toggle="tooltip" class="tooltips"
									href="" data-original-title="Twitter"><i
										class="fa fa-twitter"></i></a></li>
								<li class="list-inline-item"><a title=""
									data-placement="top" data-toggle="tooltip" class="tooltips"
									href="" data-original-title="Skype"><i class="fa fa-skype"></i></a></li>
							</ul>
							<button type="button"
								class="btn btn-primary mt-3 btn-rounded waves-effect w-md waves-light">Message
								Now</button>
							<div class="mt-4">
								<div class="row">
									<div class="col-4">
										<div class="mt-3">
											<h4>4851</h4>
											<p class="mb-0 text-muted">Wallets Balance</p>
										</div>
									</div>
									<div class="col-4">
										<div class="mt-3">
											<h4>10250</h4>
											<p class="mb-0 text-muted">Income amounts</p>
										</div>
									</div>
									<div class="col-4">
										<div class="mt-3">
											<h4>895</h4>
											<p class="mb-0 text-muted">Total Transactions</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- end col -->
				<div class="col-lg-4">
					<div class="text-center card-box">
						<div class="member-card pt-2 pb-2">
							<div class="thumb-lg member-thumb mx-auto">
								<img src="https://bootdey.com/img/Content/avatar/avatar7.png"
									class="rounded-circle img-thumbnail" alt="profile-image">
							</div>
							<div class="">
								<h4>James M. Fonville</h4>
								<p class="text-muted">
									@Manager <span>| </span><span><a href="#"
										class="text-pink">websitename.com</a></span>
								</p>
							</div>
							<ul class="social-links list-inline">
								<li class="list-inline-item"><a title=""
									data-placement="top" data-toggle="tooltip" class="tooltips"
									href="" data-original-title="Facebook"><i
										class="fa fa-facebook"></i></a></li>
								<li class="list-inline-item"><a title=""
									data-placement="top" data-toggle="tooltip" class="tooltips"
									href="" data-original-title="Twitter"><i
										class="fa fa-twitter"></i></a></li>
								<li class="list-inline-item"><a title=""
									data-placement="top" data-toggle="tooltip" class="tooltips"
									href="" data-original-title="Skype"><i class="fa fa-skype"></i></a></li>
							</ul>
							<button type="button"
								class="btn btn-primary mt-3 btn-rounded waves-effect w-md waves-light">Message
								Now</button>
							<div class="mt-4">
								<div class="row">
									<div class="col-4">
										<div class="mt-3">
											<h4>4560</h4>
											<p class="mb-0 text-muted">Wallets Balance</p>
										</div>
									</div>
									<div class="col-4">
										<div class="mt-3">
											<h4>12350</h4>
											<p class="mb-0 text-muted">Income amounts</p>
										</div>
									</div>
									<div class="col-4">
										<div class="mt-3">
											<h4>742</h4>
											<p class="mb-0 text-muted">Total Transactions</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- end col -->
			</div>
			<!-- end row -->
			<div class="row">
				<div class="col-lg-4">
					<div class="text-center card-box">
						<div class="member-card pt-2 pb-2">
							<div class="thumb-lg member-thumb mx-auto">
								<img src="https://bootdey.com/img/Content/avatar/avatar6.png"
									class="rounded-circle img-thumbnail" alt="profile-image">
							</div>
							<div class="">
								<h4>Jade M. Walker</h4>
								<p class="text-muted">
									@Webdeveloper <span>| </span><span><a href="#"
										class="text-pink">websitename.com</a></span>
								</p>
							</div>
							<ul class="social-links list-inline">
								<li class="list-inline-item"><a title=""
									data-placement="top" data-toggle="tooltip" class="tooltips"
									href="" data-original-title="Facebook"><i
										class="fa fa-facebook"></i></a></li>
								<li class="list-inline-item"><a title=""
									data-placement="top" data-toggle="tooltip" class="tooltips"
									href="" data-original-title="Twitter"><i
										class="fa fa-twitter"></i></a></li>
								<li class="list-inline-item"><a title=""
									data-placement="top" data-toggle="tooltip" class="tooltips"
									href="" data-original-title="Skype"><i class="fa fa-skype"></i></a></li>
							</ul>
							<button type="button"
								class="btn btn-primary mt-3 btn-rounded waves-effect w-md waves-light">Message
								Now</button>
							<div class="mt-4">
								<div class="row">
									<div class="col-4">
										<div class="mt-3">
											<h4>3520</h4>
											<p class="mb-0 text-muted">Wallets Balance</p>
										</div>
									</div>
									<div class="col-4">
										<div class="mt-3">
											<h4>4587</h4>
											<p class="mb-0 text-muted">Income amounts</p>
										</div>
									</div>
									<div class="col-4">
										<div class="mt-3">
											<h4>423</h4>
											<p class="mb-0 text-muted">Total Transactions</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- end col -->
				<div class="col-lg-4">
					<div class="text-center card-box">
						<div class="member-card pt-2 pb-2">
							<div class="thumb-lg member-thumb mx-auto">
								<img src="https://bootdey.com/img/Content/avatar/avatar1.png"
									class="rounded-circle img-thumbnail" alt="profile-image">
							</div>
							<div class="">
								<h4>Mathias L. Lassen</h4>
								<p class="text-muted">
									@Webdesigner <span>| </span><span><a href="#"
										class="text-pink">websitename.com</a></span>
								</p>
							</div>
							<ul class="social-links list-inline">
								<li class="list-inline-item"><a title=""
									data-placement="top" data-toggle="tooltip" class="tooltips"
									href="" data-original-title="Facebook"><i
										class="fa fa-facebook"></i></a></li>
								<li class="list-inline-item"><a title=""
									data-placement="top" data-toggle="tooltip" class="tooltips"
									href="" data-original-title="Twitter"><i
										class="fa fa-twitter"></i></a></li>
								<li class="list-inline-item"><a title=""
									data-placement="top" data-toggle="tooltip" class="tooltips"
									href="" data-original-title="Skype"><i class="fa fa-skype"></i></a></li>
							</ul>
							<button type="button"
								class="btn btn-primary mt-3 btn-rounded waves-effect w-md waves-light">Message
								Now</button>
							<div class="mt-4">
								<div class="row">
									<div class="col-4">
										<div class="mt-3">
											<h4>7851</h4>
											<p class="mb-0 text-muted">Wallets Balance</p>
										</div>
									</div>
									<div class="col-4">
										<div class="mt-3">
											<h4>10020</h4>
											<p class="mb-0 text-muted">Income amounts</p>
										</div>
									</div>
									<div class="col-4">
										<div class="mt-3">
											<h4>1036</h4>
											<p class="mb-0 text-muted">Total Transactions</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- end col -->
				<div class="col-lg-4">
					<div class="text-center card-box">
						<div class="member-card pt-2 pb-2">
							<div class="thumb-lg member-thumb mx-auto">
								<img src="https://bootdey.com/img/Content/avatar/avatar3.png"
									class="rounded-circle img-thumbnail" alt="profile-image">
							</div>
							<div class="">
								<h4>Alfred M. Bach</h4>
								<p class="text-muted">
									@Manager <span>| </span><span><a href="#"
										class="text-pink">websitename.com</a></span>
								</p>
							</div>
							<ul class="social-links list-inline">
								<li class="list-inline-item"><a title=""
									data-placement="top" data-toggle="tooltip" class="tooltips"
									href="" data-original-title="Facebook"><i
										class="fa fa-facebook"></i></a></li>
								<li class="list-inline-item"><a title=""
									data-placement="top" data-toggle="tooltip" class="tooltips"
									href="" data-original-title="Twitter"><i
										class="fa fa-twitter"></i></a></li>
								<li class="list-inline-item"><a title=""
									data-placement="top" data-toggle="tooltip" class="tooltips"
									href="" data-original-title="Skype"><i class="fa fa-skype"></i></a></li>
							</ul>
							<button type="button"
								class="btn btn-primary mt-3 btn-rounded waves-effect w-md waves-light">Message
								Now</button>
							<div class="mt-4">
								<div class="row">
									<div class="col-4">
										<div class="mt-3">
											<h4>7421</h4>
											<p class="mb-0 text-muted">Wallets Balance</p>
										</div>
									</div>
									<div class="col-4">
										<div class="mt-3">
											<h4>14754</h4>
											<p class="mb-0 text-muted">Income amounts</p>
										</div>
									</div>
									<div class="col-4">
										<div class="mt-3">
											<h4>11525</h4>
											<p class="mb-0 text-muted">Total Transactions</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- end col -->
			</div>
			<!-- end row -->
			<div class="row">
				<div class="col-12">
					<div class="text-right">
						<ul class="pagination pagination-split mt-0 float-right">
							<li class="page-item"><a class="page-link" href="#"
								aria-label="Previous"><span aria-hidden="true">«</span> <span
									class="sr-only">Previous</span></a></li>
							<li class="page-item active"><a class="page-link" href="#">1</a></li>
							<li class="page-item"><a class="page-link" href="#">2</a></li>

							<li class="page-item"><a class="page-link" href="#"
								aria-label="Next"><span aria-hidden="true">»</span> <span>
										class="sr-only">Next</span></a></li>
						</ul>
					</div>
				</div>
			</div>
			<!-- end row -->


		</div>
		<!-- container -->
	</div>
	<!-- testmonial_area_start  -->
	<div id="light" class="modal">
		<div class="white_content modal-content" align="center">
			<div>
				<div class="aprofile-select">

					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h2 class="admin"> 어떤 동물과 함께하시나요? </h2>
					<img src="img/dog.png" id="select"
						onclick="location.href ='dogregister.do'"> <img
						src="img/cat.png" id="select"
						onclick="location.href ='catregister.do'">
				</div>
			</div>
		</div>
	</div>



</body>
</html>