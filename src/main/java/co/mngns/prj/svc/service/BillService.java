package co.mngns.prj.svc.service;

import java.util.List;

import co.mngns.prj.svc.vo.BillVO;

public interface BillService {
	List<BillVO> BillSelectList();
	int BillSelect(BillVO bill);
	int BillInsert(BillVO bill);
	int BillDelete(BillVO bill);
}
