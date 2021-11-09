package co.mngns.prj.common.vo;

import java.util.Date;

import lombok.Data;

@Data
public class FilesVO {
	private String org; //파일원본명
	private int use_yn; //사용여부
	private String lic_name; //자격증명
	private String lic_dept; //인증기관
	private int file_no; //그룹파일번호
	private Date reg_dt; 
	private int no; //일련번호
}
