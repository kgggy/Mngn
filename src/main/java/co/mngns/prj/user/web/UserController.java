package co.mngns.prj.user.web;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import co.mngns.prj.board.service.ReviewService;
import co.mngns.prj.board.vo.ReviewVO;
import co.mngns.prj.common.vo.Paging;
import co.mngns.prj.user.service.ClientService;
import co.mngns.prj.user.service.TrainerService;
import co.mngns.prj.user.vo.ClientVO;
import co.mngns.prj.user.vo.TrainerVO;

@Controller
public class UserController {

	@Autowired
	TrainerService trnService;

	@Autowired
	ClientService cntService;
	@Autowired
	ReviewService reviewService;

	@PostMapping(value = "/login.do")
	// 로그인 처리페이지
	public String login(Model model, ClientVO clientvo, HttpSession session, RedirectAttributes redirectAttributes) {
		ClientVO vo = cntService.clientLogin(clientvo);
		String message = "";
		String page = "";
		if (vo != null) {
			
			if (vo.getRole() ==1) {
				
				page = "redirect:cntMain.do";
			}
			else if(vo.getRole()==2) {
				page = "redirect:trnMain.do";
				
			} else if (vo.getRole()==3) {
				
				page = "redirect:mngMain.do";

			}
			message = vo.getName()  + "님 환영합니다.";
			page = "redirect:cntMain.do";
			message = vo.getName() + "님 환영합니다.";
			redirectAttributes.addAttribute("message", message);
			session.setAttribute("id", vo.getClient_id()); // 세션객체에 아이디와 권한을 담는다.
			session.setAttribute("password", vo.getPwd());
			session.setAttribute("name", vo.getName());
			session.setAttribute("adres1", vo.getAdres1());
			session.setAttribute("adres2", vo.getAdres2());

		} else {
			page = "login";
			message = clientvo.getClient_id() + "는 존재하지 않거나 패스워드가 틀렸습니다.";

		}

		model.addAttribute("message", message);
		return page;
	}

	@GetMapping(value = "/login.do")
	// 로그인 페이지
	public String loginForm(Model model, ClientVO clientvo) {
		// model.addAttribute("client", cntService.clientSelectList());
		return "login";

	}

	@RequestMapping(value = "/joinForm.do")
	// 회원가입 페이지
	public String joinForm(Model model, ClientVO clientvo) {
		model.addAttribute("client", cntService.clientSelectList());
		return "joinForm";
	}

	@RequestMapping(value = "/cntProfile.do")
	// 사용자 개인 프로필 페이지
	public String cntProfile(ClientVO clientvo, HttpSession session) {
		
		clientvo.setClient_id((Integer)session.getAttribute("id"));
		return "client/cntProfile";
	}

//	@RequestMapping(value = "/cntList.do")
//	// 회원 목록 페이지
//	public String cntList() {
//		return "manager/user/cntList";
//	}

	@RequestMapping(value = "/cntReg.do")
	// 회원 등록
	public String clientInsert(ClientVO cnt) {

		cntService.clientInsert(cnt);
		return "redirect:login.do";
	}

//	@RequestMapping(value = "/trnList.do")
//	// 훈련사 목록 페이지
//	public String trnList() {
//		return "manager/user/trnList";
//	}

	@RequestMapping(value = "/outList.do")
	// 탈퇴 회원 목록 페이지
	public String outList() {
		return "manager/user/outList";
	}

	@RequestMapping(value = "/tList.do")
	// 사용자 페이지의 훈련사 목록 페이지
	public String tList(Model model, Paging paging, TrainerVO vo) {
		// 페이징 처리
		paging.setPageUnit(5);
		vo.setStart(paging.getFirst());
		vo.setEnd(paging.getLast());
		paging.setTotalRecord(trnService.trnCount(vo));
		model.addAttribute("trainers", trnService.TrainerSelectList(vo));
		return "client/tList";
	}

	@RequestMapping(value = "/tDetail.do")
	// 훈련사 상세보기 페이지
	public String tDetail(Model model, TrainerVO trn, ReviewVO review) {
		model.addAttribute("trainer", trnService.TrainerSelect(trn));
		model.addAttribute("reviews", reviewService.trnReviewList(review));
		return "client/tDetail";
	}

	@RequestMapping(value = "/trnProfile.do")
	// 훈련사 개인 프로필 페이지
	public String trnProfile() {
		return "trainer/trnProfile";
	}

}
