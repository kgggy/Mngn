package co.mngns.prj.pet.service;

import java.util.List;

import co.mngns.prj.pet.vo.PetVO;

public interface PetService {

	List<PetVO> petList(PetVO pet);

	PetVO petSelect(PetVO pet);

	int petInsert(PetVO pet);

	int petUpdate(PetVO pet);

	int petDelete(PetVO pet);


}
