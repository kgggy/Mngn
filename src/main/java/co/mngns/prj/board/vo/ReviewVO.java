package co.mngns.prj.board.vo;

import java.util.Date;
import java.util.List;

import co.mngns.prj.common.vo.FilesVO;
import lombok.Data;

@Data
public class ReviewVO {
	private int review_no;
	private String cntn;
	private int star_rate;
	private String star_shape;
	private Date reg_dt;
	private Integer file_no;
	private int reser_no;
	private int client_id;
	
	private String name;
	private int knd;
	private String knd_name;
	private int term;
	
	private int start;
	private int end;
	
	private List<FilesVO> fileList;
	
}
