package co.mngns.prj.svc.service;

import java.util.List;

import co.mngns.prj.svc.vo.BillVO;

public interface BillService {
	public List<BillVO> billSelectList();

	public BillVO billSelect(BillVO bill);

	public int billInsert(BillVO bill);

	public int billDelete(BillVO bill);
}
