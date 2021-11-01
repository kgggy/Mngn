package co.mngns.prj.pet.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import co.mngns.prj.pet.service.PetService;
import co.mngns.prj.pet.vo.PetVO;

@Controller
public class PetController {

	@Autowired PetService petService;
	
	@RequestMapping(value = "/aniList.do")
	public String aniList() {
		return "pet/aniList";
	}

	@RequestMapping(value = "/dogForm.do")
	public String dogForm() {
	
		return "pet/dogForm";
	}

	@RequestMapping(value = "/catForm.do")
	public String catForm() {
		return "pet/catForm";
	}

	@RequestMapping(value = "/mOut.do")
	public String mOut() {
		
		return "client/mOut";
	}
	
	@RequestMapping (value = "/petInsert.do")
	public String petInsert(PetVO vo) {
		vo.setClient_id(1);
		petService.PetInsert(vo);
		return "redirect:aniList.do";
	}
	


}
