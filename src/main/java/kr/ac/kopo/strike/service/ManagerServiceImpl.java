package kr.ac.kopo.strike.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.strike.dao.ManagerDao;
import kr.ac.kopo.strike.model.Franchisee;

@Service
public class ManagerServiceImpl implements ManagerService {

	@Autowired
	ManagerDao dao;
	
	@Override
	public List<Franchisee> list() {
		return dao.list();
	}

}
