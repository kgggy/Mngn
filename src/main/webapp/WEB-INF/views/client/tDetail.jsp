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
</style>
</head>

<body>
	<!-- testmonial_area_start  -->
	<div id="light" class="modal">
		<div class="white_content modal-content" align="center">
			<div>
				<div class="time">
					<input type="checkbox"><span>돌봄</span> <input
						type="checkbox"><span>돌봄</span> <input type="checkbox"><span>돌봄</span>
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<a class="genric-btn danger-border circle arrow">1시간</a> <a
						class="genric-btn danger-border circle arrow" id="two">2시간</a> <a
						class="genric-btn danger-border circle arrow" id="three">3시간</a>
				</div>
				<div>
					<span>₩18,000</span><span>₩34,000</span><span>₩50,000</span>
				</div>
			</div>
			<br /> <a href="javascript:resv()" class="boxed-btn3" id="rbtn">예약
				돌봄</a>
		</div>
	</div>
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

		<div class="container">
			<div class="row">
				<div class="col-lg-8 posts-list">
					<div class="single-post">
						<div class="feature-img">
							<img class="img-fluid" src="img/blog/single_blog_1.png" alt="">
						</div>
						<hr>
						<h3>인적사항</h3>
						<table>
							<tr>
								<td style="width: 130px;">이름</td>
								<td>${trainer.name }</td>
							</tr>
							<tr>
								<td>출생년도</td>
								<td>${trainer.trn_birth_dt }</td>
							</tr>
							<tr>
								<td>성별</td>
								<td>${trainer.gender }</td>
							</tr>
							<tr>
								<td>방문지역</td>
								<td>${trainer.work_loc1 }${trainer.work_loc2 }</td>
							</tr>
							<tr>
								<td>회원평점</td>
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
														<a>${review.name }</a>
														<a>${review.star_shape }</a>
													</h5>
													<p class="date">${review.reg_dt }</p>
												</div>

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
											<tbody class="cal-body"></tbody>

										</table>
										<button id="abtn"
											class="button rounded-0 primary-bg text-white w-100 btn_1 boxed-btn"
											type="button" data-toggle="modal" data-target="#light">예약하기</button>
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
			  minDate:new Date(tomorrowDate),
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
	
		function tomorrowDate(){ 
			var tomorrowDate =""; 
			var dd = today.getDate()+1; 
			var mm = today.getMonth()+1; //January is 0! 
			var yyyy = today.getFullYear(); 
			if(dd<10) { 
			dd='0'+dd 
			} 
			if(mm<10) { 
			mm='0'+mm 
			}
			tomorrowDate = yyyy+'-'+mm+'-'+dd; 
			return tomorrowDate; 
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
			        let fullDate = yy + '.' + init.addZero(mm + 1) + '.' + init.addZero(countDay + 1);
			        trtd += '<td class="day';
			        trtd += (markToday && markToday === countDay + 1) ? ' today" ' : '"';
			        trtd += ` data-date="${countDay + 1}" data-fdate="${fullDate}">`;
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
			  if (e.target.classList.contains('day')) {
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

			
	</script>

</body>
</html>