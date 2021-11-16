package co.mngns.prj;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import co.mngns.prj.board.service.BoardService;

@Controller
public class HomeController {

	@Autowired
	BoardService bService;
	
	@RequestMapping(value = "/home.do")
	public String home() {
		return "home";
	}

	@RequestMapping(value = "/cntMain.do")
	public String cntMain(@RequestParam(required = false) String message, Model model) {
		
		model.addAttribute("message", message);
		
		return "client/cntMain";
		
	}

	@RequestMapping(value = "/mngMain.do")
	public String mngMain(Model model) {
		model.addAttribute("reser", bService.resvNoInsert());
		model.addAttribute("clientNo", bService.clientNoInsert());
		model.addAttribute("trainerNo", bService.trainerNoInsert());
		model.addAttribute("cancelNo", bService.cancleNoInsert());
		return "manager/home/mngMain";
	}

	@RequestMapping(value = "/trnMain.do")
	public String trnMain() {
		return "trnMain";
	}

	@RequestMapping(value = "/logout.do")
	public String logout(HttpSession session) {
		session.invalidate();
		return "home";
	}
	
	@RequestMapping(value = "/map.do")
	public String map() {
		return "map";
	}

}
