package co.mngns.prj.svc.vo;

import java.sql.Date;

import co.mngns.prj.user.vo.ClientVO;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ReserListVO {
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
	private Date enroll_dt;
	private String client_id;
	
	private ClientVO client;

	private String name;
	private String[] pet_name;
	private int knd;
	private String knd_name;
	private int term;
	private int prc;
	private String work_time;
	private String reviewyn;
	private String phone;
	private String email;
	private int bill_amt;
	
	private int start;
	private int end;
	private String fee;
	
	private String species;
	private int age;
	private int wgt;
	private String dcknd;
	private String fmtDate;
	
	
}
