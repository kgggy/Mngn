package co.mngns.prj.board.map;

import java.util.List;

import co.mngns.prj.board.vo.ReviewVO;
import co.mngns.prj.common.vo.FilesVO;

public interface ReviewMapper {
	List<ReviewVO> reviewSelectList(ReviewVO vo); //글 전체조회
	ReviewVO reviewSelect(ReviewVO vo);
	int reviewInsert(ReviewVO vo);
	int reviewUpdate(ReviewVO vo);
	int reviewDelete(ReviewVO vo);
	
	List<ReviewVO> myReviewList(ReviewVO vo); //내가 작성한 리뷰 리스트
	List<ReviewVO> trnReviewList(ReviewVO vo); //해당 훈련사의 리뷰 리스트
	int reviewCount(ReviewVO vo); //전체 리뷰 건수 
	int myReviewCount(ReviewVO vo); //내가 쓴 리뷰 건수
	int rvFileInsert(FilesVO filesVO); //리뷰 파일 업로드
	int rvFilenoSelect(); //파일넘버 찾기
}
