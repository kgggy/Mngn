package co.mngns.prj.user.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.mngns.prj.user.map.ClientMapper;
import co.mngns.prj.user.service.ClientService;
import co.mngns.prj.user.vo.ClientVO;

@Service
public class ClientServiceImpl implements ClientService {
	@Autowired     
	ClientMapper cntmap;

	@Override
	public List<ClientVO> clientSelectList(ClientVO vo) {
		// 사용자 목록보기
		return cntmap.clientSelectList(vo);
	}

	@Override
	public ClientVO clientSelect(ClientVO cnt) {
		// 사용자 상세보기
		return cntmap.clientSelect(cnt);
	}

	@Override
	public int clientInsert(ClientVO cnt) {
		// TODO Auto-generated method stub
		return cntmap.clientInsert(cnt);
	}

	@Override
	public int clientUpdate(ClientVO cnt) {
		// TODO Auto-generated method stub
		return cntmap.clientUpdate(cnt);
	}

	@Override
	public int clientDelete(ClientVO cnt) {
		// TODO Auto-generated method stub
		return cntmap.clientDelete(cnt);
	}

	@Override
	public ClientVO clientLogin(ClientVO cnt) {
		// TODO Auto-generated method stub
		return cntmap.clientLogin(cnt);
	}

	@Override
	public boolean idCheck(String str) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<ClientVO> mclientSelectList(ClientVO vo) {
		// 관리자 페이지 사용자 목록 페이지
		return cntmap.mclientSelectList(vo);
	}

	@Override
	public int cntCount(ClientVO vo) {
		// 전체 사용자 명수
		return cntmap.cntCount(vo);
	}



	

}
