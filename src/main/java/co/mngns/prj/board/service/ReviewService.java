package co.mngns.prj.board.service;

import java.util.List;

import co.mngns.prj.board.vo.ReviewVO;

public interface ReviewService {
	
	List<ReviewVO> reviewSelectList();
	ReviewVO reviewSelect(ReviewVO vo);
	int reviewInsert(ReviewVO vo);
	int reviewUpdate(ReviewVO vo);
	int reviewDelete(ReviewVO vo);

}
