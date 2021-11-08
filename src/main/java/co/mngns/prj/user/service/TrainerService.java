package co.mngns.prj.user.service;

import java.util.List;

import co.mngns.prj.user.vo.TrainerVO;

public interface TrainerService {
	List<TrainerVO> mTrainerSelectList(); //관리자 페이지 전체목록 가져오기
	List<TrainerVO> TrainerSelectList(TrainerVO vo); //훈련사 전체목록 가져오기
	TrainerVO TrainerSelect(TrainerVO trn); //훈련사 한명 세부정보 가져오기
	int TrainerInsert(TrainerVO trn);		//훈련사 삽입
	int TrainerUpdate(TrainerVO trn);		//훈련사 수정
	int TrainerDelete(TrainerVO trn);		//훈련사 삭제
	
	List<TrainerVO> getSearchList(TrainerVO trn); // 훈련사 검색
	TrainerVO nWork(TrainerVO trn); //훈련사 휴무일
	int trnCount(TrainerVO vo); //전체 훈련사 건수
}
