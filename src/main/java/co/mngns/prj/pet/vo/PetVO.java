package co.mngns.prj.pet.vo;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class PetVO {
	private int pet_id;
	private int knd;
	private String name;
	private String gen;
	private int age;
	private int wgt;
	private int oper;
	private String memo;
	private int file_no;
	private int client_id;
	private String species;
	
	private String gen_wm;
}
