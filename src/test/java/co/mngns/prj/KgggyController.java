package co.mngns.prj;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import co.mngns.prj.user.service.TrainerService;
import co.mngns.prj.user.vo.TrainerVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "file:src/main/webapp/WEB-INF/spring/*-context.xml")
public class KgggyController {

	@Autowired
	TrainerService service;

	// @Test
	public void test1() {
		TrainerVO trainer = new TrainerVO();
		trainer.setClient_id(1);
		service.TrainerSelectList();
	}

	@Test
	public void test2() {
		TrainerVO trainer = new TrainerVO();
		trainer.setClient_id(1);
		service.TrainerSelect(trainer);
	}

}
