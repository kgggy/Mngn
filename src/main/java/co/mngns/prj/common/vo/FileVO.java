package co.mngns.prj.common.vo;

import lombok.Data;

@Data
public class FileVO {
	private String org;
	private int use_yn;
	private String lic_name;
	private String lic_dept;
	private int file_no;
	private int no;

	public FileVO() {
	}
}
