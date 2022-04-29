package kr.ac.kopo.strike.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.strike.dao.ChallengerDao;
import kr.ac.kopo.strike.model.Challenger;
import kr.ac.kopo.strike.model.ChallengerMember;
import kr.co.kopo.strike.util.AES256Util;
import kr.co.kopo.strike.util.SHA256Util;

@Service
public class ChallengerServiceImpl implements ChallengerService {


	
	@Autowired
	ChallengerDao dao;
	/**
	@Override
	public List<ChallengerMember> list(int game_code) {
		return dao.list(game_code);
	}
	*/
	@Override
	public List<ChallengerMember> list(int game_code) {
		return dao.list(game_code);
	}
	
	@Override
	public void add(int game_code, int member_code) {
		dao.add(game_code, member_code);
	}
}
