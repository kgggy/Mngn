package co.mngns.prj.svc.service;

import java.util.List;

import co.mngns.prj.svc.vo.SalaryVO;

public interface SalaryService {
	
	//훈련사 활동 전체 목록
	List<SalaryVO> salSelectList(SalaryVO vo);
	
	//특정 훈련사 활동 검색
	List<SalaryVO> salSelect(SalaryVO vo);
	
	//페이징 처리(전체 훈련사 활동 건수)
	int salCount(SalaryVO vo);
	
	int salInsert(SalaryVO vo);
	int salUpdate(SalaryVO vo);
	int salDelete(SalaryVO vo);
	
	
}
