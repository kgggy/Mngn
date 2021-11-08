package co.mngns.prj.pet.map;

import java.util.List;

import co.mngns.prj.pet.vo.PetVO;

public interface PetMapper {
	
	List<PetVO> petSelectList(PetVO vo); //애완동물 전체목록 가져오기
	PetVO petSelect(PetVO vo); //애완동물 (고양이 or 강아지) 세부정보 가져오기p
	
	int petInsert (PetVO vo); //애원동물 (고양이 or 강아지) 삽입
	
	int petUpdate(PetVO vo); //애원동물 (고양이 or 강아지)  수정	
	
	int petDelete(PetVO vo); //애완동물 (고양이 or 강아지) 삭제

	
}
