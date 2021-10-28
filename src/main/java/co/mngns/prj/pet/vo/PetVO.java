package co.mngns.prj.pet.vo;

import lombok.Data;

@Data
public class PetVO {
	private int pet_id;
	private int knd;
	private String name;
	private char gen;
	private int age;
	private int wgt;
	private int oper;
	private String memo;
	private int file_no;
	private int user_id;
	private String spcies;
}
