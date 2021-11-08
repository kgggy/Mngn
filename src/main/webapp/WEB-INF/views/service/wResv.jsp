<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="css/reservation.css">
    <title>서비스 예약</title>
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <script>
        window.onload = function () {

            function trn() {
                var date = $("#date_1").val();
                var svc = $("input[name=svc_bgn_tm]:checked").val();
                if (!date || !svc) {
                    return;
                }
                $.ajax({
                        url: "trnSelectList.do",
                        type: "get",
                        data: {
                            reser_dt: date,
                            work_time: svc
                        },
                        dataType: "json",
                        success: function (data) {
                            let str = "";
                            for (i = 0; i < data.length; i++) {
                                str += '<input type="radio" id="client_id' + i +
                                    '" name="client_id2" value="' + data[i].client_id2 +
                                    '"/> <label for="client_id' + i + '" class="radio"><span>' +
                                    data[i].name + '</span></label>'
                            }
                            $("#trnSelect").empty();
                            if (data.length == 0) {
                                str = "훈련사가 없습니다! 다른 시간을 선택해주세요.";
                            }
                            $("#trnSelect").append(str);
                        }
                    });
            };

            $("#address_kakao").on("click", function () {
                new daum.Postcode({
                    oncomplete: function (data) { //선택시 입력값 세팅
                        $("#address_kakao").val(data.address); // 주소 넣기
                        $("#input[name='address_detail']").focus();
                    }
                }).open();
            });

            $("input[type='checkbox']").on("click", function () {
                var count = $("input:checked[type='checkbox']").length;
                if (count > 2) {
                    this.checked = false;
                    alert("최대 2마리까지만 선택가능합니다.");
                }
            });

            $("#date_1").datepicker({
                dateFormat: "yy-mm-dd",
                minDate: new Date(),
                onSelect: function (date, datepicker) {
                    trn();
                }
            });

            $("input[name='svc_bgn_tm']").on("change", function () {
                trn();
            })

            $(".park").on("click", function () {
                 window.open("map.do", "근처공원 선택",
                  "width=1000px,height=700px,scrollbars=yes,left=450px,top=120px");
            });

        }

        function parkAdd(data1, data2) {
            $("#address_kakao").val(data1);
            $("#address_detail").val(data2);
        }

        //요구 속성 추가
        function Rform() {
            if ($("input[name='svc_bgn_tm']:checked").length == 0) {
                alert("시간을 선택하세요.");
                return;
            }
            if ($("input[name='pet_id']:checked").length == 0) {
                alert("반려동물을 선택하세요.");
                return;
            }
            if ($("input[name='client_id2']:checked").length == 0) {
                alert("훈련사를 선택하세요.");
                return;
            } else {
            	$("<input>").attr("name","name").attr("type","hidden")
            				.attr("value", $("input[name='client_id2']:checked").next().text())
            	.appendTo( $("#payForm"))
            	$("input[name='pet_id']:checked").each(function( index ) {
            		$("<input>").attr("name","pet_name").attr("type","hidden")
    							.attr("value", $(this).next().text())
    				.appendTo( $("#payForm"))
            	});
               $("#payForm").submit();
            }
        };
    </script>
</head>

