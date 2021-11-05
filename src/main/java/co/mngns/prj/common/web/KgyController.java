package co.mngns.prj.common.web;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import co.mngns.prj.board.service.ReviewService;
import co.mngns.prj.board.vo.ReviewVO;
import co.mngns.prj.user.service.ClientService;
import co.mngns.prj.user.service.TrainerService;
import co.mngns.prj.user.vo.TrainerVO;
import lombok.extern.log4j.Log4j;

@Controller
public class KgyController {

	@Autowired
	TrainerService trnService;
	@Autowired
	ClientService cntService;
	@Autowired ReviewService reviewService;

	@GetMapping("/getSearchList.do")
	@ResponseBody
	public List<TrainerVO> getSearchList(TrainerVO vo , Model model) throws Exception{
		return trnService.getSearchList(vo);
	}
	
	@RequestMapping(value="/nWork.do")
	public TrainerVO nWork(TrainerVO vo) {
		return trnService.nWork(vo);
	}	
	
	@RequestMapping(value = "/reviewInsert.do")
	@ResponseBody
	// 리뷰 입력
	public int reviewInsert(ReviewVO reviewVo, HttpSession session, Model model) throws Exception {
		reviewVo.setClient_id((Integer)session.getAttribute("id"));
		return reviewService.reviewInsert(reviewVo);
	}
	
	//파일업로드
	@RequestMapping(value="/uploadFormPost") 
	public void uploadFormPost(MultipartFile[] uploadFile, Model model) {
		String uploadFolder = "d:\\fileUp";
		for (MultipartFile multipartFile : uploadFile) {
			File saveFile = new File(uploadFolder, multipartFile.getOriginalFilename());
			try {
				multipartFile.transferTo(saveFile);
			} catch (Exception e) {
				e.getMessage();
			}
		}
	}
	
	
}
