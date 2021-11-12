package co.mngns.prj.board.web;

import java.io.UnsupportedEncodingException;
import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.FileSystemResource;
import org.springframework.core.io.Resource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import co.mngns.prj.board.service.BoardService;
import co.mngns.prj.board.service.ReviewService;
import co.mngns.prj.board.vo.BoardVO;
import co.mngns.prj.board.vo.ReviewVO;
import co.mngns.prj.common.vo.Paging;
import co.mngns.prj.svc.service.ReserListService;
import co.mngns.prj.svc.vo.ReserListVO;

@Controller
public class BoardController {

	@Autowired
	ReviewService rService;

	@Autowired
	BoardService bService;

	@Autowired
	ReserListService reserService;

	@RequestMapping(value = "/rList.do")
	// 이용후기 목록
	public String rList(ReviewVO review, Paging paging, Model model) {
		// 페이징 처리
		paging.setPageUnit(6);
		review.setStart(paging.getFirst());
		review.setEnd(paging.getLast());
		paging.setTotalRecord(rService.reviewCount(review));
		model.addAttribute("rLists", rService.reviewSelectList(review));
		return "client/rList";
	}

	@RequestMapping(value = "/cntReview.do")
	// 사용자 서비스 이용 내역 및 후기
	public String myReview(Model model, HttpSession session,
			@RequestParam(required = false, defaultValue = "1") int page1,
			@RequestParam(required = false, defaultValue = "1") int page2, ReviewVO vo, ReserListVO reser) {
		// 서비스 목록 페이징 처리
		Paging svcpaging = new Paging();
		Paging rvpaging = new Paging();
		svcpaging.setPage(page1);
		svcpaging.setPageUnit(5);
		reser.setClient_id1((Integer) session.getAttribute("id"));
		reser.setStart(svcpaging.getFirst());
		reser.setEnd(svcpaging.getLast());
		svcpaging.setTotalRecord(reserService.reserCount(reser));
		model.addAttribute("serviceUses", reserService.serviceUse(reser));
		model.addAttribute("svcPaging", svcpaging);		
		 //이용후기 페이징
	      rvpaging.setPage(page2);
	      rvpaging.setPageUnit(5);
	      vo.setClient_id((Integer) session.getAttribute("id"));
	      vo.setStart(rvpaging.getFirst());
	      vo.setEnd(rvpaging.getLast());
	      rvpaging.setTotalRecord(rService.myReviewCount(vo));      
	      model.addAttribute("myReviews", rService.myReviewList(vo));
	      model.addAttribute("rvPaging", rvpaging);      
	      
	      return "client/cntReview";
	   }


	@RequestMapping(value = "/reviewDelete.do")
	// 리뷰 삭제
	public String reviewDelete(Model model, ReviewVO vo, RedirectAttributes re) {
		re.addAttribute("tab2", rService.reviewDelete(vo));
		return "redirect:cntReview.do";
	}

	@GetMapping(value = "/download.do", produces = MediaType.APPLICATION_OCTET_STREAM_VALUE)
	@ResponseBody
	//파일 다운로드
	public ResponseEntity<Resource> downloadFile(@RequestHeader("User-Agent") String userAgent, String fileName) {

		Resource resource = new FileSystemResource("d:\\fileUp\\" + fileName);

		 String resourceName = resource.getFilename();

	      HttpHeaders headers = new HttpHeaders();
	      try {
	         headers.add("Content-Disposition",
	               "attachment; filename=" + new String(resourceName.getBytes("UTF-8"), "ISO-8859-1"));
	      } catch (UnsupportedEncodingException e) {
	         e.printStackTrace();
	      }
	      return new ResponseEntity<Resource>(resource, headers, HttpStatus.OK);
	}
	
	@RequestMapping(value = "/reviewUpdate.do")
	// 리뷰 수정
	public String reviewUpdate(Model model, ReviewVO vo) {
		vo.setReview_no((Integer)model.getAttribute("review_no"));
		model.addAttribute("rUpdate", rService.reviewUpdate(vo));
		return "redirect:cntReview.do";
	}

	   /*
	    * @RequestMapping(value = "/boardList.do") // 관리자 공지사항 목록보기 public String
	    * boardList(Model model) { model.addAttribute("boards", bService.boardList());
	    * return "manager/board/boardList"; }
	    */

	   @GetMapping(value = "/boardForm.do")
	   // 관리자 공지사항 등록 페이지 호출
	   public String boardInsertForm(Model model) {
	      Date sysdate = new Date();
	      model.addAttribute("sysdate", sysdate);
	      return "manager/board/boardForm";
	   }

	   @PostMapping(value = "/boardInsert.do")
	   // 관리자 공지사항 등록
	   public String boardForm(Model model, BoardVO vo) {
	      bService.boardInsert(vo);
	      return "redirect:boardList.do";
	   }
	   
	   @RequestMapping(value = "/boardDelete.do") 
	   // 공지사항 삭제 
	   public String boardDelete(Model model, BoardVO vo) {
	      model.addAttribute("board", bService.boardDelete(vo));
	      return "redirect:boardList.do"; 
	   }
	   
	   @RequestMapping(value = "/boardUpdate.do")
	   @ResponseBody
	   //공지사항 수정
	   public int boardUpdate(Model model, @RequestBody BoardVO vo) {
	      System.out.println("====================>");
	      System.out.println(vo.toString());
	      System.out.println("====================>");
	      
	      int result = bService.boardUpdate(vo);
	      
	      return result;
	   }

	   @RequestMapping(value = "/boardList.do")
	   //공지사항 목록 페이징
	   public String boardList(BoardVO vo, Paging paging, Model model) {
	      //페이징 처리
	      paging.setPageUnit(5);
	      vo.setStart(paging.getFirst());
	      vo.setEnd(paging.getLast());
	      paging.setTotalRecord(bService.bCount(vo));
	      model.addAttribute("boards", bService.boardList(vo));
	      return "manager/board/boardList";
	   }

}
