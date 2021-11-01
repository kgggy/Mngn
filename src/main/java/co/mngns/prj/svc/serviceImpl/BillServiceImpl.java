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
	public List<BillVO> BillSelectList() {
		return bill.BillSelectList();
	}

	@Override 
	public int BillSelect(BillVO bill) {
		return BillSelect(bill);
	}

	@Override
	public int BillInsert(BillVO bill) {
		return BillInsert(bill);
	}

	@Override
	public int BillDelete(BillVO bill) {
		return BillDelete(bill);
	}

}
