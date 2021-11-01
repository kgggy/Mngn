package co.mngns.prj.svc.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import co.mngns.prj.svc.service.ReserListService;

@Controller
public class SvcController {

	@Autowired
	ReserListService reser;

	@RequestMapping(value = "/careDc.do")
	// 돌봄서비스 설명
	public String careDc() {
		return "service/careDc";
	}

	@RequestMapping(value = "/walkDc.do")
	// 산책서비스 설명
	public String walkDc() {
		return "service/walkDc";
	}

	@RequestMapping(value = "/trainDc.do")
	// 훈련서비스 설명
	public String trainDc() {
		return "service/trainDc";
	}

	@RequestMapping(value = "/cResv.do")
	// 돌봄 상세 예약
	public String cResv() {
		return "service/cResv";
	}

	@RequestMapping(value = "/wResv.do")
	// 산책 상세 예약
	public String wResv() {
		return "service/wResv";
	}

	@RequestMapping(value = "/tResv.do")
	// 훈련 상세 예약
	public String tResv() {
		return "service/tResv";
	}

	@RequestMapping(value = "/pcResv.do")
	// 프로필을 통한 돌봄 상세 예약
	public String pcResv() {
		return "service/pcResv";
	}

	@RequestMapping(value = "/pwResv.do")
	// 프로필을 통한 산책 상세 예약
	public String pwResv() {
		return "service/pwResv";
	}

	@RequestMapping(value = "/ptResv.do")
	// 프로필을 통한 훈련 상세 예약
	public String ptResv() {
		return "service/ptResv";
	}

	@RequestMapping(value = "/payResult.do")
	// 결제완료 내역
	public String payResult(Model model) {
		model.addAttribute("payments", reser.ReserSelectList());
		return "service/payResult";
	}

	@RequestMapping(value = "/payment.do")
	// 결제창
	public String payment() {
		return "service/payment";
	}

	@RequestMapping(value = "/trnSal.do")
	public String trnSal() {
		// 훈련사 의뢰 및 정산 관리 페이지
		return "trnSal";
	}

	@RequestMapping(value = "/salesList.do")
	public String salesList() {
		// 판매관리
		return "manager/sales/salesList";
	}

	@RequestMapping(value = "/salaryList.do")
	public String salaryList() {
		// 정산관리
		return "manager/salary/salaryList";
	}

	@RequestMapping(value = "/svcList.do")
	public String svcList() {
		// 서비스관리
		return "manager/service/svcList";
	}

	@RequestMapping(value = "/svcDetail.do")
	public String svcDetail() {
		// 서비스 상세보기/수정
		return "manager/service/svcDetail";
	}

}
