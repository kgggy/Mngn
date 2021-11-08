package co.mngns.prj.pet.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.mngns.prj.pet.map.PetMapper;
import co.mngns.prj.pet.service.PetService;
import co.mngns.prj.pet.vo.PetVO;

@Service
public class PetServiceImpl implements PetService {

	@Autowired PetMapper petMapper;

	@Override
	public List<PetVO> petSelectList(PetVO pet) {
		// TODO Auto-generated method stub
		return petMapper.petSelectList(pet);
	}

	@Override
	public PetVO petSelect(PetVO pet) {
		// TODO Auto-generated method stub
		return petMapper.petSelect(pet);
	}

	@Override
	public int petInsert(PetVO pet) {
		// TODO Auto-generated method stub
		return petMapper.petInsert(pet);
	}

	@Override
	public int petUpdate(PetVO pet) {
		// TODO Auto-generated method stub
		return petMapper.petUpdate(pet);
	}

	@Override
	public int petDelete(PetVO pet) {
		// TODO Auto-generated method stub
		return petMapper.petDelete(pet);
	}
	

}
