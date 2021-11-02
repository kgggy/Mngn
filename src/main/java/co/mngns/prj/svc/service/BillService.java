package co.mngns.prj.svc.service;

import java.util.List;

import co.mngns.prj.svc.vo.BillVO;

public interface BillService {
	public List<BillVO> BillSelectList();
	public int BillSelect(BillVO bill);
	public int BillInsert(BillVO bill);
	public int BillDelete(BillVO bill);
}
