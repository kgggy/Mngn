package co.mngns.prj.board.service;

import java.util.List;

import co.mngns.prj.board.vo.ChatVO;

public interface ChatService {
	
	List<ChatVO> chatSelectList();
	ChatVO chatSelect(ChatVO vo);
	int chatInsert(ChatVO vo);
	int chatUpdate(ChatVO vo);
	int chatDelete(ChatVO vo);

}
