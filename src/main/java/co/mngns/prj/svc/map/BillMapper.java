package co.mngns.prj.svc.map;

import java.util.List;

import org.springframework.stereotype.Service;

import co.mngns.prj.svc.vo.BillVO;
import co.mngns.prj.user.vo.ClientVO;

@Service
public interface BillMapper {
	public List<BillVO> billSelectList();

	public BillVO billSelect(BillVO bill);

	public int billInsert(BillVO bill);

	public int billDelete(BillVO bill);
	
	public int monthFee(ClientVO client); //훈련사 월별 수수료
}
