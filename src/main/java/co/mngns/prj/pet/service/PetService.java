package co.mngns.prj.pet.service;

import java.util.List;

import co.mngns.prj.pet.vo.PetVO;

public interface PetService {

	List<PetVO> petselectList();
	
	PetVO selectList(PetVO vo);
	int petInsert(PetVO vo);
	int petUpdate(PetVO vo);
	int petDelete(PetVO vo);
	
	

}
