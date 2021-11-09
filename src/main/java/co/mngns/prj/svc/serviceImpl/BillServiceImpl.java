package co.mngns.prj.svc.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.mngns.prj.svc.map.BillMapper;
import co.mngns.prj.svc.service.BillService;
import co.mngns.prj.svc.vo.BillVO;

@Repository("bill")
public class BillServiceImpl implements BillService {

	@Autowired
	private BillMapper bill;
	
	@Override
	public List<BillVO> billSelectList() {
		return bill.billSelectList();
	}

	@Override 
	public BillVO billSelect(BillVO billvo) {
		return bill.billSelect(billvo);
	}

	@Override
	public int billInsert(BillVO billvo) {
		return bill.billInsert(billvo);
	}

	@Override
	public int billDelete(BillVO billvo) {
		return bill.billDelete(billvo);
	}

}
