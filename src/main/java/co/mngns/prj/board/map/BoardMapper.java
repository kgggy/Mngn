package co.mngns.prj.board.map;

import java.util.List;

import co.mngns.prj.board.vo.BoardVO;

public interface BoardMapper {
	List<BoardVO> BoardList();
	BoardVO boardSelect(BoardVO vo);
	int boardInsert(BoardVO vo);
	int boardUpdate(BoardVO vo);
	int boardDelete(BoardVO vo);

}
