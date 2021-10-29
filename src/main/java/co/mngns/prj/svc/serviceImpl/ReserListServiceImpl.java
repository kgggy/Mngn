package co.mngns.prj.svc.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.mngns.prj.svc.map.ReserListMapper;
import co.mngns.prj.svc.service.ReserListService;
import co.mngns.prj.svc.vo.ReserListVO;
import co.mngns.prj.svc.vo.SvcVO;

@Service
public class ReserListServiceImpl implements ReserListService {

	@Autowired
	ReserListMapper reser;
	
	@Override
	public List<ReserListVO> ReserSelectList() {
		return reser.ReserSelectList();
		
	}

	@Override
	public int ReserSelect(ReserListVO reser) {
		return 0;
	}

	@Override
	public int ReserInsert(ReserListVO reser) {
		return 0;
	}

	@Override
	public int ReserDelete(ReserListVO reser) {
		return 0;
	}

	@Override
	public List<SvcVO> ServiceSelectList() {
		return null;
	}

	@Override
	public int ServiceSelect(SvcVO svc) {
		return 0;
	}

	@Override
	public int ServiceInsert(SvcVO svc) {
		return 0;
	}

	@Override
	public int ServiceUpdate(SvcVO svc) {
		return 0;
	}

	@Override
	public int ServiceDelete(SvcVO svc) {
		return 0;
	}

}
