package co.mngns.prj.board.vo;

import java.sql.Date;

import lombok.Data;

@Data
public class BoardVO {
	private int board_no;
	private String ttl;
	private String cntn;
	private int mngr_id;
	private Date reg_dt;	
	
}
