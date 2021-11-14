package co.mngns.prj.common.web;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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
import co.mngns.prj.pet.vo.PetVO;
import co.mngns.prj.svc.service.ReserListService;
import co.mngns.prj.svc.vo.ReserListVO;
import co.mngns.prj.user.service.ClientService;
import co.mngns.prj.user.service.TrainerService;
import co.mngns.prj.user.vo.ClientVO;
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
	public List<TrainerVO> getSearchList(TrainerVO vo, Model model) throws Exception {
		return trnService.getSearchList(vo);
	}

	@RequestMapping(value = "/nWork.do")
	public TrainerVO nWork(TrainerVO vo) {
		return trnService.nWork(vo);
	}

	@RequestMapping(value = "/reviewInsert.do")
	@ResponseBody
	// 리뷰 입력
	public int reviewInsert(MultipartFile[] uploadFile, ReviewVO reviewVo, HttpSession session, Model model)
			throws Exception {
		List<FilesVO> list = new ArrayList<>();
		String uploadFolder = "d:\\fileUp";

		reviewVo.setClient_id((Integer) session.getAttribute("id"));
		int file_no = reviewService.rvFilenoSelect();
		for (MultipartFile multipartFile : uploadFile) {
			FilesVO filesVO = new FilesVO();
			if (multipartFile != null && multipartFile.getSize() > 0) {
				String uploadFileName = multipartFile.getOriginalFilename();
				System.out.println(uploadFileName + "==============");

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

	@RequestMapping(value = "/trnSal.do")
	public String trnReserSelectList(ReserListVO vo, Model model, HttpSession session) {
		vo.setClient_id2(String.valueOf(session.getAttribute("id")));
		model.addAttribute("requestTrn", reserService.trnReserSelectList(vo));
		model.addAttribute("rqDetails", reserService.trnSalSelectList(vo));
		return "trnSal";
	}

	// 의뢰 상세보기
	@RequestMapping("ajaxRqDetail.do")
	@ResponseBody
	public Map<String, Object> trnsss(Model model, PetVO vo, ReserListVO reser, HttpServletRequest request,
			HttpServletResponse response) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("rqdetail", reserService.trnReserSelect(reser));
		map.put("pets", reserService.petSelectList(vo));
		return map;
	}

	// 의뢰 수락처리
	@RequestMapping("ajaxStts.do")
	@ResponseBody
	public int sttsUpdate(ReserListVO reser, HttpServletRequest request, HttpServletResponse response) {
		return reserService.sttsUpdate(reser);
	}

	// 의뢰 완료처리
	@RequestMapping("ajaxStts2.do")
	@ResponseBody
	public int sttsUpdate2(ReserListVO reser, HttpServletRequest request, HttpServletResponse response) {
		return reserService.sttsUpdate2(reser);
	}

	@RequestMapping("chat.do")
	@ResponseBody
	public int chat(Model model, ClientVO client) {
		return 0;
	}
}
