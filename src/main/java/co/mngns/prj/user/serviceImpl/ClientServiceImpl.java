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
	public List<ClientVO> clientSelectList() {
		// 사용자 목록보기
		return cntmap.clientSelectList();
	}

	@Override
	public ClientVO clientSelect(ClientVO cnt) {
		// 사용자 상세보기
		return cntmap.clientSelect(cnt);
	}

	@Override
	public int clientInsert(ClientVO cnt) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int clientUpdate(ClientVO cnt) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int clientDelete(ClientVO cnt) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public ClientVO clientLogin(ClientVO cnt) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean idCheck(String str) {
		// TODO Auto-generated method stub
		return false;
	}

	

}
