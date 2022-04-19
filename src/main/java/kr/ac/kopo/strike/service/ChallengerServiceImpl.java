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
	public List<Challenger> list() {
		return dao.list();
	}

}
