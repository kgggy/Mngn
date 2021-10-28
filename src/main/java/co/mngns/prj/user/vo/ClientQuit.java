package co.mngns.prj.user.vo;

import lombok.Data;

@Data
public class ClientQuit {
	private int client_id;
	private int memo_ettc;
	private String memo_resn;
	private int quit_no;
}
