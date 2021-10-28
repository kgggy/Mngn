package co.mngns.prj.serv.vo;

import lombok.Data;

@Data
public class SvcVO {
	private int svc_id;
	private int knd;
	private int term;
	private int rpc;
	
	public SvcVO() {
		
	}
}
