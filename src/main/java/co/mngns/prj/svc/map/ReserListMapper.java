package co.mngns.prj.svc.map;

import java.util.List;

import org.springframework.stereotype.Service;

import co.mngns.prj.pet.vo.PetVO;
import co.mngns.prj.svc.vo.ReserListVO;
import co.mngns.prj.svc.vo.SvcVO;
import co.mngns.prj.user.vo.ClientVO;
import co.mngns.prj.user.vo.TrainerVO;

@Service
public interface ReserListMapper {
	public List<ReserListVO> trnReserSelectList(ReserListVO reser); //훈련사 의뢰 리스트

	public ReserListVO reserSelect(ReserListVO reser); //예약 단건조회

	public int reserInsert(ReserListVO reser); //예약 등록

	public int reserDelete(ReserListVO reser); //예약 삭제
	
	public List<SvcVO> serviceTerm(ReserListVO reser); //서비스 시간선택

	public List<PetVO> petSelectList(PetVO pet); //펫 리스트
	
	public ClientVO clientAdd(ClientVO client); //사용자 주소
	
	public List<TrainerVO> trnSelectList(ReserListVO reser); //훈련사 선택
	
	public List<ReserListVO> serviceUse(ReserListVO reser); //서비스 이용내역
	
	public int reserCount(ReserListVO reser); //사용자 개인의 예약 건수
	
	public List<ReserListVO> trnSalSelectList(ReserListVO reser); //훈련사 정산 리스트

	public List<ReserListVO> trnReserSelect(ReserListVO reser); //훈련사 의뢰 상세보기
	
	public int sttsUpdate(ReserListVO reser); //수락 후 상태변경
	
	public int sttsUpdate2(ReserListVO reser); //완료 처리 후 상태변경
	
	public int sttsUpdate3(ReserListVO reser); //접수 취소 후 상태변경
	
}
