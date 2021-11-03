<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="bradcam_area breadcam_bg">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="bradcam_text text-center">
						<h3>HEYYO의 훈련사를 소개합니다!</h3>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- END nav -->
	<section class="hero-wrap hero-wrap-2" style="background-image:"
		data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container">
			<div class="row no-gutters slider-text align-items-end">
				<div class="col-md-9 ftco-animate pb-5">
					<br> <br> <br>
				</div>
			</div>
		</div>
	</section>

	<div class="col-lg-44">
		<form action="#">
			<div class="form-group">
				<div class="input-group mb-3">
					<input type="text" id="address_kakao" name="address"
						class="form-control" onclick="execution_daum_address()"
						placeholder='주소를 입력해주세요.' onfocus="this.placeholder = ''"
						onblur="this.placeholder = '주소를 입력해주세요.'">
					<div class="input-group-append">
						<button class="btn" type="button">
							<i class="ti-search"></i>
						</button>
					</div>
				</div>
			</div>
			<button
				class="button rounded-0 primary-bg text-white w-100 btn_1 boxed-btn"
				type="submit" onclick="search()">검색하기</button>
		</form>
	</div>


	<div class="testmonial_area" id="tTable">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-lg-10">
					<c:forEach items="${trainers }" var="trainer">
						<form action="tDetail.do" id="tlistForm" name="tlistForm"
							method="post">
							<div class="testmonial_wrap">
								<div class="single_testmonial d-flex align-items-center"
									onclick="$(this).closest('form').submit()">
									<input type="hidden" id="client_id" name="client_id"
										value="${trainer.client_id }">
									<div class="test_thumb">
										<img src="img/testmonial/1.png" alt="">
									</div>
									<div class="test_content">
										<h4>${trainer.name } 훈련사</h4>
										<span>${trainer.work_loc1 } ${trainer.work_loc2 }</span> <span>평점
											${trainer.trn_avrg }점</span>
										<p>${trainer.intro_ttl }</p>
									</div>
								</div>
							</div>
						</form>
						<br>
						<br>
					</c:forEach>
				</div>
			</div>
		</div>
	</div>
	<nav class="blog-pagination justify-content-center d-flex">
		<ul class="pagination">
			<li class="page-item"><a href="#" class="page-link"
				aria-label="Previous"> <i class="ti-angle-left"></i>
			</a></li>
			<li class="page-item"><a href="#" class="page-link">1</a></li>
			<li class="page-item active"><a href="#" class="page-link">2</a>
			</li>
			<li class="page-item"><a href="#" class="page-link"
				aria-label="Next"> <i class="ti-angle-right"></i>
			</a></li>
		</ul>
	</nav>
	<br>
	<br>
	<br>
	<script
		src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
		function execution_daum_address() {
			new daum.Postcode(
					{
						oncomplete : function(data) {
							// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분입니다.
							document.getElementById("address_kakao").value = data.address; // 주소 넣기
						}
					}).open();
		}

		function search() {
			// Declare variables
			var div, filter, span, txtValue;
			div = document.getElementById("tDiv");
			span = document.getElementsByTagName("span");
			filter = document.getElementById('span1').innerHTML;
			console.log(filter);

			// Loop through all table rows, and hide those who don't match the search query
			for (i = 0; i < span.length; i++) {
				td = tr[i].getElementsByTagName("td")[0];
				if (td) {
					txtValue = td.textContent || td.innerText;
					if (txtValue.toUpperCase().indexOf(filter) > -1) {
						tr[i].style.display = "";
					} else {
						tr[i].style.display = "none";
					}
				}
			}
		}

		//페이징 처리
		/* let totalData; //총 데이터 수
		let dataPerPage; //한 페이지에 나타낼 글 수
		let pageCount = 10; //페이징에 나타낼 페이지 수
		let globalCurrentPage = 1; //현재 페이지

		$(document).ready(function() {
			//dataPerPage 선택값 가져오기
			dataPerPage = $("#dataPerPage").val();

			$.ajax({ // ajax로 데이터 가져오기
				method : "GET",
				url : "https://url/data?" + data,
				dataType : "json",
				success : function(d) {
					//totalData 구하기
					totalData = d.data.length;
				}
			});

			//글 목록 표시 호출 (테이블 생성)
			displayData(1, dataPerPage);

			//페이징 표시 호출
			paging(totalData, dataPerPage, pageCount, 1);
		}); */

		/* function run(id) {
			location.href="tDetails?client_id="+id
		} */
	</script>

</body>
</html>