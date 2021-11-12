package co.mngns.prj.svc.vo;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class BillVO {
	private int bill_card;
	private String bill_phone;
	private int bill_amt;
	private int bill_no;
	private int reser_no;
}
