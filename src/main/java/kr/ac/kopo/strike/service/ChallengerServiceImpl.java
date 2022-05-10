package kr.ac.kopo.strike.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.strike.dao.ChallengerDao;
import kr.ac.kopo.strike.model.Challenger;

@Service
public class ChallengerServiceImpl implements ChallengerService {

	@Autowired
	ChallengerDao dao;

	@Override
	public List<Challenger> list(int game_code) {
		return dao.list(game_code);
	}
	
	@Override
	public void add(int game_code, int member_code) {
		dao.add(game_code, member_code);
	}

	@Override
	public void permission(int game_code, int member_code) {
		dao.permission(game_code, member_code);
	}

}
