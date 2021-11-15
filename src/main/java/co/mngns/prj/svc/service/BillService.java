package co.mngns.prj.svc.service;

import java.util.List;

import co.mngns.prj.svc.vo.BillVO;
import co.mngns.prj.user.vo.ClientVO;

public interface BillService {
	public List<BillVO> billSelectList();

	public BillVO billSelect(BillVO bill);

	public int billInsert(BillVO bill);

	public int billDelete(BillVO bill);
	
	public int monthFee(ClientVO client); //훈련사 월별 수수료
}
