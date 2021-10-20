package co.mngns.prj;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/home.do", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	
	@RequestMapping(value="/main.do")
	public String home() {
		return "home/main";
	}
	@RequestMapping(value="/tProfile.do")
	public String Tprofile() {
		return "home/tProfile";
	}
	@RequestMapping(value="/tDetails.do")
	public String Tdetails() {
		return "home/tDetails";
	}
	@RequestMapping(value="/login.do")
	public String login() {
		return "login";
	}
	@RequestMapping(value="/rList.do")
	public String Rlist() {
		return "home/rList";
	}
	@RequestMapping(value="/cService.do")
	   public String cService() {
	      return "home/cService";
	   }
	
}
