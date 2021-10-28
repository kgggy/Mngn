package co.mngns.prj.svc.vo;

import java.sql.Date;

import lombok.Data;

@Data
public class ReserListVO {
	private int reser_no;
	private Date reser_dt;
	private String memo;
	private String reser_loc;
	private int pet_id1;
	private int pet_id2;
	private int svc_bgn_tm;
	private int svc_end_tm;
	private int svc_stts;
	private int client_id;
	private int svc_id;

	public ReserListVO() {
	}
}
