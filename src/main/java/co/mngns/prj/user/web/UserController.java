package co.mngns.prj.user.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserController {

	@RequestMapping(value = "/login.do")
	// 로그인 페이지
	public String login() {
		return "login";
	}

	@RequestMapping(value = "/joinForm.do")
	// 회원가입 페이지
	public String joinForm() {
		return "joinForm";
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
	public String tList() {
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