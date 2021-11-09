package co.mngns.prj.svc.map;

import java.util.List;

import org.springframework.stereotype.Service;

import co.mngns.prj.svc.vo.BillVO;

@Service
public interface BillMapper {
	public List<BillVO> billSelectList();

	public BillVO billSelect(BillVO bill);

	public int billInsert(BillVO bill);

	public int billDelete(BillVO bill);
}
