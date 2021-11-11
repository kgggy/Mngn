<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>

/* ======== Calendar ======== */
.my-calendar {
	width: 700px;
	margin: 30px;
	padding: 0px 20px 10px;
	text-align: center;
	font-weight: 800;
	border: none;
	cursor: default;
}

.my-calendar .clicked-date {
	
}

.my-calendar .calendar-box {
	width: 58%;
	background: white;
	margin-left: -75px;
}

.clicked-date .cal-day {
	font-size: 24px;
}

.clicked-date .cal-date {
	font-size: 130px;
}

.ctr-box {
	padding: 16px;
	margin-bottom: 20px;
	font-size: 20px;
	background: #f45c25;
	color: white;
}

.ctr-box .btn-cal {
	position: relative;
	float: left;
	width: 25px;
	height: 25px;
	margin-top: 5px;
	font-size: 16px;
	cursor: pointer;
	border: none;
	background: none;
}

.ctr-box .btn-cal:after {
	content: '<';
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	line-height: 25px;
	font-weight: bold;
	font-size: 20px;
}

.ctr-box .btn-cal.next {
	float: right;
}

.ctr-box .btn-cal.next:after {
	content: '>';
}

.cal-table {
	width: 100%;
}

.cal-table th {
	width: 14.2857%;
	padding-bottom: 5px;
	font-size: 16px;
	font-weight: 900;
}

.cal-table td {
	padding: 3px 0;
	height: 50px;
	font-size: 15px;
	vertical-align: middle;
}

.cal-table td.day {
	position: relative;
	cursor: pointer;
}

.cal-table td.tlDate {
	color: #ededec;
	pointer-events: none;
}

.cal-table td.today {
	background: #ffd255;
	border-radius: 50%;
	color: #fff;
}

.cal-table td.day-active {
	background: #ff8585;
	border-radius: 50%;
	color: #fff;
}

.cal-table td.has-event:after {
	content: '';
	display: block;
	position: absolute;
	left: 0;
	bottom: 0;
	width: 100%;
	height: 4px;
	background: #FFC107;
}

#rbtn {
	width: 200px;
	margin: 0 auto;
}

#two {
	margin-left: 43px;
}

#three {
	margin: 0 40px;
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
	z-index: 30;
	background-color: #fefefe;
	margin: auto;
	padding: 20px;
	border: 1px solid #888;
	width: 38%;
	height: auto;
	top: 30%;
	border-radius: 20px;
	top: 30%;
	background-color: #fefefe;
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

#emp {
	margin-left: 50px;
}

span {
	padding: 10px 9%;
	margin-top: 5px;
}

.list_img {
	display: inline-block;
	width: 202px;
	height: 170px;
	overflow: hidden;
	object-fit: cover;
	border-radius: 5px;
	float: left;
}

.boxed-btn3 {
	border: none;
}

.boxed-btn3:hover {
	opacity: 0.8;
	cursor: pointer;
}
</style>
</head>

