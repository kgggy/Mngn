<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags"%>
<!DOCTYPE html>
<html lang="en" class="no-js">
<!-- Head -->

<head>
<title>사용자 목록</title>

<!-- Meta -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<meta name="keywords"
	content="Bootstrap Theme, Freebies, Dashboard, MIT license">
<meta name="description" content="Stream - Dashboard UI Kit">
<meta name="author" content="htmlstream.com">

<!-- Favicon -->
<link rel="shortcut icon" href="favicon.ico" type="image/x-icon">

<!-- Web Fonts -->
<link
	href="https://fonts.googleapis.com/css2?family=Cabin:ital,wght@0,400;0,500;0,600;0,700;1,400;1,500;1,600;1,700&family=Open+Sans&display=swap"
	rel="stylesheet">

<!-- Components Vendor Styles -->
<link rel="stylesheet" href="assets/vendor/font-awesome/css/all.min.css">
<link rel="stylesheet"
	href="assets/vendor/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.css">

<!-- Theme Styles -->
<link rel="stylesheet" href="assets/css/theme.css">
<link rel="stylesheet" href="assets/css/style.css">

<!-- Custom Charts -->
<style>
.js-doughnut-chart {
	width: 70px !important;
	height: 70px !important;
}
</style>
<!-- Global Vendor -->
<script src="assets/vendor/jquery/dist/jquery.min.js"></script>
<script src="assets/vendor/jquery-migrate/jquery-migrate.min.js"></script>
<script src="assets/vendor/popper.js/dist/umd/popper.min.js"></script>
<script src="assets/vendor/bootstrap/bootstrap.min.js"></script>

<!-- Plugins -->
<script
	src="assets/vendor/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.concat.min.js"></script>
<script src="assets/vendor/chart.js/dist/Chart.min.js"></script>

<!-- Initialization  -->
<script src="assets/js/sidebar-nav.js"></script>
<script src="assets/js/dashboard-page-scripts.js"></script>
<script>
	$(document).ready(function() {
		$('#exampleModalCenter').on('show.bs.modal', function(event) {
			var tr = $(event.relatedTarget).closest('tr')
			var data0 = tr.find('td:eq(0)').html()
			var data1 = tr.find('td:eq(1)').html()
			var data2 = tr.find('td:eq(2)').html()
			var data5 = tr.find('td:eq(5)').html()
			var data6 = tr.find('td:eq(6)').html()
			var data7 = tr.find('td:eq(7)').html()
			var data8 = tr.find('td:eq(8)').html()
			$(this).find('.modal-body #cId').val(data0)
			$(this).find('.modal-body #clientName').val(data1)
			$(this).find('.modal-body #clientPhone').val(data2)
			$(this).find('.modal-body #clientAdres').val(data5)
			$(this).find('.modal-body #clientJdate').val(data6)
			$(this).find('.modal-body #clientEmail').val(data7)
			$(this).find('.modal-body #cRole').val(data8)
		})
	});
</script>
</head>
<!-- End Head -->

