package co.mngns.prj.user.vo;

import lombok.Data;

@Data
public class ManagerVO {
	private int mngr_id;
	private String pwd;
	private String name;
	
	public ManagerVO() {
		
	}
}
