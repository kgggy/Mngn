package co.mngns.prj.board.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.mngns.prj.board.map.ChatMapper;
import co.mngns.prj.board.service.ChatService;
import co.mngns.prj.board.vo.ChatVO;

@Repository("ChatVO") //대화창
public class ChatServiceImpl implements ChatService {
	
	@Autowired
	private ChatMapper map;

	@Override
	public List<ChatVO> chatSelectList() {
		return map.chatSelectList();
	}

	@Override
	public ChatVO chatSelect(ChatVO vo) {
		return map.chatSelect(vo);
	}

	@Override
	public int chatInsert(ChatVO vo) {
		return map.chatInsert(vo);
	}

	@Override
	public int chatUpdate(ChatVO vo) {
		return map.chatUpdate(vo);
	}

	@Override
	public int chatDelete(ChatVO vo) {
		return map.chatDelete(vo);
	}

}
