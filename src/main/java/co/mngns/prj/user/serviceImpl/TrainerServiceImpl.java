package co.mngns.prj.user.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.mngns.prj.user.map.TrainerMapper;
import co.mngns.prj.user.service.TrainerService;
import co.mngns.prj.user.vo.TrainerVO;

@Service
public class TrainerServiceImpl implements TrainerService {
	@Autowired     
	TrainerMapper trnmap;

	@Override
	public List<TrainerVO> TrainerSelectList(TrainerVO trn) {
		// 훈련사 전체 목록
		return trnmap.trainerSelectList(trn);
	}

	@Override
	public TrainerVO TrainerSelect(TrainerVO trn) {
		// 훈련사 세부 조회
		return trnmap.trainerSelect(trn);
	}

	@Override
	public List<TrainerVO> mTrainerSelectList(TrainerVO vo) {
		// 관리자 페이지 훈련사 전체 조회
		return trnmap.mtrainerSelectList(vo);
	}

	@Override
	public List<TrainerVO> getSearchList(TrainerVO trn) {
		// 훈련사 검색
		return trnmap.getSearchList(trn);
	}

	@Override
	public TrainerVO nWork(TrainerVO trn) {
		// 훈련사 휴무일
		return trnmap.nWork(trn);
	}
	
	@Override
	public int trnCount(TrainerVO vo) {
		// 전체 훈련사 건수
		return trnmap.trnCount(vo);
	}

	@Override
	public int mtrnCount(TrainerVO vo) {
		// 관리자 페이지 전체 훈련사 명수
		return trnmap.mtrnCount(vo);
	}

	@Override
	public int trainerUpdate(TrainerVO vo) {
		// 훈련사 수정
		return trnmap.trainerUpdate(vo);
	}

}
