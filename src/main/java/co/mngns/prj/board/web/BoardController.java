package co.mngns.prj.board.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import co.mngns.prj.board.service.BoardService;
import co.mngns.prj.board.service.ReviewService;

@Controller
public class BoardController {
	
	@Autowired
	ReviewService rService;
	
	@Autowired
	BoardService bService;
	
	@RequestMapping(value = "/rList.do")
	// 이용후기 목록
	public String rList(Model model) {
		model.addAttribute("rLists", rService.reviewSelectList());
		return "client/rList";
	}
	
	@RequestMapping(value = "/cntReview.do")
	// 사용자 서비스 이용 내역 및 후기
	public String myReview(Model model) {
		model.addAttribute("myReviews", rService.myReviewList());
		return "client/cntReview";
	}


	
	@RequestMapping(value = "/boardList.do")
	// 관리자 공지사항 목록
	public String boardList(Model model) {
		model.addAttribute("boards", bService.boardList());
		return "manager/board/boardList";
	}
	
	@RequestMapping(value = "/boardForm.do")
	// 관리자 공지사항 등록
	public String boardForm() {
		return "manager/board/boardForm";
	}

}
