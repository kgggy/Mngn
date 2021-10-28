package co.mngns.prj;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

	@RequestMapping(value = "/home.do")
	public String home() {
		return "home";
	}

	@RequestMapping(value = "/cntMain.do")
	public String cntMain() {
		return "client/cntMain";
	}

	@RequestMapping(value = "/mngMain.do")
	public String mngMain() {
		return "manager/home/mngMain";
	}

	@RequestMapping(value = "/trnMain.do")
	public String trnMain() {
		return "trnMain";
	}

	@RequestMapping(value = "/logout.do")
	public String tMain() {
		return "tMain";
	}

}
