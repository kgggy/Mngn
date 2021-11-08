<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags" %>
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
		<form name="search-form">
			<div class="form-group">
				<div class="input-group mb-3">
					<select name="location">
						<option selected value="">선택</option>
						<option value="loc1">서울특별시</option>
						<option value="loc2">인천광역시</option>
						<option value="loc3">대전광역시</option>
						<option value="loc4">광주광역시</option>
						<option value="loc5">대구광역시</option>
						<option value="loc6">부산광역시</option>
						<option value="loc7">울산광역시</option>
					</select> <select name="type">
						<option selected value="">선택</option>
						<option value="name">이름</option>
						<option value="adres">주소</option>
					</select> <input type="text" id="keyword" name="keyword"
						class="form-control" placeholder='내용을 입력해주세요.'
						onfocus="this.placeholder = ''"
						onblur="this.placeholder = '내용을 입력해주세요.'">
				</div>
			</div>
			<button
				class="button rounded-0 primary-bg text-white w-100 btn_1 boxed-btn"
				type="button" onclick="getSearchList()">검색하기</button>
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
										<h4>${trainer.name }훈련사</h4>
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
	<my:paging jsFunc="goList" paging="${paging}" />
	<br>
	<br>
	<br>
	<script
		src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
		function getSearchList() {
			$
					.ajax({
						type : 'GET',
						url : "getSearchList.do",
						data : $("form[name=search-form]").serialize(),
						success : function(result) {
							//테이블 초기화
							$('.col-lg-10').empty();
							let str = "";
							if (result.length >= 1) {
								result
										.forEach(function(item) {
											str += "<form action='tDetail.do' id='tlistForm' name='tlistForm' method='post'>";
											str += "<div class='testmonial_wrap'>";
											str += "<div class='single_testmonial d-flex align-items-center' onclick='$(this).closest(\'form\').submit()'>";
											str += "<input type='hidden' id='client_id' name='client_id' value='${trainer.client_id }'>";
											str += "<div class='test_thumb'>"
													+ "<img src='img/testmonial/1.png' alt=''>"
													+ "</div>";
											str += "<div class='test_content'>";
											str += "<h4>" + item.name + "훈련사"
													+ "</h4>" + "<span>"
													+ item.work_loc1
													+ item.work_loc2
													+ "</span>" + "<span>"
													+ "평점" + item.trn_avrg
													+ "점" + "</span>" + "<p>"
													+ item.intro_ttl + "</p>";
											str += "</div>";
											str += "<br>" + "<br>";
											str += "</div>";
											str += "</div>";
											str += "</form>";
											$('.col-lg-10').append(str);
										})
							}
						}
					});
		};
		function goList(p) {
			//searchFrm.page.value=p; //페이지 번호 받아서 폼태그에 넣어서 submit(폼 안에 페이지번호가 히든으로, 검색조건과 정렬방식도 가지고 넘어감)
			//searchFrm.submit();
			location.href = "tList.do?page=" + p
		}
		/*function search() {
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
		} */
	</script>

</body>
</html>