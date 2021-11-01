package co.mngns.prj.user.map;

import java.util.List;

import co.mngns.prj.user.vo.ClientVO;

public interface ClientMapper {
	List<ClientVO> clientSelectList(); // 사용자 전체목록 가져오기

	ClientVO clientSelect(ClientVO vo); // 사용자 한명 세부정보 가져오기

	int clientInsert(ClientVO vo); // 사용자 삽입

	int clientUpdate(ClientVO vo); // 사용자 수정

	int clientDelete(ClientVO vo); // 사용자 삭제

	ClientVO clientLogin(ClientVO vo); // 로그인 처리

	boolean idCheck(String str); // 아이디 중복 체크
}