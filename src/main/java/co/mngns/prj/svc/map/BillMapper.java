package co.mngns.prj.svc.map;

import java.util.List;

import org.springframework.stereotype.Service;

import co.mngns.prj.svc.vo.BillVO;

@Service
public interface BillMapper {
	List<BillVO> BillSelectList();

	int BillSelect(BillVO bill);

	int BillInsert(BillVO bill);

	int BillDelete(BillVO bill);
}
