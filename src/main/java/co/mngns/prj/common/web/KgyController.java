package co.mngns.prj.common.web;

import java.io.File;
import java.util.ArrayList;
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
import co.mngns.prj.common.vo.FilesVO;
import co.mngns.prj.svc.service.ReserListService;
import co.mngns.prj.svc.vo.ReserListVO;
import co.mngns.prj.user.service.ClientService;
import co.mngns.prj.user.service.TrainerService;
import co.mngns.prj.user.vo.TrainerVO;

@Controller
public class KgyController {

	@Autowired
	TrainerService trnService;
	@Autowired
	ClientService cntService;
	@Autowired
	ReviewService reviewService;
	@Autowired
	ReserListService reserService;

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
	public int reviewInsert(MultipartFile[] uploadFile, ReviewVO reviewVo, HttpSession session, Model model) throws Exception {
		List<FilesVO> list = new ArrayList<>();
		String uploadFolder = "d:\\fileUp";
		
		reviewVo.setClient_id((Integer)session.getAttribute("id"));
		int file_no = reviewService.rvFilenoSelect();
		for (MultipartFile multipartFile : uploadFile) {
			FilesVO filesVO = new FilesVO();
			if(multipartFile != null && multipartFile.getSize()>0  ) {
				String uploadFileName = multipartFile.getOriginalFilename();
				System.out.println(uploadFileName+"==============");
				
				
				String fileName = uploadFileName.substring(uploadFileName.lastIndexOf("\\") + 1);
				File saveFile = new File(uploadFolder, fileName);
				try {
					multipartFile.transferTo(saveFile);
					filesVO.setOrg(fileName);
					filesVO.setFile_no(file_no);
					reviewService.rvFileInsert(filesVO);
				} catch (Exception e) {
					e.printStackTrace();
				}
			} else {
				System.out.println(multipartFile);
			}
		} // end for
		reviewVo.setFile_no(file_no);
		int a = reviewService.reviewInsert(reviewVo);
		return a;
	}
	
	@RequestMapping(value="/trnSal.do")
	public String trnReserSelectList(ReserListVO vo, Model model, HttpSession session) {
		vo.setClient_id2((Integer)session.getAttribute("id"));
		model.addAttribute("requestTrn", reserService.trnReserSelectList(vo));
		return "trnSal";
	}	
	
	
}
