package co.mngns.prj.svc.map;

import java.util.List;

import org.springframework.stereotype.Service;

import co.mngns.prj.svc.vo.SalaryVO;

@Service
public interface SalaryMapper {
	//관리자 훈련사 수당 페이지 전체보기
	List<SalaryVO> salSelectList(SalaryVO vo);
	
	//관리자 특정 훈련사 수당 페이지 
	List<SalaryVO> salSelect(SalaryVO vo);
	
	//관리자 훈련사 수당 전체 건수
	int salCount(SalaryVO vo);
	
	int salInsert(SalaryVO vo);
	int salUpdate(SalaryVO vo);
	int salDelete(SalaryVO vo);
	
	
	
}
