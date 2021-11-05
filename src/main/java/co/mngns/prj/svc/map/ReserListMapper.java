package co.mngns.prj.svc.map;

import java.util.List;

import org.springframework.stereotype.Service;

import co.mngns.prj.pet.vo.PetVO;
import co.mngns.prj.svc.vo.ReserListVO;
import co.mngns.prj.svc.vo.SvcVO;
import co.mngns.prj.user.vo.ClientVO;
import co.mngns.prj.user.vo.TrainerVO;

@Service
public interface ReserListMapper {
	public List<ReserListVO> reserSelectList(ReserListVO reser);

	public ReserListVO reserSelect(ReserListVO reser);

	public int reserInsert(ReserListVO reser);

	public int reserDelete(ReserListVO reser);

	public List<SvcVO> serviceTerm(ReserListVO reser);

	public List<SvcVO> serviceSelectList();

	public SvcVO serviceSelect(SvcVO svc);

	public int serviceInsert(SvcVO svc);

	public int serviceUpdate(SvcVO svc);

	public int serviceDelete(SvcVO svc);

	public List<PetVO> petSelectList(PetVO pet);

	public ClientVO clientAdd(ClientVO client);

	public List<ReserListVO> serviceUse(ReserListVO reser);

	public List<TrainerVO> trnSelectList(ReserListVO reser);

}
