package co.mngns.prj.board.service;

import java.util.List;

import co.mngns.prj.board.vo.ConversationVO;

public interface ConversationService {
	
	List<ConversationVO> conversationSelectList();
	ConversationVO conversationSelect(ConversationVO vo);
	int conversationInsert(ConversationVO vo);
	int conversationUdate(ConversationVO vo);
	int conversationDelete(ConversationVO vo);

}
