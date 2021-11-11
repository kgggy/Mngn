package co.mngns.prj.user.map;

import java.util.List;

import co.mngns.prj.user.vo.TrainerVO;

public interface TrainerMapper {
	List<TrainerVO> trainerSelectList(TrainerVO vo); // 훈련사 전체목록 가져오기

	TrainerVO trainerSelect(TrainerVO trn); // 훈련사 한명 세부정보 가져오기

	int trainerInsert(TrainerVO trn); // 훈련사 삽입

	int trainerUpdate(TrainerVO trn); // 훈련사 수정

	int trainerDelete(TrainerVO trn); // 훈련사 삭제
	
	List<TrainerVO> mtrainerSelectList(TrainerVO vo); // 관리자 페이지 훈련사 전체목록 가져오기
	
	List<TrainerVO> getSearchList(TrainerVO trn); // 훈련사 검색
	
	TrainerVO nWork(TrainerVO trn); //훈련사 휴무일
	
	int trnCount(TrainerVO vo); //전체 훈련사 건수
	
	int mtrnCount(TrainerVO vo); //관리자 페이지 전체 훈련사 건수
}
