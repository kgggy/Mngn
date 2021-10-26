package co.mngns.prj;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UTController {

	@RequestMapping(value = "/myReview.do")
	public String myReview() {
		return "home/myReview";
	}
	
	@RequestMapping(value = "/tResv.do")
	public String tResv() {
		return "home/tSal";
	}

}
