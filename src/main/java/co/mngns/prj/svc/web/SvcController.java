package co.mngns.prj.svc.web;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import co.mngns.prj.pet.vo.PetVO;
import co.mngns.prj.svc.service.BillService;
import co.mngns.prj.svc.service.ReserListService;
import co.mngns.prj.svc.vo.BillVO;
import co.mngns.prj.svc.vo.ReserListVO;
import co.mngns.prj.svc.vo.SvcVO;
import co.mngns.prj.user.service.ClientService;
import co.mngns.prj.user.vo.ClientVO;
import co.mngns.prj.user.vo.TrainerVO;

@Controller
public class SvcController {

	@Autowired
	ReserListService rlist;
	@Autowired
	ClientService clist;
	@Autowired
	BillService blist;

	@RequestMapping(value = "/careDc.do")
	// 돌봄서비스 설명
	public String careDc(Model model) {
		return "service/careDc";
	}

	@RequestMapping(value = "/walkDc.do")
	// 산책서비스 설명
	public String walkDc(Model model, HttpSession session, ReserListVO reser, SvcVO svc) {
		model.addAttribute("serviceTerm", rlist.serviceTerm(reser));
		session.setAttribute("term", reser.getTerm());
		return "service/walkDc";
	}

	@RequestMapping(value = "/trainDc.do")
	// 훈련서비스 설명
	public String trainDc(Model mode) {
		return "service/trainDc";
	}

	@RequestMapping(value = "/cResv.do")
	// 돌봄 상세 예약
	public String cResv(Model model, ReserListVO reser, PetVO pet, ClientVO client) {
		model.addAttribute("petList", rlist.petSelectList(pet));
		model.addAttribute("addlist", rlist.clientAdd(client));
		return "service/cResv";
	}

	@RequestMapping(value = "/trnSelectList.do")
	@ResponseBody
	// 훈련사 선택
	public List<TrainerVO> trnSelectList(ReserListVO reser) {
		return rlist.trnSelectList(reser);
	}

	@RequestMapping(value = "/wResv.do")
	// 산책 상세 예약
	public String wResv(Model model, HttpSession session, ClientVO client, PetVO pet, SvcVO svc) {
		client.setClient_id((Integer) session.getAttribute("id"));
		pet.setClient_id((Integer) session.getAttribute("id"));
		model.addAttribute("addList", rlist.clientAdd(client));
		model.addAttribute("petList", rlist.petSelectList(pet));

		return "service/wResv";
	}

	@RequestMapping(value = "/payMethod.do")
	// 결제창
	public String payment(Model model, HttpSession session, @ModelAttribute("reser") ReserListVO reser) {
		reser.setClient_id1((Integer) session.getAttribute("id"));
		session.setAttribute("reser", reser);
		System.out.println("======================="+reser);
		return "service/payMethod";
	}
	/*
	 * @RequestMapping(value = "/rinsert.do") // 결제완료 내역 public String
	 * rinsert(ReserListVO reser) { rlist.reserInsert(reser); return
	 * "service/payResult"; }
	 */
	
	@RequestMapping(value = "/payResult.do")
	// 결제완료 내역
	public String payResult(ReserListVO reser, HttpSession session, BillVO bill) {
		reser = (ReserListVO)session.getAttribute("reser");
		String[] pet = reser.getPet_id();
		if(pet != null && pet.length > 0) {
			reser.setPet_id1(Integer.parseInt(pet[0]));
			if(pet.length == 2)
				reser.setPet_id2(Integer.parseInt(pet[1]));
		}
		reser.setClient_id1((Integer)session.getAttribute("id"));
		System.out.println(reser);
		rlist.reserInsert(reser);
		bill.setReser_no(reser.getReser_no());
		blist.billInsert(bill);
		return "service/payResult";
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

	/*
	 * @RequestMapping(value = "/trnSal.do") public String trnSal() { // 훈련사 의뢰 및 정산
	 * 관리 페이지 return "trnSal"; }
	 */

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