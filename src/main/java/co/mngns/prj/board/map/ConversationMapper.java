package co.mngns.prj.board.map;

import java.util.List;

import co.mngns.prj.board.vo.ConversationVO;

public interface ConversationMapper {
	List<ConversationVO> conversationSelectList();
	ConversationVO conversationSelect(ConversationVO vo);
	int conversationInsert(ConversationVO vo);
	int conversationUdate(ConversationVO vo);
	int conversationDelete(ConversationVO vo);

}
