package co.mngns.prj;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Handles requests for the application home page.
 */
@Controller
public class ProfileController {

	@RequestMapping(value = "/register.do")
	public String register() {
		return "register";
	}

	@RequestMapping(value = "/mProfile.do")
	public String mProfile() {
		return "home/mProfile";
	}

	@RequestMapping(value = "/aProfile.do")
	public String aProfile() {
		return "home/aProfile";
	}

	@RequestMapping(value = "/dogregister.do")

	public String dogregister() {

		return "profile/dogregister";
	}
	@RequestMapping(value = "/catregister.do")

	public String catregister() {

		return "profile/catregister";
	}


}
