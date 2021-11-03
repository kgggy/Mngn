package co.mngns.prj.user.map;

import java.util.List;

import co.mngns.prj.user.vo.ClientVO;
import co.mngns.prj.user.vo.TrainerVO;

public interface TrainerMapper {
	List<TrainerVO> trainerSelectList(); // 훈련사 전체목록 가져오기

	ClientVO trainerSelect(TrainerVO trn); // 훈련사 한명 세부정보 가져오기

	int trainerInsert(TrainerVO trn); // 훈련사 삽입

	int trainerUpdate(TrainerVO trn); // 훈련사 수정

	int trainerDelete(TrainerVO trn); // 훈련사 삭제
	
	List<TrainerVO> mtrainerSelectList(); // 관리자 페이지 훈련사 전체목록 가져오기
}
