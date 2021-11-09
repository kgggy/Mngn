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
	public List<PetVO> PetList(PetVO pet) {
		return petMapper.petList(pet);
	}

	@Override
	public PetVO PetSelect(PetVO pet) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int PetInsert(PetVO pet) {
		return petMapper.petInsert(pet);
	}

	@Override
	public int PetUpdate(PetVO pet) {
		return 0;
	}

	@Override
	public int PetDelete(PetVO pet) {
		return 0;
	}


}
