package co.mngns.prj.board.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.mngns.prj.board.map.ConversationMapper;
import co.mngns.prj.board.service.ConversationService;
import co.mngns.prj.board.vo.ConversationVO;

@Repository("ConversationVO")//사용자와 훈련사의 실시간 대화 내용
public class ConversationServiceImpl implements ConversationService {
	
	@Autowired
	private ConversationMapper map;

	@Override
	public List<ConversationVO> conversationSelectList() {
		return map.conversationSelectList();
	}

	@Override
	public ConversationVO conversationSelect(ConversationVO vo) {
		return map.conversationSelect(vo);
	}

	@Override
	public int conversationInsert(ConversationVO vo) {
		return map.conversationInsert(vo);
	}

	@Override
	public int conversationUdate(ConversationVO vo) {
		return map.conversationUdate(vo);
	}

	@Override
	public int conversationDelete(ConversationVO vo) {
		return map.conversationDelete(vo);
	}

}
