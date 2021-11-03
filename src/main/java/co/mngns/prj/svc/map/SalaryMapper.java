package co.mngns.prj.svc.map;

import java.util.List;

import org.springframework.stereotype.Service;

import co.mngns.prj.svc.vo.SalaryVO;

@Service
public interface SalaryMapper {
	public List<SalaryVO> SalSelectList();

	public int SalSelect(SalaryVO sal);

	public int SalInsert(SalaryVO sal);

	public int SalUpdate(SalaryVO sal);

	public int SalDelete(SalaryVO sal);
}
