package co.mngns.prj.board.map;

import java.util.List;

import co.mngns.prj.board.vo.BoardVO;

public interface BoardMapper {
	List<BoardVO> boardList(BoardVO vo); 			// 공지사항 전체 목록 가져오기
	BoardVO boardSelect(BoardVO vo); 	// 공지사항 단건 세부정보 가져오기
	int boardInsert(BoardVO vo); 		// 공지사항 삽입
	int boardUpdate(BoardVO vo); 		// 공지사항 수정
	int boardDelete(BoardVO vo);		// 공지사항 삭제
	int bCount(BoardVO vo); 			//공지사항 전체 건수
	
	//관리제 메인페이지 도넛 차트
	int resvNoInsert(BoardVO vo);
	int clientNoInsert(BoardVO vo);
	int trainerNoInsert(BoardVO vo);
	int cancleNoInsert(BoardVO vo);

}
