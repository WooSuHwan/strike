package kr.ac.kopo.strike.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.strike.dao.FranchiseeLoginDao;
import kr.ac.kopo.strike.model.Franchisee;

@Service
public class FranchiseeLoginServiceImpl implements FranchiseeLoginService {

	@Autowired
	FranchiseeLoginDao dao;
	
	@Override
	public Franchisee check(String id, String pw) {
		return dao.check(id, pw);
	}

}
