package co.mngns.prj.serv.vo;

import lombok.Data;

@Data
public class BillVO {
	private int bill_card;
	private int bill_phone;
	private int bill_amt;
	private int bill_no;
	private int reser_no;

	public BillVO() {

	}
}
