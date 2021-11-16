package co.mngns.prj.pet.web;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import co.mngns.prj.pet.service.PetService;
import co.mngns.prj.pet.vo.PetVO;
import co.mngns.prj.user.vo.ClientVO;

@Controller
public class PetController {

	@Autowired
	PetService petService;

	@RequestMapping(value = "/aniList.do")
	public String aniList(Model model, PetVO pet, HttpSession session) {
		pet.setClient_id((Integer) session.getAttribute("id"));
		model.addAttribute("petForm", petService.petList(pet));
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
	
	@RequestMapping(value = "/formReg.do")
	public String formReg(Model model, PetVO pet, HttpSession session) {
		
		pet.setPet_id((Integer)session.getAttribute("id"));
		model.addAttribute("pet", petService.petList(pet));
		
		return "pet/formReg";
	}


	@RequestMapping(value = "/mOut.do")
	public String mOut() {

		return "client/mOut";
	}

	@RequestMapping(value = "/petInsert.do")
	public String petInsert(HttpSession session, PetVO pet, Model model) {
		pet.setClient_id((Integer) session.getAttribute("id"));
		petService.petInsert(pet);
		return "redirect:aniList.do";
	}
	
	@RequestMapping(value = "/petUpdate.do")
	public String petUpdate(HttpSession session, PetVO pet, Model model) {
		pet.setClient_id((Integer) session.getAttribute("id"));
		petService.petUpdate(pet);
		
		return "redirect:cntList.do";
	}
	
	@RequestMapping(value = "/petDelete.do")
	public String petDelete(HttpSession session, PetVO pet, Model model) {
		pet.setClient_id((Integer) session.getAttribute("id"));
		model.addAttribute(petService.petDelete(pet));
		
		return "redirect:aniList.do";
	}
           
                                                                                                                          
}
