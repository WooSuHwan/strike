package kr.ac.kopo.strike.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.strike.model.Reply;

@Repository
public class ReplyDaoImpl implements ReplyDao {

	@Inject
	private SqlSession sql;

	

	// 댓글 조회
	@Override
	public List<Reply> list(int freeCode) throws Exception {
		return sql.selectList("reply.replyList", freeCode);
	}

	// 댓글 작성
	@Override
	public void write(Reply reply) throws Exception {
		sql.insert( "reply.replyWrite", reply);
	}

	// 댓글 수정
	

	@Override
	public void delete(int replyCode) throws Exception{
		sql.delete("reply.replyDelete", replyCode);
		
	}

	@Override
	public Reply replyitem(int replyCode) {
		
		return sql.selectOne("reply.replyItem", replyCode);
	}

	@Override
	public void update(Reply replyitem) {
		sql.update("reply.replyUpdate", replyitem);
		
	}

	

	

	

	

	// 댓글 삭제
	
	
	

}
