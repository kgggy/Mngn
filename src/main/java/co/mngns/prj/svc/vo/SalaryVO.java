package co.mngns.prj.svc.vo;

import java.sql.Date;

import co.mngns.prj.user.vo.ClientVO;
import lombok.Data;

@Data
public class SalaryVO {
	private int reser_no;
	private Date reser_dt;
	private String memo;
	private String reser_loc;
	private String adres1;
	private String adres2;
	private String[] pet_id;
	private int pet_id1;
	private int pet_id2;
	private String svc_bgn_tm;
	private int svc_stts;
	private String status;
	private int client_id1;
	private int svc_id;
	private String client_id2;

	private ClientVO client;

	private int client_id;
	private String name;
	private String phone;
	private String email;
	private Date join_dt;
	private int role;
	
	
	private int start;
	private int end;
}