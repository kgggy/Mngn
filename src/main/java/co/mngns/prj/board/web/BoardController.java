package co.mngns.prj.board.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BoardController {

	@RequestMapping(value = "/rList.do")
	// 이용후기 목록
	public String rList() {
		return "client/rList";
	}

	@RequestMapping(value = "/boardDetail.do")
	// 관리자 공지사항 상세보기
	public String boardDetail() {
		return "manager/board/boardDetail";
	}

	@RequestMapping(value = "/boardForm.do")
	// 관리자 공지사항 등록
	public String boardForm() {
		return "manager/board/boardForm";
	}

	@RequestMapping(value = "/boardList.do")
	// 관리자 공지사항 목록
	public String boardList() {
		return "manager/board/boardList";
	}

}
