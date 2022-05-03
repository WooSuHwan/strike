package kr.ac.kopo.strike.service;

import java.util.List;

import kr.ac.kopo.strike.model.Reply;

public interface ReplyService {
	
	// 댓글 조회
	public List<Reply> list(int freeCode) throws Exception;

	// 댓글 조회
	public void write(Reply reply) throws Exception;

	// 댓글 수정
	public void modify(Reply reply) throws Exception;

	// 댓글 삭제
	public void delete(Reply reply) throws Exception;

	

	
	
}
