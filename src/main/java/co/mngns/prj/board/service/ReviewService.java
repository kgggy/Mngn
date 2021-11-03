package co.mngns.prj.board.service;

import java.util.List;

import co.mngns.prj.board.paging.Criteria;
import co.mngns.prj.board.vo.ReviewVO;

public interface ReviewService {
	
	List<ReviewVO> reviewSelectList();
	ReviewVO reviewSelect(ReviewVO vo);
	int reviewInsert(ReviewVO vo);
	int reviewUpdate(ReviewVO vo);
	int reviewDelete(ReviewVO vo);
	
	List<ReviewVO> getListWithPaging(Criteria cri); //페이징처리
	List<ReviewVO> myReviewList(ReviewVO vo); //내가 작성한 리뷰 리스트
}
