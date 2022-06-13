package kr.ac.kopo.strike.service;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.strike.dao.ReplyDao;
import kr.ac.kopo.strike.model.Reply;

@Service("service")
public class ReplyServiceImpl implements ReplyService {

	@Inject
	ReplyDao dao;

	@Override
	public List<Reply> list(int free_code) throws Exception {
		
		return dao.list(free_code);
	}

	@Override
	public void write(Reply reply) throws Exception {
		
		dao.write(reply);
		
	}
	@Override
	public void delete(int reply_code)throws Exception {
		dao.delete(reply_code);
		
	}

	@Override
	public Reply replyitem(int reply_code) {
		
		return dao.replyitem(reply_code);
	}

	@Override
	public void update(Reply replyitem) {
		dao.update(replyitem);
		
	}

	

	
	

	



	
	
	

	

}
