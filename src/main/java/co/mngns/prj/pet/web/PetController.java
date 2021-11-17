package co.mngns.prj.pet.web;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
	
	@RequestMapping(value = "/DformReg.do")
	//강아지 프로필 수정
	public String DformReg(Model model, PetVO pet, HttpSession session) {
		pet.setClient_id((Integer) session.getAttribute("id"));
		model.addAttribute("petForm", petService.petSelect(pet));
		return "pet/DformReg";
	}
	@RequestMapping(value = "/CformReg.do")
	//고양이 프로필 수정
	public String CformReg(Model model, PetVO pet, HttpSession session) {
		pet.setClient_id((Integer) session.getAttribute("id"));
		model.addAttribute("petForm", petService.petSelect(pet));
		return "pet/CformReg";
	}

	@RequestMapping(value = "/mOut.do")
	//회원 탈퇴
	public String mOut() {
		return "client/mOut";
	}

	@RequestMapping(value = "/petInsert.do")
	//펫 등록
	public String petInsert(HttpSession session, PetVO pet, Model model) {
		pet.setClient_id((Integer) session.getAttribute("id"));
		petService.petInsert(pet);
		return "redirect:aniList.do";
	}

	@RequestMapping(value = "/petUpdate.do")
	//펫 수정, 정보 업데이트
	public String petUpdate(HttpSession session, PetVO pet, Model model,@RequestParam("profileImqUrl") MultipartFile multipartFile ,RedirectAttributes redirectAttributes) {
		pet.setClient_id((Integer) session.getAttribute("id"));
		petService.petUpdate(pet, multipartFile);
		redirectAttributes.addAttribute("pet_id", pet.getPet_id());
		return "redirect:aniList.do";
	}

	@RequestMapping(value = "/petDelete.do")
	//펫 삭제
	public String petDelete( Model model, PetVO pet) {
		model.addAttribute("pet", petService.petDelete(pet));
		return "redirect:aniList.do";
	}

}
