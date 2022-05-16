package kr.ac.kopo.strike.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.strike.dao.FreeDao;
import kr.ac.kopo.strike.model.Free;

@Service
public class FreeServiceImpl implements FreeService {

	@Autowired
	FreeDao dao;
	
	@Override
	public List<Free> list() {
		return dao.list();
	}

}
