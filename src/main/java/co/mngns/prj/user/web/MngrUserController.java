package co.mngns.prj.user.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import co.mngns.prj.user.service.ClientService;
import co.mngns.prj.user.service.TrainerService;

@Controller
public class MngrUserController {

	@Autowired
	TrainerService trnService;
	
	@Autowired
	ClientService cntService;
	

	@RequestMapping(value = "/trnList.do")
	// 훈련사 목록 페이지
	public String trnList(Model model) {
		model.addAttribute("trainers", trnService.mTrainerSelectList());
		return "manager/user/trnList";
	}
	
	@RequestMapping(value = "/cntList.do")
	// 사용자 목록 페이지
	public String cntList(Model model) {
		model.addAttribute("clients", cntService.mclientSelectList());
		return "manager/user/cntList";
	}
	
	
}
