package co.mngns.prj.common.web;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import co.mngns.prj.board.service.ReviewService;
import co.mngns.prj.board.vo.ReviewVO;
import co.mngns.prj.common.vo.FilesVO;
import co.mngns.prj.user.service.ClientService;
import co.mngns.prj.user.service.TrainerService;
import co.mngns.prj.user.vo.TrainerVO;

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
	public ResponseEntity<List<FilesVO>> reviewInsert(MultipartFile[] uploadFile, ReviewVO reviewVo, HttpSession session, Model model) throws Exception {
		List<FilesVO> list = new ArrayList<>();
		String uploadFolder = "d:\\fileUp";
		
		reviewVo.setClient_id((Integer)session.getAttribute("id"));
		for (MultipartFile multipartFile : uploadFile) {
			FilesVO filesVO = new FilesVO();
			String fileName = multipartFile.getOriginalFilename();
			File saveFile = new File(uploadFolder, fileName);
			try {
				multipartFile.transferTo(saveFile);
				filesVO.setOrg(fileName);
				reviewService.rvFilenoSelect();
				reviewService.rvFileInsert(filesVO);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} // end for
		reviewService.reviewInsert(reviewVo);
		return new ResponseEntity<List<FilesVO>>(list, HttpStatus.OK);
	}
	
}
