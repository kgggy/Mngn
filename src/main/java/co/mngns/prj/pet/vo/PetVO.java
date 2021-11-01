package co.mngns.prj.pet.vo;

import lombok.Data;

@Data
public class PetVO {
	private Integer pet_id;
	private Integer knd;
	private String name;
	private String gen;
	private Integer age;
	private Integer wgt;
	private Integer oper;
	private String memo;
	private Integer file_no;
	private Integer client_id;
	private String species;
}
