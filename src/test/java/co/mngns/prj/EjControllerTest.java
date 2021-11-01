package co.mngns.prj;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import co.mngns.prj.board.vo.BoardVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "file:src/main/webapp/WEB-INF/spring/*-context.xml")
public class EjControllerTest {
	@Autowired
	BoardVO b_vo;
	
	@Test
	public void test1() {
		BoardSelectList blist = new BoardSelectList();
		blist.
		
		
	}
}
