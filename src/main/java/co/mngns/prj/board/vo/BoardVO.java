package co.mngns.prj.board.vo;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class BoardVO {
	private int board_no;
	private String ttl;
	private String cntn;
	private int mngr_id;
	private Date reg_dt;
	
	
	//페이징 처리
	private int start;
	private int end;
	
}