<body>
    <!-- bradcam_area_start -->
    <div class="bradcam_area breadcam_bg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="bradcam_text text-center">
                        <h3>산책 서비스 상세 예약</h3>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- bradcam_area_end -->
    <div class="testbox">
        <form action="payMethod.do" method="post" id="payForm">
        <input type="hidden" id="service" name="term" value="${svcVO.term }" readonly> 
        <input type="hidden" id="service" name="prc" value="${svcVO.prc }" readonly>
            <div class="item">
                <h3>
                    주소<span class="required">*</span>&nbsp;&nbsp;<small>*입력한
                        주소의 반경 3km를 산책합니다.</small>
                    <button type="button" class="park">근처공원선택</button>
                </h3>
                <input type="text" id="address_kakao" name="adres1" readonly value="${addList.adres1 }" /> <input
                    type="text" id="address_detail" name="adres2" value="${addList.adres2 }" />
            </div>
            <div class="input_date date_time">
                <h3>
                    날짜 및 시간선택<span class="required">*</span>
                </h3>
                <input type="text" class="datepicker" id="date_1" name="reser_dt" required> <span> <i
                        class="fas fa-calendar-alt"></i></span>
            </div>
            <div class="question">
                <div class="question-answer">
                    <input type="radio" name="svc_bgn_tm" id="radio_1" value="10">
                    <label for="radio_1" class="radio"><span id="span">10시</span></label>
                    <input type="radio" name="svc_bgn_tm" id="radio_2" value="11">
                    <label for="radio_2" class="radio"><span id="span">11시</span></label>
                    <input type="radio" name="svc_bgn_tm" id="radio_3" value="12">
                    <label for="radio_3" class="radio"><span id="span">12시</span></label>
                    <input type="radio" name="svc_bgn_tm" id="radio_4" value="13">
                    <label for="radio_4" class="radio"><span id="span">13시</span></label>
                    <input type="radio" name="svc_bgn_tm" id="radio_5" value="14">
                    <label for="radio_5" class="radio"><span id="span">14시</span></label>
                    <br /> <input type="radio" name="svc_bgn_tm" id="radio_6" value="15"> <label for="radio_6"
                        class="radio"><span id="span">15시</span></label> <input type="radio" name="svc_bgn_tm"
                        id="radio_7" value="16"> <label for="radio_7" class="radio"><span id="span">16시</span></label>
                    <input type="radio" name="svc_bgn_tm" id="radio_8" value="17"> <label for="radio_8"
                        class="radio"><span id="span">17시</span></label> <input type="radio" name="svc_bgn_tm"
                        id="radio_9" value="18"> <label for="radio_9" class="radio"><span id="span">18시</span></label>
                    <input type="radio" name="svc_bgn_tm" id="radio_10" value="19"> <label for="radio_10"
                        class="radio"><span id="span">19시</span></label> <input type="radio" name="svc_bgn_tm"
                        id="radio_11" value="20"> <label for="radio_11" class="radio"><span id="span">20시</span></label>
                </div>
            </div>
            <div class="question">
                <h3>
                    산책 대상<span class="required">*</span>&nbsp;&nbsp;<small>*최대
                        2마리만 가능하며, 초과 시 훈련사가 임의로 추가금을 요구할 수 있습니다. </small>
                </h3>
                <div class="question-answer checkbox-item">
                    <div>
                        <c:forEach items="${petList }" var="pet" varStatus="sts">
                            <input type="checkbox" value="${pet.pet_id }" id="check_${sts.count }" name="pet_id" />
                            <label for="check_${sts.count }" class="check"><span>${pet.name }</span></label>
                        </c:forEach>
                    </div>
                </div>
            </div>
            <br />
            <div class="question">
                <h3>
                    훈련사 선택<span class="required">*</span>
                </h3>
                <div class="question-answer" id="trnSelect">
                	
                </div>
            </div>
            <div class="item">
                <h3>특이사항</h3>
                <textarea rows="10" placeholder="최대 1000자까지 입력가능합니다." name="memo"></textarea>
                <small class="caution">⚠️ 맹견 5종 [도사견, 핏불테리어, 스태퍼드셔 (불)테리어,
                    로트 와일러]은 필수 입마개를 착용할 것을 알려드립니다.</small>
            </div>
            <br />
            <div class="btn-block">
                <button type="button" id="abtn" onclick="Rform()">예약</button>
            </div>
        </form>
    </div>

    <div class="modal fade" id="map-modal" role="map" aria-labelledby="map" aria-hidden="true" tabindex="-1">
        <!--modal-dailog : 모달 창 영역 설정-->
        <div class="modal-dialog">
            <!--modal-content : 모달 창 콘텐츠 영역 설정-->
            <div class="modal-content">
                <!--modal-header : 모달 창 콘텐츠의 헤더영역-->
                <div class="modal-header modal-header-custom">
                    <h4 class="modal-title modal-title-custom">지도</h4>
                </div>
                <!--modal-body : 모달 창 콘텐츠의 바디영역-->
                <div class="modal-body" id="map-body">
                    <!-- iframe src="/map?id={id}" -->
                    <iframe id="go-map"></iframe>
                </div>
                <!--modal-footer : 모달 창 콘텐츠의 푸터영역-->
                <div class="modal-footer">
                    <div class="modal-footer-custom">
                        <button type="button" class="btn btn-danger" data-bs-dismiss="modal">닫기</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>

</html>