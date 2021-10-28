package co.mngns.prj.serv.vo;

import java.sql.Date;

import lombok.Data;

@Data
public class SalaryVO {
	private int pay_yn;
	private int salary_no;
	private Date salary_dt;
	private int salary_amt;
	private int client_id;

	public SalaryVO() {
	}
}
