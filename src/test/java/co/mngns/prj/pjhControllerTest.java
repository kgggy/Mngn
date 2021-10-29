package co.mngns.prj;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import co.mngns.prj.svc.service.ReserListService;
import co.mngns.prj.svc.vo.ReserListVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "file:src/main/webapp/WEB-INF/spring/*-context.xml")
public class pjhControllerTest {
	@Autowired
	ReserListService reser;

	@Test
	public void test1() {
		ReserListVO rlist = new ReserListVO();
		rlist.setReser_loc("중구");
		reser.ReserSelectList();
	}
}
