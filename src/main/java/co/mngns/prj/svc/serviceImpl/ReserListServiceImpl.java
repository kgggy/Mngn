package co.mngns.prj.svc.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.mngns.prj.pet.vo.PetVO;
import co.mngns.prj.svc.map.ReserListMapper;
import co.mngns.prj.svc.service.ReserListService;
import co.mngns.prj.svc.vo.ReserListVO;
import co.mngns.prj.svc.vo.SvcVO;
import co.mngns.prj.user.vo.ClientVO;

@Service
public class ReserListServiceImpl implements ReserListService {

	@Autowired
	ReserListMapper map;
	
	@Override
	public List<ReserListVO> reserSelectList() {
		return map.reserSelectList();
		
	}

	@Override
	public ReserListVO reserSelect(ReserListVO reser) {
		return map.reserSelect(reser);
	}

	@Override
	public int reserInsert(ReserListVO reser) {
		return map.reserInsert(reser);
	}

	@Override
	public int reserDelete(ReserListVO reser) {
		return map.reserDelete(reser);
	}

	@Override
	public List<SvcVO> serviceSelectList() {
		return map.serviceSelectList();
	}

	@Override
	public SvcVO serviceSelect(SvcVO svc) {
		return map.serviceSelect(svc);
	}

	@Override
	public int serviceInsert(SvcVO svc) {
		return map.serviceInsert(svc);
	}

	@Override
	public int serviceUpdate(SvcVO svc) {
		return map.serviceUpdate(svc);
	}

	@Override
	public int serviceDelete(SvcVO svc) {
		return map.serviceDelete(svc);
	}

	@Override
	public List<PetVO> petSelectList(PetVO pet) {
		return map.petSelectList(pet);
	}

	@Override
	public ClientVO clientAdd(ClientVO client) {
		return map.clientAdd(client);
	}

	@Override
	public List<ClientVO> trnSelectList(ClientVO client) {
		return map.trnSelectList(client);
	}

	@Override
	public List<ReserListVO> serviceUse(ReserListVO reser) {
		// 서비스 이용 목록보기
		return map.serviceUse(reser);
	}

}
