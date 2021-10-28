package co.mngns.prj.user.service;

import java.util.List;

import co.mngns.prj.user.vo.ClientVO;
import co.mngns.prj.user.vo.TrainerVO;

public interface TrainerService {
	List<TrainerVO> TrainerSelectList(); //사용자 전체목록 가져오기
	ClientVO TrainerSelect(TrainerVO vo); //사용자 한명 세부정보 가져오기
	int TrainerInsert(TrainerVO vo);		//사용자 삽입
	int TrainerUpdate(TrainerVO vo);		//사용자 수정
	int TrainerDelete(TrainerVO vo);		//사용자 삭제
}