<body class="page-customer-info">
	<!-- Header (Topbar) -->
	<header class="astino-header u-header">
		<div class="u-header-left">
			<a class="u-header-logo" href="mngMain.do"> <img
				src="assets/logo.png" width="160">
			</a>
		</div>

		<div class="u-header-middle">
			<a class="js-sidebar-invoker u-sidebar-invoker" href="#!"
				data-is-close-all-except-this="true" data-target="#sidebar"> <i
				class="fa fa-bars u-sidebar-invoker__icon--open"></i>
			</a> <span class="js-sidebar-invoker u-sidebar-invoker"> 관리자님
				환영합니다. </span>
		</div>
	</header>
	<!-- End Header (Topbar) -->

	<main class="u-main" role="main">

		<!-- Sidebar -->
		<aside id="sidebar" class="astino-sidebar u-sidebar">
			<div class="u-sidebar-inner">
				<header class="u-sidebar-header">
					<a class="u-sidebar-logo" href="mngMain.do"> <img
						class="img-fluid" src="assets/img/logo.png" width="124"
						alt="Stream Dashboard">
					</a>
				</header>

				<nav class="u-sidebar-nav">
					<ul class="u-sidebar-nav-menu u-sidebar-nav-menu--top-level">
						<!-- 주간 리포트 -->
						<li class="u-sidebar-nav-menu__item"><a
							class="u-sidebar-nav-menu__link" href="mngMain.do"> <i
								class="fas fa-th-large u-sidebar-nav-menu__item-icon"></i> <span
								class="u-sidebar-nav-menu__item-title">주간 리포트</span>
						</a></li>
						<!-- End 주간 리포트 -->

						<!-- 공지사항 관리 -->
						<li class="u-sidebar-nav-menu__item"><a
							class="u-sidebar-nav-menu__link " href="boardList.do"> <i
								class="far fa-edit u-sidebar-nav-menu__item-icon"></i> <span
								class="u-sidebar-nav-menu__item-title">공지사항 관리</span>
						</a></li>
						<!-- End 공지사항 관리 -->

						<!-- 회원 관리 -->
						<li class="u-sidebar-nav-menu__item clearfix"><a
							class="u-sidebar-nav-menu__link active" href="cntList.do"
							data-target="#subMenu22"> <i
								class="fab fa-product-hunt u-sidebar-nav-menu__item-icon"></i> <span
								class="u-sidebar-nav-menu__item-title">회원관리</span> <i
								class="fa fa-angle-right u-sidebar-nav-menu__item-arrow"></i> <span
								class="u-sidebar-nav-menu__indicator"></span>
						</a>

							<ul id="subMenu22"
								class="u-sidebar-nav-menu u-sidebar-nav-menu--second-level text-center"
								style="display: none;">
								<li class="u-sidebar-nav-menu__item"><a
									class="u-sidebar-nav-menu__link " href="cntList.do"> <span
										class="u-sidebar-nav-menu__item-title">사용자 관리</span>
								</a></li>
								<li class="u-sidebar-nav-menu__item"><a
									class="u-sidebar-nav-menu__link" href="trnList.do"> <span
										class="u-sidebar-nav-menu__item-title">훈련사 관리</span>
								</a></li>
							</ul></li>
						<!-- End 회원 관리 -->

						<!-- 훈련사 수당 관리-->
						<li class="u-sidebar-nav-menu__item"><a
							class="u-sidebar-nav-menu__link" href="salaryList.do"> <i
								class="fas fa-list-alt u-sidebar-nav-menu__item-icon"></i> <span
								class="u-sidebar-nav-menu__item-title">훈련사 수당 관리</span>
						</a></li>
						<!-- End 훈련사 수당 관리 -->

						<!-- 관리자 로그아웃-->
						<li class="u-sidebar-nav-menu__item"><a
							class="u-sidebar-nav-menu__link" href="home.do"> <i
								class="fas fa-cogs u-sidebar-nav-menu__item-icon"></i> <span
								class="u-sidebar-nav-menu__item-title">로그아웃</span>
						</a></li>
						<!-- End 관리자 로그아웃 -->
					</ul>
				</nav>
			</div>
		</aside>
		<!-- End Sidebar -->

		<div class="u-content">
			<div class="u-body">
				<div class="row">
					<div class="col-md-12 mb-4">
						<div class="card h-100">
							<header class="card-header d-flex align-items-center">
								<h2 class="h2 card-header-title">사용자 목록</h2>
							</header>
							<!-- 사용자 정보 -->
							<div class="card-body">
								<div class="table-responsive">
									<form>
										<table id="table" class="table table-hover">
											<thead>
												<tr>
													<th scope="col" class="text-dark">ID</th>
													<th scope="col" class="text-dark">이 름</th>
													<th scope="col" class="text-dark">전화번호</th>
													<th scope="col" class="text-dark">상 태</th>
													<th scope="col" class="text-dark"></th>
													<th style="display: none;" scope="col" class="text-dark">주소</th>
													<th style="display: none;" scope="col" class="text-dark">가입날짜</th>
													<th style="display: none;" scope="col" class="text-dark">이메일</th>
													<th style="display: none;" scope="col" class="text-dark">권한</th>
												</tr>
											</thead>

											<tbody>
												<c:forEach var="client" items="${clients}">
													<tr>
														<td>${client.client_id }</td>
														<td>${client.name }</td>
														<td>${client.phone }</td>
														<td  style="display: none;" class="text-success">활동중</td>
														<td><input type="button"
															class="btn btn-outline-danger" value="상세보기"
															id="btnSearch" data-toggle="modal"
															data-target="#exampleModalCenter" /></td>
														<td style="display: none;">${client.adres1}</td>
														<td style="display: none;">${client.join_dt }</td>
														<td style="display: none;">${client.email}</td>
														<td style="display: none;">${client.role}</td>
													</tr>
												</c:forEach>
											</tbody>
										</table>
										<button type="button"
											class="btn btn-danger btn-large float-right"
											onclick="fnExcelReport('table','clientList');">Excel
											Download</button>
									</form>
									<my:paging jsFunc="goList" paging="${paging}" />
								</div>
							</div>
						</div>
					</div>
					<!-- End 사용자 정보 -->
				</div>
			</div>

			<!-- Footer -->
			<footer
				class="astino-footer u-footer d-md-flex align-items-md-center text-center text-md-left">
				<p class="h5 mb-2 mb-md-0">
					Made with love by <a class="text-danger"
						href="https://themespell.com/" target="_blank">Themespell</a>
				</p>

				<p class="h5 mb-0 ml-auto">
					&copy; 2020 <a class="text-danger" href="https://themespell.com/"
						target="_blank">Themespell</a>. All Rights Reserved.
				</p>
			</footer>
			<!-- End Footer -->
		</div>
	</main>

	<!-- Large Size Modal-->
	<div class="modal fade bd-example-modal-lg" id="exampleModalCenter"
		tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
		aria-hidden="true">
		<div class="modal-dialog modal-lg" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h3 class="modal-title" id="exampleModalLabel">회원 상세정보</h3>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<!-- Current Projects -->
					<div class="col-md-12 mb-4">
						<div class="card h-100">
							<div class="astino-pr-form card-body">
								<form action="mclientUpdate.do" role="form" id="transForm"
									name="transForm" method="post">
									<div class="form-group d-flex align-items-center">
										<label for="formGroupExampleInput">아이디</label> <input
											type="text" class="form-control" id="cId" placeholder=""
											readonly> <label for="formGroupExampleInput2">이
											름</label> <input type="text" class="form-control" id="clientName"
											placeholder="" readonly>
									</div>
									<div class="form-group d-flex align-items-center">
										<label for="formGroupExampleInput3">주 소</label> <input
											type="text" class="form-control" id="clientAdres"
											placeholder="" readonly>
									</div>
									<div class="form-group d-flex align-items-center">
										<label for="formGroupExampleInput3">연락처</label> <input
											type="text" class="form-control" id="clientPhone"
											placeholder="" readonly>
									</div>
									<div class="form-group d-flex align-items-center">
										<label for="formGroupExampleInput3">이메일</label> <input
											type="text" class="form-control" id="clientEmail"
											placeholder="" readonly>
									</div>
									<div class="form-group d-flex align-items-center">
										<label for="formGroupExampleInput4">가입날짜</label> <input
											type="text" class="form-control" id="clientJdate"
											placeholder="" readonly>
									</div>
									<div style="display: none;">
										<label for="formGroupExampleInput4">권한</label> <input
											type="text" class="form-control" id="cRole"></input>
									</div>
								</form>
							</div>
						</div>
						<div class="modal-footer">
							<a href="#" id="clientUpdate" class="btn btn-outline-danger">권한바꾸기</a>
							<button type="button" class="btn btn-outline-danger"
								data-dismiss="modal">닫기</button>
						</div>
					</div>
					<!-- End Current Projects -->
				</div>
			</div>
		</div>
	</div>
	<!-- Large Size Modal-->

	<script>
		//사용자 권한 훈련사로 수정
		$("#clientUpdate").on("click", function() {
			var clientId = $("#cId").val();
			var clientRole = $("#cRole").val();

			console.log( clientId + " / " + clientRole );
			
			$.ajax({
				url : "mclientUpdate.do",
				contentType : 'application/json',
				dataType : 'json',
				type : "post",
				data : JSON.stringify({
					client_id : clientId,
					role : clientRole
				}),
				success : function(data) {
					console.log(data);
					if (data == 1) {
						alert("권한이 수정되었습니다.");
						location.reload();
					} else {
						alert("권한 X");
					}
				},
				error : function() {
					alert("권한 수정에 실패했습니다.");
				}
			}); //end ajax

		});

		//페이징 처리
		function goList(p) {
			location.href = "cntList.do?page=" + p
		}
	</script>
	<script>
		function fnExcelReport(id, clientList) {
			var tab_text = '<html xmlns:x="urn:schemas-microsoft-com:office:excel">';
			tab_text = tab_text
					+ '<head><meta http-equiv="content-type" content="application/vnd.ms-excel; charset=UTF-8">';
			tab_text = tab_text
					+ '<xml><x:ExcelWorkbook><x:ExcelWorksheets><x:ExcelWorksheet>'
			tab_text = tab_text + '<x:Name>Trainer Sheet</x:Name>';
			tab_text = tab_text
					+ '<x:WorksheetOptions><x:Panes></x:Panes></x:WorksheetOptions></x:ExcelWorksheet>';
			tab_text = tab_text
					+ '</x:ExcelWorksheets></x:ExcelWorkbook></xml></head><body>';
			tab_text = tab_text + "<table border='1px'>";
			var exportTable = $('#' + id).clone();
			exportTable.find('input').each(function(index, elem) {
				$(elem).remove();
			});
			tab_text = tab_text + exportTable.html();
			tab_text = tab_text + '</table></body></html>';
			var data_type = 'data:application/vnd.ms-excel';
			var ua = window.navigator.userAgent;
			var msie = ua.indexOf("MSIE ");
			var fileName = clientList + '.xls';
			//Explorer 환경에서 다운로드
			if (msie > 0 || !!navigator.userAgent.match(/Trident.*rv\:11\./)) {
				if (window.navigator.msSaveBlob) {
					var blob = new Blob([ tab_text ], {
						type : "application/csv;charset=utf-8;"
					});
					navigator.msSaveBlob(blob, fileName);
				}
			} else {
				var blob2 = new Blob([ tab_text ], {
					type : "application/csv;charset=utf-8;"
				});
				var filename = fileName;
				var elem = window.document.createElement('a');
				elem.href = window.URL.createObjectURL(blob2);
				elem.download = filename;
				document.body.appendChild(elem);
				elem.click();
				document.body.removeChild(elem);
			}
		}
	</script>

</body>
</html>