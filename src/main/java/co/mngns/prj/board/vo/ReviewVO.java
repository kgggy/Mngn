package co.mngns.prj.board.vo;

import java.sql.Date;

import co.mngns.prj.user.vo.ClientVO;
import lombok.Data;

@Data
public class ReviewVO {
	private int review_no;
	private String cntn;
	private int star_rate;
	private Date reg_dt;
	private int file_no;
	private int reser_no;
	private int client_id;
	
	private String name;
	private int knd;
	private String knd_name;
	private int term;

}
