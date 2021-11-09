package co.mngns.prj.pet.service;

import java.util.List;

import co.mngns.prj.pet.vo.PetVO;

public interface PetService {

	List<PetVO> PetList(PetVO pet);

	PetVO PetSelect(PetVO pet);

	int PetInsert(PetVO pet);

	int PetUpdate(PetVO pet);

	int PetDelete(PetVO pet);

}
