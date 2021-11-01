package co.mngns.prj.pet.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PetController {

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

}
