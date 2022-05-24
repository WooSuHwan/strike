package kr.ac.kopo.strike.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.strike.dao.FranchiseePageDao;
import kr.ac.kopo.strike.model.Game;

@Service
public class FranchiseePageServiceImpl implements FranchiseePageService {

	@Autowired
	FranchiseePageDao dao;
	
	@Override
	public Game game(String address) {
		return dao.game(address);
	}

}