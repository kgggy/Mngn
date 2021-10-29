package co.mngns.prj.svc.map;

import java.util.List;

import org.springframework.stereotype.Service;

import co.mngns.prj.svc.vo.ReserListVO;
import co.mngns.prj.svc.vo.SvcVO;

@Service
public interface ReserListMapper {
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
