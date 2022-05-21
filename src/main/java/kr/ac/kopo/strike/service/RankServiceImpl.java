package kr.ac.kopo.strike.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.strike.dao.RankDao;
import kr.ac.kopo.strike.model.Member;
import kr.ac.kopo.strike.util.Pager;

@Service
public class RankServiceImpl implements RankService {

	@Autowired
	RankDao dao;
	
	@Override
	public List<Member> list(Pager pager) {
		
		int total = dao.total(pager);
		
		pager.setTotal(total);
		
		return dao.list(pager);
	}

	@Override
	public List<Member> rankList() {
		return dao.rankList();
	}

}
