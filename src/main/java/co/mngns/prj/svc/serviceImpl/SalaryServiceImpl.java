package co.mngns.prj.svc.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.mngns.prj.svc.map.SalaryMapper;
import co.mngns.prj.svc.service.SalaryService;
import co.mngns.prj.svc.vo.SalaryVO;

@Repository("SalaryVO")
public class SalaryServiceImpl implements SalaryService {
	
	@Autowired
	private SalaryMapper map;

	@Override //훈련사 활동 전체 목록
	public List<SalaryVO> salSelectList(SalaryVO vo) {
		return map.salSelectList(vo);
	}

	@Override //훈련사 활동 전체 건수
	public int salCount(SalaryVO vo) {
		return map.salCount(vo);
	}
	
	@Override //특정 훈련사 활동 전체 목록 검색
	public List<SalaryVO> salSelect(SalaryVO vo) {
		return map.salSelect(vo);
	}

	@Override
	public int salInsert(SalaryVO vo) {
		return 0;
	}

	@Override
	public int salUpdate(SalaryVO vo) {
		return 0;
	}

	@Override
	public int salDelete(SalaryVO vo) {
		return 0;
	}


}
