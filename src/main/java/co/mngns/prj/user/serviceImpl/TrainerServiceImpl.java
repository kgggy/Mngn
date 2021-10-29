package co.mngns.prj.user.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.mngns.prj.user.map.TrainerMapper;
import co.mngns.prj.user.service.TrainerService;
import co.mngns.prj.user.vo.ClientVO;
import co.mngns.prj.user.vo.TrainerVO;

@Repository("trnDao")
public class TrainerServiceImpl implements TrainerService {
	@Autowired     
	private TrainerMapper trnmap;

	@Override
	public List<TrainerVO> TrainerSelectList() {
		// 훈련사 전체 목록
		return trnmap.trainerSelectList();
	}

	@Override
	public ClientVO TrainerSelect(TrainerVO trn) {
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

}
