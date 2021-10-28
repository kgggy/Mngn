package co.mngns.prj.serv.service;

import java.util.List;

import co.mngns.prj.serv.vo.ReserListVO;
import co.mngns.prj.serv.vo.SvcVO;

public interface ReserListService {
	List<ReserListVO> ReserSelectList();
	int ReserSelect(ReserListVO reser);
	int ReserInsert(ReserListVO reser);
	int ReserDelete(ReserListVO reser);
	
	List<SvcVO> ServiceSelectList();
	int ServiceSelect(SvcVO svc);
	int ServiceInsert(SvcVO svc);
	int ServiceUpdate(SvcVO svc);
	int ServiceDelete(SvcVO svc);
}
