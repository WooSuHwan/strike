package kr.ac.kopo.strike.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.ac.kopo.strike.dao.ReplyDao;
import kr.ac.kopo.strike.model.Reply;

@Service("service")
public class ReplyServiceImpl implements ReplyService {

	@Inject
	ReplyDao dao;

	@Override
	public List<Reply> list(int freeCode) throws Exception {
		
		return dao.list(freeCode);
	}

	@Override
	public void write(Reply reply) throws Exception {
		
		dao.write(reply);
		
	}

	@Override
	public void modify(Reply reply) throws Exception {
		
		dao.modify(reply);
		
	}

	@Override
	public void delete(Reply reply) throws Exception {
		
		dao.delete(reply);
		
	}
}
