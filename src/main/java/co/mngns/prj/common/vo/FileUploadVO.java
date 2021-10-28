package co.mngns.prj.common.vo;

import java.sql.Date;

import lombok.Data;

@Data
public class FileUploadVO {
	private int file_no;
	private Date reg_dt;

	public FileUploadVO() {
	}
}
