<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<header>
	<div class="header-area ">
		<div id="sticky-header" class="main-header-area">
			<div class="container">
				<div class="row align-items-center">
					<div class="col-xl-3 col-lg-3">
						<div class="logo">
							<h1 style="font-weight: bolder">
								<a href="cntMain.do"><img src="img/logo1.png"> HEYYO</a>
							</h1>
						</div>
					</div>
					<div class="col-xl-9 col-lg-9">
						<div class="main-menu  d-none d-lg-block">
							<nav>
								<ul id="navigation">
									<li><a href="tList.do">훈련사 프로필</a></li>
									<li><a>서비스 예약 <i class="ti-angle-down"></i></a>
										<ul class="submenu">
											<li><a href="careDc.do">돌봄서비스</a></li>
											<li><a href="walkDc.do">산책서비스</a></li>
											<li><a href="trainDc.do">훈련서비스</a></li>
										</ul></li>
									<li><a href="rList.do">이용후기</a></li>
									<li><a>마이페이지<i class="ti-angle-down"></i></a>
										<ul class="submenu">
											<li><a href="cntProfile.do">내 프로필 관리</a></li>
											<li><a href="aniList.do">반려동물 프로필</a></li>
											<li><a href="cntReview.do">이용 조회 및 후기</a></li>
											<li><a href="logout.do">로그아웃</a></li>

										</ul></li>
									<li><a class="link-muted d-flex align-items-center"
										 role="button" id="dropdownMenuLink"
										aria-haspopup="true" aria-expanded="false"
										data-toggle="dropdown"> <span
											class="d-none d-sm-inline-block" style="width:230px;" > <strong>${name }님, 환영합니다!</strong>
										</span>
									</a></li>
								</ul>
								<!-- End User Profile -->
							</nav>
						</div>
						<!-- User Profile -->

					</div>
					<div class="col-12">
						<div class="mobile_menu d-block d-lg-none"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
</header>