package co.mngns.prj.serv.service;

import java.util.List;

import co.mngns.prj.serv.vo.BillVO;

public interface BillService {
	List<BillVO> BillSelectList();
	int BillSelect(BillVO bill);
	int BillInsert(BillVO bill);
	int BillDelete(BillVO bill);
}
