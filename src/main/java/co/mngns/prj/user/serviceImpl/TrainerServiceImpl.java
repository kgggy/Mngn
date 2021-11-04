package co.mngns.prj.user.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.mngns.prj.user.map.TrainerMapper;
import co.mngns.prj.user.service.TrainerService;
import co.mngns.prj.user.vo.ClientVO;
import co.mngns.prj.user.vo.TrainerVO;

@Service
public class TrainerServiceImpl implements TrainerService {
	@Autowired     
	TrainerMapper trnmap;

	@Override
	public List<TrainerVO> TrainerSelectList() {
		// 훈련사 전체 목록
		return trnmap.trainerSelectList();
	}

	@Override
	public TrainerVO TrainerSelect(TrainerVO trn) {
		// 훈련사 세부 조회
		return trnmap.trainerSelect(trn);
	}

	@Override
	public int TrainerInsert(TrainerVO trn) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int TrainerUpdate(TrainerVO trn) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int TrainerDelete(TrainerVO trn) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<TrainerVO> mTrainerSelectList() {
		// 관리자 페이지 훈련사 전체 조회
		return trnmap.mtrainerSelectList();
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

}
