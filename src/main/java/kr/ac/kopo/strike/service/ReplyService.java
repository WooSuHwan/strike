package kr.ac.kopo.strike.service;

import java.util.List;

import org.springframework.web.bind.annotation.PathVariable;

import kr.ac.kopo.strike.model.Reply;

public interface ReplyService {
	
	// 댓글 조회
	public List<Reply> list(int freeCode) throws Exception;

	// 댓글 생성
	public void write(Reply reply) throws Exception;

	// 댓글 삭제
	public void delete(int replyCode)throws Exception;
	
	// 댓글 수정
	

	public Reply replyitem(int replyCode);

	public void update(Reply replyitem);

	

	

	

	
	

	

	

	
	
}
