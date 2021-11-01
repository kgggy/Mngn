package co.mngns.prj.board.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.mngns.prj.board.map.ReviewMapper;
import co.mngns.prj.board.paging.Criteria;
import co.mngns.prj.board.service.ReviewService;
import co.mngns.prj.board.vo.ReviewVO;

@Repository("ReviewVO")//후기
public class ReviewServiceImpl implements ReviewService {

	@Autowired
	private ReviewMapper map;

	@Override
	public List<ReviewVO> reviewSelectList() {
		return map.reviewSelectList();
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
	public List<ReviewVO> getListWithPaging(Criteria cri) {
		// 페이징 처리
		return null;
	}
}
