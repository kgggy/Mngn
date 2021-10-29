package co.mngns.prj.svc.map;

import java.util.List;

import org.springframework.stereotype.Service;

import co.mngns.prj.svc.vo.SalaryVO;

@Service
public interface SalaryMapper {
	List<SalaryVO> SalSelectList();

	int SalSelect(SalaryVO sal);

	int SalInsert(SalaryVO sal);

	int SalUpdate(SalaryVO sal);

	int SalDelete(SalaryVO sal);
}
