package co.mngns.prj.user.vo;

import java.sql.Date;

import lombok.Data;

@Data
public class TrainerVO {
	private char gen;
	private Date trn_birth_dt;
	private int mon;
	private int tue;
	private int wed;
	private int thu;
	private int fri;
	private int sat;
	private int sun;
	private String intro_ttl;
	private String intro_cntn;
	private int file_no;
	private int client_id;
	private int trn_avrg;
	
	public String name;
}

