package co.mngns.prj.user.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import co.mngns.prj.user.service.ClientService;
import co.mngns.prj.user.service.TrainerService;
import co.mngns.prj.user.vo.ClientVO;

@Controller
public class UserController {
	
	@Autowired
	TrainerService trnService;
	
	@Autowired ClientService cntService;
	 
	@RequestMapping(value = "/login.do")
	// 로그인 페이지
	public String login(Model model, ClientVO clientvo){
		model.addAttribute("client",  cntService.clientSelectList());
		return "notTiles/login";
	}

	@RequestMapping(value = "/joinForm.do")
	// 회원가입 페이지
	public String joinForm(Model model, ClientVO clientvo) {
		model.addAttribute("client", cntService.clientSelectList());
		return "notTiles/joinForm";
	}

	@RequestMapping(value = "/cntProfile.do")
	// 사용자 개인 프로필 페이지
	public String cntProfile() {
		return "client/cntProfile";
	}

	@RequestMapping(value = "/cntList.do")
	// 회원 목록 페이지
	public String cntList() {
		return "manager/user/cntList";
	}

	@RequestMapping(value = "/trnList.do")
	// 훈련사 목록 페이지
	public String trnList() {
		return "manager/user/trnList";
	}

	@RequestMapping(value = "/outList.do")
	// 탈퇴 회원 목록 페이지
	public String outList() {
		return "manager/user/outList";
	}
	
	@RequestMapping(value = "/tList.do")
	// 사용자 페이지의 훈련사 목록 페이지
	public String tList(Model model) {
		model.addAttribute("trainers", trnService.TrainerSelectList());
		return "client/tList";
	}
	
	@RequestMapping(value="/tDetail.do")
	// 훈련사 상세보기 페이지
	public String tDetail() {
		return "client/tDetail";
	}
	
	@RequestMapping(value = "/trnProfile.do")
	// 훈련사 개인 프로필 페이지
	public String trnProfile() {
		return "trainer/trnProfile";
	}

	
	
}
