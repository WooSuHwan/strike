package kr.ac.kopo.strike.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.strike.dao.IndividualDao;
import kr.ac.kopo.strike.model.Individual;

@Service
public class IndividualServiceImpl implements IndividualService {

	@Autowired
	IndividualDao dao;
	
	@Override
	public List<Individual> list() {
		return dao.list();
	}

	@Override
	public void add(Individual individual) {
		dao.add(individual);
	}

	@Override
	public void delete(int individual_code) {
		dao.delete(individual_code);
	}

}
