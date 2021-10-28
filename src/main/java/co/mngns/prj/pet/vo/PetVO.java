package co.mngns.prj.pet.vo;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Data
public class PetVO {

	private int pet_id;
	private int user_id;
	private int knd;
	private String spcies;
	private String name;
	private String gen;
	private String age;
	private String wgt;
	private String oper;
	private String memo;
	private String file_no;
	

}
