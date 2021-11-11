package co.mngns.prj.user.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import co.mngns.prj.common.vo.Paging;
import co.mngns.prj.user.service.ClientService;
import co.mngns.prj.user.service.TrainerService;
import co.mngns.prj.user.vo.ClientVO;
import co.mngns.prj.user.vo.TrainerVO;

@Controller
public class MngrUserController {

	@Autowired
	TrainerService trnService;
	
	@Autowired
	ClientService cntService;
	
	@RequestMapping(value = "/trnList.do")
	// 훈련사 목록 페이지
	public String trnList(Model model, Paging mtpaging, TrainerVO vo) {
		// 페이징 처리
		mtpaging.setPageUnit(3);
		vo.setStart(mtpaging.getFirst());
		vo.setEnd(mtpaging.getLast());
		mtpaging.setTotalRecord(trnService.mtrnCount(vo));
		model.addAttribute("trainers", trnService.mTrainerSelectList(vo));
		return "manager/user/trnList";
	}
	
	@RequestMapping(value = "/cntList.do")
	// 사용자 목록 페이지
	public String cntList(Model model, Paging mcpaging, ClientVO vo) {
		//페이징 처리
		mcpaging.setPageUnit(3);
		vo.setStart(mcpaging.getFirst());
		vo.setEnd(mcpaging.getLast());
		mcpaging.setTotalRecord(cntService.cntCount(vo));
		model.addAttribute("clients", cntService.mclientSelectList(vo));
		return "manager/user/cntList";
	}
	
	
}
