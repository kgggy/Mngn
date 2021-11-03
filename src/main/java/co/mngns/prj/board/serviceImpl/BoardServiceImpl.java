package co.mngns.prj.board.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.mngns.prj.board.map.BoardMapper;
import co.mngns.prj.board.service.BoardService;
import co.mngns.prj.board.vo.BoardVO;

@Repository("BoardVO") //공지사항
public class BoardServiceImpl implements BoardService {
	
	@Autowired
	private BoardMapper map;
	
	@Override //공지사항 단건 조회
	public BoardVO boardSelect(BoardVO vo) {
		return map.boardSelect(vo);
	}

	@Override //공지사항 등록
	public int boardInsert(BoardVO vo) {
		return map.boardInsert(vo);
	}

	@Override //공지사항 수정
	public int boardUpdate(BoardVO vo) {
		return map.boardUpdate(vo);
	}

	@Override //공지사항 삭제
	public int boardDelete(BoardVO vo) {
		return map.boardDelete(vo);
	}

	@Override //공지사항 목록조회
	public List<BoardVO> boardList() {
		return map.boardList();
	}
	

}
