package co.mngns.prj.board.service;

import java.util.List;

import co.mngns.prj.board.vo.BoardVO;

public interface BoardService {
	
	List<BoardVO> boardList(BoardVO vo);
	BoardVO boardSelect(BoardVO vo);
	int boardInsert(BoardVO vo);
	int boardUpdate(BoardVO vo);
	int boardDelete(BoardVO vo);
	
	//페이징 처리(전체 공지사항 건수)
	int bCount(BoardVO vo); 

}
