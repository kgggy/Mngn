package co.mngns.prj;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class TrnController {

	@RequestMapping(value="/mHome.do", method = RequestMethod.GET)
	public String mHome() {
		return "trainer/home/mHome";
	}
	
	@RequestMapping(value="/memberSelectList.do", method = RequestMethod.GET)
	public String memberSelectList() {
		return "trainer/member/memberSelectList";
	}
	
	@RequestMapping(value="/dropMemberList.do", method = RequestMethod.GET)
	public String dropMemberList() {
		return "trainer/member/dropMemberList";
	}
	
	@RequestMapping(value="/dropMemSelectList.do", method = RequestMethod.GET)
	public String dropMemSelectList() {
		return "trainer/member/dropMemSelectList";
	}
	
	@RequestMapping(value="/memberList.do", method = RequestMethod.GET)
	public String memberList() {
		return "trainer/member/memberList";
	}
	
	@RequestMapping(value="/boardList.do", method = RequestMethod.GET)
	public String boardList() {
		return "trainer/board/boardList";
	}
	
	@RequestMapping(value="/boardSelectList.do", method = RequestMethod.GET)
	public String boardSelectList() {
		return "trainer/board/boardSelectList";
	}
	
	@RequestMapping(value="/boardForm.do", method = RequestMethod.GET)
	public String boardForm() {
		return "trainer/board/boardForm";
	}
	
	@RequestMapping(value="/trainerList.do", method = RequestMethod.GET)
	public String trainerList() {
		return "trainer/trainer/trainerList";
	}
	
	@RequestMapping(value="/serviceList.do", method = RequestMethod.GET)
	public String serviceList() {
		return "trainer/service/serviceList";
	}
	
	@RequestMapping(value="/serviceSelectList_dol.do", method = RequestMethod.GET)
	public String serviceSelectList_dol() {
		return "trainer/service/serviceSelectList_dol";
	}
	
	@RequestMapping(value="/serviceSelectList_train.do", method = RequestMethod.GET)
	public String serviceSelectList_train() {
		return "trainer/service/serviceSelectList_train";
	}
	
	@RequestMapping(value="/serviceSelectList_walk.do", method = RequestMethod.GET)
	public String serviceSelectList_walk() {
		return "trainer/service/serviceSelectList_walk";
	}
	
	@RequestMapping(value="/salaryList.do", method = RequestMethod.GET)
	public String salaryList() {
		return "trainer/salary/salaryList";
	}
	
	@RequestMapping(value="/salesList.do", method = RequestMethod.GET)
	public String sales() {
		return "trainer/sales/salesList";
	}
	
	@RequestMapping(value="/modals.do", method = RequestMethod.GET)
	public String modals() {
		return "trainer/board/modals";
	}
	
	@RequestMapping(value="/alert.do", method = RequestMethod.GET)
	public String alert() {
		return "trainer/board/alert";
	}

}