<body>
	<!-- testmonial_area_start  -->
	<div id="light" class="modal">
		<div class="white_content modal-content" align="center">
			<form action="pwResv.do" id="form">
				<input type="hidden" name="term"> <input type="hidden"
					name="prc"><input type="hidden" name="svc_id">
				<div>
					<div class="time">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<c:forEach items="${serviceTerm }" var="time">
							<a class="genric-btn danger-border circle arrow" id="term"
								data-prc="${time.prc}" data-svc_id="${time.svc_id }"
								data-time="${time.term }">${time.term }시간</a>
						</c:forEach>
					</div>
					<div>
						<c:forEach items="${serviceTerm }" var="time">
						&nbsp;&nbsp;<span>₩${time.prc }</span>&nbsp;
						</c:forEach>
					</div>
				</div>
				<br />
				<button type="button" class="boxed-btn3" onclick="resv()">예약
					하기</button>
			</form>
		</div>
	</div>
	<!-- 예약하기 모달 종료 -->
	<div class="bradcam_area breadcam_bg">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="bradcam_text text-center">
						<h3>${trainer.name }훈련사프로필</h3>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- END nav -->
	<section class="hero-wrap hero-wrap-2">
		<div class="overlay"></div>
		<div class="container">
			<div class="row no-gutters slider-text align-items-end">
				<div class="col-md-9 ftco-animate pb-5"></div>
			</div>
		</div>
	</section>
	<br>
	<br>
	<h2 align=center
		style="font-weight: bold; width: fit-content; margin: auto;">${trainer.intro_ttl }</h2>
	<!--================Blog Area =================-->
	<section class="blog_area single-post-area section-padding">
		<br> <br>
		<div class="container">
			<div class="row">
				<div class="col-lg-8 posts-list">
					<div class="single-post">
						<div class="feature-img">
							<img class="list_img" src="img/blog/single_blog_1.png" alt="">
						</div>
						<h3>&nbsp;&nbsp;&nbsp;인적사항</h3>
						<table>
							<tr>
								<td style="width: 140px; padding-left: 20px;">이름</td>
								<td>${trainer.name }</td>
							</tr>
							<tr>
								<td style="width: 140px; padding-left: 20px;">출생년도</td>
								<td>${trainer.trn_birth_dt }</td>
							</tr>
							<tr>
								<td style="width: 140px; padding-left: 20px;">성별</td>
								<td>${trainer.gender }</td>
							</tr>
							<tr>
								<td style="width: 140px; padding-left: 20px;">방문지역</td>
								<td>${trainer.work_loc1 }${trainer.work_loc2 }</td>
							</tr>
							<tr>
								<td style="width: 140px; padding-left: 20px;">회원평점</td>
								<td>${trainer.trn_avrg }점</td>
							</tr>
						</table>
						<hr>
						<h3>자기소개</h3>
						<p class="excert" style="color: black;">${trainer.intro_ttl }</p>
					</div>

					<hr>

					<h3>경력 및 자격</h3>
					<div class="blog-author">
						<div class="media align-items-center">
							<img src="img/blog/author.png" alt="">
							<div class="media-body">
								<a href="#">
									<h4>xxx 자격증</h4>
								</a>
								<p>한국애견협회(KKC)</p>
							</div>
						</div>
					</div>
					<div class="blog-author">
						<div class="media align-items-center">
							<img src="img/blog/author.png" alt="">
							<div class="media-body">
								<a href="#">
									<h4>xxx 자격증</h4>
								</a>
								<p>한국애견협회(KKC)</p>
							</div>
						</div>
					</div>
					<div class="blog-author">
						<div class="media align-items-center">
							<img src="img/blog/author.png" alt="">
							<div class="media-body">
								<a href="#">
									<h4>xxx 자격증</h4>
								</a>
								<p>한국애견협회(KKC)</p>
							</div>
						</div>
					</div>

					<div class="comments-area">
						<h3>고객 후기</h3>
						<br>
						<c:forEach items="${reviews }" var="review">
							<div class="comment-list">
								<div class="single-comment justify-content-between d-flex">
									<div class="user justify-content-between d-flex">
										<div class="thumb">
											<img src="img/comment/comment_3.png" alt="">
										</div>
										<div class="desc">
											<p class="comment">${review.cntn }</p>
											<div class="d-flex justify-content-between">
												<div class="d-flex align-items-center">
													<h5>
														<a>${review.name }</a> <a>${review.star_shape }</a>
													</h5>
													<p class="date">${review.reg_dt }</p>
												</div>
												<input type="hidden" id="client_id" name="client_id">
											</div>
										</div>
									</div>
								</div>
							</div>
						</c:forEach>
						<button
							class="button rounded-0 primary-bg text-white w-100 btn_1 boxed-btn"
							type="button" onclick="location.href='rList.do'">+ 더보기</button>
					</div>

				</div>
				<div class="col-lg-4">
					<div class="blog_right_sidebar">
						<aside class="single_sidebar_widget popular_post_widget">
							<h3 class="widget_title" style="font-weight: bold" align="center">예약
								가능 날짜</h3>
							<div class="container">
								<div class="my-calendar clearfix">
									<div class="clicked-date" style="display: none">
										<div class="cal-day" style="display: none"></div>
										<div class="cal-date" style="display: none"></div>
									</div>
									<div class="calendar-box">
										<div class="ctr-box clearfix">
											<button type="button" title="prev" class="btn-cal prev">
											</button>
											<span class="cal-month"></span> <span class="cal-year"></span>
											<button type="button" title="next" class="btn-cal next">
											</button>
										</div>
										<table class="cal-table">
											<thead>
												<tr>
													<th>S</th>
													<th>M</th>
													<th>T</th>
													<th>W</th>
													<th>T</th>
													<th>F</th>
													<th>S</th>
												</tr>
											</thead>
											<tbody class="cal-body" onclick="ckBtn()"></tbody>

										</table>
										<button id="abtn"
											class="button rounded-0 primary-bg text-white w-100 btn_1 boxed-btn1"
											type="button" data-toggle="modal" data-target="#light"
											data-trnId="${trainer.client_id }">예약하기</button>
									</div>
								</div>
								<!-- // .my-calendar -->
							</div>
						</aside>
					</div>
				</div>
			</div>
		</div>
	</section>


	<script>
      const init = {
           monList: ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'],
           dayList: ['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday'],
           today: new Date(),
           monForChange: new Date().getMonth(),
           activeDate: new Date(),
           getFirstDay: (yy, mm) => new Date(yy, mm, 1),
           getLastDay: (yy, mm) => new Date(yy, mm + 1, 0),
           nextMonth: function () {
             let d = new Date();
             d.setDate(1);
             d.setMonth(++this.monForChange);
             this.activeDate = d;
             return d;
           },
           prevMonth: function () {
             let d = new Date();
             d.setDate(1);
             d.setMonth(--this.monForChange);
             this.activeDate = d;
             return d;
           },
           addZero: (num) => (num < 10) ? '0' + num : num,
           activeDTag: null,
           getIndex: function (node) {
             let index = 0;
             while (node = node.previousElementSibling) {
               index++;
             }
             return index;
           }
      };

      const $calBody = document.querySelector('.cal-body');
      const $btnNext = document.querySelector('.btn-cal.next');
      const $btnPrev = document.querySelector('.btn-cal.prev');
         

      /**
       * @param {number} date
       * @param {number} dayIn
      */
      function loadDate (date, dayIn) {
        document.querySelector('.cal-date').textContent = date;
        document.querySelector('.cal-day').textContent = init.dayList[dayIn];
      }

      /**
       * @param {date} fullDate
       */
      function loadYYMM (fullDate) {
           let yy = fullDate.getFullYear();
           let mm = fullDate.getMonth();
           let firstDay = init.getFirstDay(yy, mm);
           let lastDay = init.getLastDay(yy, mm);
           let markToday;  // for marking today date
           
           if (mm === init.today.getMonth() && yy === init.today.getFullYear()) {
             markToday = init.today.getDate();
           }

           document.querySelector('.cal-month').textContent = init.monList[mm];
           document.querySelector('.cal-year').textContent = yy;

           let trtd = '';
           let startCount;
           let countDay = 0;
           for (let i = 0; i < 6; i++) {
             trtd += '<tr>';
             for (let j = 0; j < 7; j++) {
               if (i === 0 && !startCount && j === firstDay.getDay()) {
                 startCount = 1;
               }
               if (!startCount) {
                 trtd += '<td>'
               } else {
                 let fullDate = yy + "" + init.addZero(mm + 1) + "" + init.addZero(countDay + 1);
                 let tdDisable="";
                  if(fullDate < lastDate()) {
                     tdDisable="tlDate"
               }
                 trtd += '<td class="day '+tdDisable+'';
                 trtd += (markToday && markToday === countDay + 1) ? ' today" ' : '"';
                 trtd += `data-date="\${countDay + 1}" data-fdate="\${fullDate}">`;
               }
               trtd += (startCount) ? ++countDay : '';
               if (countDay === lastDay.getDate()) { 
                 startCount = 0; 
               }
               trtd += '</td>';
             }
             trtd += '</tr>';
           }
           
           $calBody.innerHTML = trtd;
           
           function lastDate() {
                var date = new Date();
                var yyyy = date.getFullYear();
                var mm = date.getMonth() + 1;
                var dd = date.getDate();
                
                if(mm<10) mm = "0" + mm;
                if(dd < 10) dd = "0" + dd;
                
                return yyyy + "" +  mm + "" + dd;
           }
             
             
         
      }

         /**
          * @param {string} val
          */
         function createNewList (val) {
           let id = new Date().getTime() + '';
           let yy = init.activeDate.getFullYear();
           let mm = init.activeDate.getMonth() + 1;
           let dd = init.activeDate.getDate();
           const $target = $calBody.querySelector(`.day[data-date="${dd}"]`);

           let date = yy + '.' + init.addZero(mm) + '.' + init.addZero(dd);
           
           let eventData = {};
           eventData['date'] = date;
           eventData['memo'] = val;
           eventData['complete'] = false;
           eventData['id'] = id;
           init.event.push(eventData);
           $todoList.appendChild(createLi(id, val, date));
         }
          
         loadYYMM(init.today);
         
         loadDate(init.today.getDate(), init.today.getDay());

         $btnNext.addEventListener('click', () => loadYYMM(init.nextMonth()));
         $btnPrev.addEventListener('click', () => loadYYMM(init.prevMonth()));

         $calBody.addEventListener('click', (e) => {
           if (e.target.classList.contains('day') && !e.target.classList.contains('tlDate')) {
             if (init.activeDTag) {
               init.activeDTag.classList.remove('day-active');
             }
             let day = Number(e.target.textContent);
             loadDate(day, e.target.cellIndex);
             e.target.classList.add('day-active');
             init.activeDTag = e.target;
             init.activeDate.setDate(day);
            /*  reloadTodo(); */
           }
           });
         
         $('#light').on('show.bs.modal', function (e) {
              $('#client_id').val($(event.target).data('trnId'))
            })

         
         function resv() {
             var time = $(".time .focus");
             if (time.length == 0) {
                alert("시간을 선택해주세요.");
                return;
             } else {
                $("input[name=prc]").val(time.data("prc"));
                $("input[name=term]").val(time.data("time"));
                $("#form").submit();
             }
          }
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
         
         //예약하기 버튼 활성화
         function ckBtn() {
        	 if($('.cal-table').hasClass("day day-active"))
        		 console.log("dd");
        		 $('#abtn').attr({"class": "boxed-btn", "data-toggle":"modal", "data-target":"#light", "data-trnId": "${trainer.client_id }"});
         }
         
   </script>
</body>
</html>
