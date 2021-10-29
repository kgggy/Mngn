package co.mngns.prj.svc.service;

import java.util.List;

import co.mngns.prj.svc.vo.SalaryVO;

public interface SalaryService {
	List<SalaryVO> SalSelectList();

	int SalSelect(SalaryVO sal);

	int SalInsert(SalaryVO sal);

	int SalUpdate(SalaryVO sal);
	
	int SalDelete(SalaryVO sal);
}
