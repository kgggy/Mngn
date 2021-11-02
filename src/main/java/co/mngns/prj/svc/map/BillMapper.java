package co.mngns.prj.svc.map;

import java.util.List;

import org.springframework.stereotype.Service;

import co.mngns.prj.svc.vo.BillVO;

@Service
public interface BillMapper {
	public List<BillVO> BillSelectList();

	public int BillSelect(BillVO bill);

	public int BillInsert(BillVO bill);

	public int BillDelete(BillVO bill);
}
