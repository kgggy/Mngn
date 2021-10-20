<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>서비스 예약</title>
<style>
.contents {
	box-sizing: border-box;
	width: 500px;
	height: 300x;
	background-color: orange;
	padding: 5px 10px;
	text-align: center;
	float: left;
}

.work mb-4 img d-flex align-items-end img {
	vertical-align: top;
	float: left;
}

#middle img {
	vertical-align: middle;
}

#bottom img {
	vertical-align: bottom;
}

.work mb-4 img d-flex align-items-end {
	border: 1px solid blue;
}

p {
	display: inline-block;
}
</style>
</head>
<body>

<div class="container">
			<div
				class="row no-gutters slider-text js-fullheight align-items-center justify-content-center"
				data-scrollax-parent="true">
				<div class="col-md-11 ftco-animate text-center">
				</div>
			</div>
	</div>

	<section class="ftco-section bg-light ftco-no-pt ftco-intro">
		<div class="container">
			<div class="row">
				<div class="col-md-4 d-flex align-self-stretch px-4 ftco-animate">
					<div class="d-block services text-center">
						<div class="icon d-flex align-items-center justify-content-center">
							<span class="flaticon-blind"></span>
						</div>
						<div class="media-body">
							<h3 class="heading">Dog Walking</h3>
							<p>Far far away, behind the word mountains, far from the
								countries Vokalia and Consonantia, there live the blind texts.
								Separated they live in Bookmarksgrove right.</p>
							<a href="#"
								class="btn-custom d-flex align-items-center justify-content-center"><span
								class="fa fa-chevron-right"></span><i class="sr-only">Read
									more</i></a>
						</div>
					</div>
				</div>
				<div class="col-md-4 d-flex align-self-stretch px-4 ftco-animate">
					<div class="d-block services text-center">
						<div class="icon d-flex align-items-center justify-content-center">
							<span class="flaticon-dog-eating"></span>
						</div>
						<div class="media-body">
							<h3 class="heading">Pet Daycare</h3>
							<p>Far far away, behind the word mountains, far from the
								countries Vokalia and Consonantia, there live the blind texts.
								Separated they live in Bookmarksgrove right.</p>
							<a href="#"
								class="btn-custom d-flex align-items-center justify-content-center"><span
								class="fa fa-chevron-right"></span><i class="sr-only">Read
									more</i></a>
						</div>
					</div>
				</div>
				<div class="col-md-4 d-flex align-self-stretch px-4 ftco-animate">
					<div class="d-block services text-center">
						<div class="icon d-flex align-items-center justify-content-center">
							<span class="flaticon-grooming"></span>
						</div>
						<div class="media-body">
							<h3 class="heading">Pet Grooming</h3>
							<p>Far far away, behind the word mountains, far from the
								countries Vokalia and Consonantia, there live the blind texts.
								Separated they live in Bookmarksgrove right.</p>
							<a href="#"
								class="btn-custom d-flex align-items-center justify-content-center"><span
								class="fa fa-chevron-right"></span><i class="sr-only">Read
									more</i></a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
<section
		class="ftco-appointment ftco-section ftco-no-pt ftco-no-pb img"
		style="background-image: url(images/bg_3.jpg);">
		<div class="overlay"></div>
		<div class="container">
			<div class="row d-md-flex justify-content-end">
				<div class="col-md-12 col-lg-6 half p-3 py-5 pl-lg-5 ftco-animate">
					<h2 class="mb-4">Free Consultation</h2>
					<form action="#" class="appointment">
						<div class="row">
							<div class="col-md-12">
								<div class="form-group">
									<div class="form-field">
										<div class="select-wrap">
											<div class="icon">
												<span class="fa fa-chevron-down"></span>
											</div>
											<select name="" id="" class="form-control">
												<option value="">Select services</option>
												<option value="">Cat Sitting</option>
												<option value="">Dog Walk</option>
												<option value="">Pet Spa</option>
												<option value="">Pet Grooming</option>
												<option value="">Pet Daycare</option>
											</select>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<input type="text" class="form-control" placeholder="Your Name">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<input type="text" class="form-control"
										placeholder="Vehicle number">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<div class="input-wrap">
										<div class="icon">
											<span class="fa fa-calendar"></span>
										</div>
										<input type="text" class="form-control appointment_date"
											placeholder="Date">
									</div>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<div class="input-wrap">
										<div class="icon">
											<span class="fa fa-clock-o"></span>
										</div>
										<input type="text" class="form-control appointment_time"
											placeholder="Time">
									</div>
								</div>
							</div>
							<div class="col-md-12">
								<div class="form-group">
									<textarea name="" id="" cols="30" rows="7" class="form-control"
										placeholder="Message"></textarea>
								</div>
							</div>
							<div class="col-md-12">
								<div class="form-group">
									<input type="submit" value="Send message"
										class="btn btn-primary py-3 px-4">
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</section>
</body>
</html>