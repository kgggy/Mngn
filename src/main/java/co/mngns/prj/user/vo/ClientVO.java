package co.mngns.prj.user.vo;

import java.sql.Date;

import lombok.Data;

@Data
public class ClientVO {
	private int client_id;
	private String pwd;
	private String name;
	private int post_no;
	private String adres1;
	private String adres2;
	private String phone;
	private String email;
	private Date join_dt;
	private int role;
	
}
