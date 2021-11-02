package co.mngns.prj.svc.service;

import java.util.List;

import co.mngns.prj.svc.vo.SalaryVO;

public interface SalaryService {
	public List<SalaryVO> SalSelectList();

	public int SalSelect(SalaryVO sal);

	public int SalInsert(SalaryVO sal);

	public int SalUpdate(SalaryVO sal);
	
	public int SalDelete(SalaryVO sal);
}
