package kr.ac.kopo.strike.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.strike.dao.FranchisessDao;
import kr.ac.kopo.strike.model.Franchisee;

@Service
public class FranchiseeServiceImpl implements FranchiseeService {

	@Autowired
	FranchisessDao dao;
	
	@Override
	public boolean confirm(String franchisee_id) {
		return dao.confirm(franchisee_id);
	}

	@Override
	public void add(Franchisee franchisee) {
		dao.add(franchisee);
	}

}
