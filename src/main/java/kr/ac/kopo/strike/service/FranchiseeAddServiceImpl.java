package kr.ac.kopo.strike.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.strike.dao.FranchiseeAddDao;
import kr.ac.kopo.strike.model.FranchiseeAdd;
import kr.ac.kopo.strike.util.Pager;

@Service
public class FranchiseeAddServiceImpl implements FranchiseeAddService {

	@Autowired
	FranchiseeAddDao dao;
	
	@Override
	public List<FranchiseeAdd> list(Pager pager) {

		int total = dao.total(pager);

		pager.setTotal(total);
		
		return dao.list(pager);
	}

	@Override
	public void add(FranchiseeAdd franchiseeAdd) {
		dao.add(franchiseeAdd);
	}

	@Override
	public FranchiseeAdd item(int franchisee_suggest_code) {
		return dao.item(franchisee_suggest_code);
	}

}
