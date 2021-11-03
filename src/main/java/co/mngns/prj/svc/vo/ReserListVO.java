package co.mngns.prj.svc.vo;

import java.sql.Date;

import co.mngns.prj.user.vo.ClientVO;
import lombok.Data;

@Data
public class ReserListVO {
	private int reser_no;
	private Date reser_dt;
	private String memo;
	private String reser_loc;
	private int pet_id1;
	private int pet_id2;
	private String svc_bgn_tm;
	private int svc_stts;
	private String status;
	private int client_id1;
	private int svc_id;
	private int client_id2;

	private ClientVO client;

	private String name;
	private int knd;
	private String knd_name;
	private int term;
	private int prc;
	private String work_time;

}
