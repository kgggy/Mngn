package co.mngns.prj;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;

import co.mngns.prj.user.service.TrainerService;

@RunWith(SpringRunner.class)
@ContextConfiguration(locations = "file:src/main/webapp/WEB-INF/spring/*-context.xml")
public class KgggyController {

	@Autowired
	TrainerService service;

	@Test
	public void test1() {
		
	}
	
	/*
	 * public String tList(Model model) { model.addAttribute("trainers",
	 * trnDao.TrainerSelectList()); return "client/tList"; }
	 */

}
