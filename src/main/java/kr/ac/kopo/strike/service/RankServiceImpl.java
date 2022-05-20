package kr.ac.kopo.strike.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.strike.dao.RankDao;
import kr.ac.kopo.strike.model.Member;

@Service
public class RankServiceImpl implements RankService {

	@Autowired
	RankDao dao;
	
	@Override
	public List<Member> list() {
		return dao.list();
	}

	@Override
	public List<Member> rankList() {
		return dao.rankList();
	}

}
