package co.mngns.prj.pet.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.mngns.prj.pet.map.PetMapper;
import co.mngns.prj.pet.service.PetService;
import co.mngns.prj.pet.vo.PetVO;

@Service
public class PetServiceImpl implements PetService {

	@Autowired
	PetMapper petMapper;

	@Override
	public List<PetVO> petList(PetVO pet) {
		return petMapper.petList(pet);
	}

	@Override
	public PetVO petSelect(PetVO pet) {
		return petMapper.petSelelct(pet);
	}

	@Override
	public int petInsert(PetVO pet) {
		return petMapper.petInsert(pet);
	}

	@Override
	public int petUpdate(PetVO pet) {
		return petMapper.petUpdate(pet);
	}

	@Override
	public int petDelete(PetVO pet) {
		return petMapper.petDelete(pet);
	}

}
