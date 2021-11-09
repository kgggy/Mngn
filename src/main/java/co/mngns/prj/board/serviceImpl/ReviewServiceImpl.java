package co.mngns.prj.board.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.mngns.prj.board.map.ReviewMapper;
import co.mngns.prj.board.service.ReviewService;
import co.mngns.prj.board.vo.ReviewVO;
import co.mngns.prj.common.vo.FilesVO;

@Repository("ReviewVO")//후기
public class ReviewServiceImpl implements ReviewService {

	@Autowired
	private ReviewMapper map;

	@Override
	public List<ReviewVO> reviewSelectList(ReviewVO vo) {
		return map.reviewSelectList(vo);
	}

	@Override
	public ReviewVO reviewSelect(ReviewVO vo) {
		return map.reviewSelect(vo);
	}

	@Override
	public int reviewInsert(ReviewVO vo) {
		return map.reviewInsert(vo);
	}

	@Override
	public int reviewUpdate(ReviewVO vo) {
		return map.reviewUpdate(vo);
	}

	@Override
	public int reviewDelete(ReviewVO vo) {
		return map.reviewDelete(vo);
	}

	@Override
	public List<ReviewVO> myReviewList(ReviewVO vo) {
		// 내가 작성한 후기
		return map.myReviewList(vo);
	}

	@Override
	public List<ReviewVO> trnReviewList(ReviewVO vo) {
		// 해당훈련사의 리뷰목록
		return map.trnReviewList(vo);
	}

	@Override
	public int reviewCount(ReviewVO vo) {
		// 전체 후기 건수
		return map.reviewCount(vo);
	}

	@Override
	public int myReviewCount(ReviewVO vo) {
		// 내가 쓴 리뷰 건수
		return map.myReviewCount(vo);
	}

	@Override
	public int rvFileInsert(FilesVO filesVO) {
		// 리뷰 파일 업로드
		return map.rvFileInsert(filesVO);
	}

	@Override
	public int rvFilenoSelect() {
		// 파일번호 검색
		return map.rvFilenoSelect();
	}

}
